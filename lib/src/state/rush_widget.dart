/*
 * Copyright (c) 2024 Pawan Kumar. All rights reserved.
 *
 *  * Licensed under the Apache License, Version 2.0 (the "License");
 *  * you may not use this file except in compliance with the License.
 *  * You may obtain a copy of the License at
 *  * http://www.apache.org/licenses/LICENSE-2.0
 *  * Unless required by applicable law or agreed to in writing, software
 *  * distributed under the License is distributed on an "AS IS" BASIS,
 *  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  * See the License for the specific language governing permissions and
 *  * limitations under the License.
 */

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rush/rush.dart';

/// A widget that builds its descendants based on the state of a [RushTank].
///
/// Example:
/// ```dart
/// RushSync<MyTank>(
///   builder: (context, tank) {
///     //= Build UI based on tank and status
///   },
/// loadingBuilder: (context) {
///   return Center(child: CircularProgressIndicator());
/// },
/// errorBuilder: (context, error) {
///   return Center(child: Text('An error occurred: $error'));
/// },
/// useDefaultWidgets: true,
/// )
/// ```
class RushSync<T extends RushTank> extends StatefulWidget {
  /// Creates a new [RushSync] instance.
  const RushSync({
    required this.builder,
    required this.actions,
    this.loadingBuilder,
    this.errorBuilder,
    this.actionNotifier,
    this.useDefaultWidgets = false,
    super.key,
  });

  /// The builder for this widget.
  final Widget Function(BuildContext context, T tank, RushStatus status)
      builder;

  /// A builder function that returns a widget to display
  /// when the state is loading.
  ///
  /// Example:
  /// ```dart
  /// loadingBuilder: (context) {
  ///   return Center(child: CircularProgressIndicator());
  /// },
  /// ```
  final Widget Function(BuildContext context)? loadingBuilder;

  /// A builder function that returns a widget to display when an error occurs.
  ///
  /// Example:
  /// ```dart
  /// errorBuilder: (context, error) {
  ///   return Center(child: Text('An error occurred: $error'));
  /// },
  /// ```
  final Widget Function(BuildContext context, String error)? errorBuilder;

  /// A map of [RushFlow] actions to be notified.
  final Map<Type, ContextCallbackWithStatus>? actionNotifier;

  /// The actions to listen to.
  final Set<Type>? actions;

  /// Whether to use the default loading and error widgets.
  /// Defaults to false.
  /// If set to true, the default loading and error widgets will be used.
  final bool useDefaultWidgets;

  @override
  // ignore: library_private_types_in_public_api
  _RushSyncState createState() => _RushSyncState<T>();
}

class _RushSyncState<T extends RushTank> extends State<RushSync<T>> {
  StreamSubscription<RushFlow>? eventSub;

  @override
  void initState() {
    super.initState();
    if (widget.actionNotifier != null) {
      final actions = widget.actionNotifier!.keys.toSet();
      final stream = RushEngine.events.where(
        (e) => actions.contains(e.runtimeType),
      );
      eventSub = stream.listen((e) {
        final status = e.status;
        widget.actionNotifier![e.runtimeType]?.call(context, e, status);
      });
    }
  }

  @override
  void dispose() {
    eventSub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final stream = RushEngine.events.where(
      (e) => widget.actions!.contains(e.runtimeType),
    );
    return StreamBuilder<RushFlow>(
      stream: stream,
      builder: (context, action) {
        final status = action.data?.status ?? RushStatus.idle;
        if (status == RushStatus.loading && widget.useDefaultWidgets) {
          if (widget.loadingBuilder != null) {
            return widget.loadingBuilder!(context);
          }
          return const Center(child: CircularProgressIndicator.adaptive());
        } else if (status == RushStatus.error && widget.useDefaultWidgets) {
          final error = action.data!.error ?? 'An error occurred';
          if (widget.errorBuilder != null) {
            return widget.errorBuilder!(
              context,
              error,
            );
          }
          return Center(child: Text(error));
        }
        final tank = RushEngine.getTank() as T;
        return widget.builder(context, tank, status);
      },
    );
  }
}

/// A function that is called when a [RushFlow] action occurs.
typedef ContextCallbackWithStatus = void Function(
  BuildContext context,
  RushFlow action,
  RushStatus status,
);

/// A function that is called when a [RushFlow] action occurs.
typedef ContextCallback = void Function(
  BuildContext context,
  RushFlow action,
);

/// A widget that notifies listeners when specific [RushFlow] actions occur.
///
/// Example:
/// ```dart
/// RushSyncNotifier(
///   actions: {
///     MyAction: (context, action, status) {
///       // Handle the action and status here
///     },
///   },
///   child: MyChildWidget(),
/// )
/// ```
class RushSyncNotifier extends StatefulWidget {
  /// Creates a new [RushSyncNotifier] instance.
  const RushSyncNotifier({required this.actions, super.key, this.child});

  /// The child widget.
  final Widget? child;

  /// The actions to listen to.
  final Map<Type, ContextCallbackWithStatus> actions;

  @override
  // ignore: library_private_types_in_public_api
  _RushSyncNotifierState createState() => _RushSyncNotifierState();
}

class _RushSyncNotifierState extends State<RushSyncNotifier> {
  StreamSubscription<dynamic>? eventSub;

  @override
  void initState() {
    super.initState();
    final actions = widget.actions.keys.toSet();
    final stream = RushEngine.events.where(
      (e) => actions.contains(e.runtimeType),
    );
    eventSub = stream.listen((e) {
      final status = e.status;
      widget.actions[e.runtimeType]?.call(context, e, status);
    });
  }

  @override
  void dispose() {
    eventSub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child ?? const SizedBox();
  }
}
