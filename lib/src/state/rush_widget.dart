import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rush/rush.dart';

/// A widget that builds its descendants based on the state of a [RushTank].
///
/// Example:
/// ```dart
/// RushBuilder<MyTank>(
///   builder: (context, tank, status) {
///     //= Build UI based on tank and status
///   },
/// )
/// ```
class RushBuilder<T extends RushTank> extends StatefulWidget {
  /// Creates a new [RushBuilder] instance.
  const RushBuilder({
    required this.builder,
    required this.actions,
    this.actionNotifier,
    super.key,
  });

  /// The builder for this widget.
  final Widget Function(BuildContext, T, RushStatus) builder;

  /// A map of [RushFlow] actions to be notified.
  final Map<Type, ContextCallback>? actionNotifier;

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
      final mutations = widget.actionNotifier!.keys.toSet();
      final stream = RushEngine.events.where(
        (e) => mutations.contains(e.runtimeType),
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
        final tank = RushEngine.getTank<T>();
        return widget.builder(context, tank, status);
      },
    );
  }
}

/// A function that is called when a [RushFlow] action occurs.
typedef ContextCallback = void Function(
  BuildContext context,
  RushFlow action,
  RushStatus status,
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
  final Map<Type, ContextCallback> actions;


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
