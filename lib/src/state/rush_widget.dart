import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rush/rush.dart';

/// A widget that builds its descendants based on the state of a [RushTank].
///
/// Example:
/// ```dart
/// RushBuilder<MyTank>(
///   builder: (context, tank) {
///     //= Build UI based on tank and status
///   },
/// loadingBuilder: (context) {
///   return Center(child: CircularProgressIndicator());
/// },
/// errorBuilder: (context, error) {
///   return Center(child: Text('An error occurred: $error'));
/// },
/// )
/// ```
class RushBuilder<T extends RushTank> extends StatefulWidget {
  /// Creates a new [RushBuilder] instance.
  const RushBuilder({
    required this.builder,
    required this.actions,
    this.loadingBuilder,
    this.errorBuilder,
    this.actionNotifier,
    super.key,
  });

  /// The builder for this widget.
  final Widget Function(BuildContext, T) builder;

  /// A builder function that returns a widget to display
  /// when the state is loading.
  ///
  /// Example:
  /// ```dart
  /// loadingBuilder: (context) {
  ///   return Center(child: CircularProgressIndicator());
  /// },
  /// ```
  final Widget Function(BuildContext)? loadingBuilder;

  /// A builder function that returns a widget to display when an error occurs.
  ///
  /// Example:
  /// ```dart
  /// errorBuilder: (context, error) {
  ///   return Center(child: Text('An error occurred: $error'));
  /// },
  /// ```
  final Widget Function(BuildContext, Object)? errorBuilder;

  /// A map of [RushFlow] actions to be notified.
  final Map<Type, ContextCallbackWithStatus>? actionNotifier;

  /// The actions to listen to.
  final Set<Type>? actions;

  @override
  // ignore: library_private_types_in_public_api
  _RushBuilderState createState() => _RushBuilderState<T>();
}

class _RushBuilderState<T extends RushTank> extends State<RushBuilder<T>> {
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
      (e) =>
          (widget.actions != null && widget.actions!.contains(e.runtimeType)) ||
          (widget.actionNotifier != null &&
              widget.actionNotifier!.keys.contains(e.runtimeType)),
    );
    return StreamBuilder<RushFlow>(
      stream: stream,
      builder: (context, action) {
        final status = action.data?.status ?? RushStatus.idle;
        if (status == RushStatus.loading) {
          if (widget.loadingBuilder != null) {
            return widget.loadingBuilder!(context);
          }
          return const Center(child: CircularProgressIndicator.adaptive());
        } else if (status == RushStatus.error) {
          if (widget.errorBuilder != null) {
            return widget.errorBuilder!(context, action.error!);
          }
          return const Center(child: Text('An error occurred'));
        }
        final tank = RushEngine.getTank<T>();
        return widget.builder(context, tank);
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
/// RushNotifier(
///   actions: {
///     MyAction: (context, action, status) {
///       // Handle the action and status here
///     },
///   },
///   child: MyChildWidget(),
/// )
/// ```
class RushNotifier extends StatefulWidget {
  /// Creates a new [RushNotifier] instance.
  const RushNotifier({required this.actions, super.key, this.child});

  /// The child widget.
  final Widget? child;

  /// The actions to listen to.
  final Map<Type, ContextCallbackWithStatus> actions;

  @override
  // ignore: library_private_types_in_public_api
  _RushNotifierState createState() => _RushNotifierState();
}

class _RushNotifierState extends State<RushNotifier> {
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
