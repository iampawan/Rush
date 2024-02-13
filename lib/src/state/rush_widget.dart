import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rush/rush.dart';

/// A widget that builds itself based on the latest snapshot of interaction with a [RushEngine].
class RushBuilder<T extends RushTank> extends StatefulWidget {
  const RushBuilder({
    required this.builder,
    required this.actions,
    this.actionNotifier,
    super.key,
  });

  final Widget Function(BuildContext, T, RushStatus) builder;
  final Map<Type, ContextCallback>? actionNotifier;
  final Set<Type>? actions;

  @override
  _RushBuilderState createState() => _RushBuilderState<T>();
}

class _RushBuilderState<T extends RushTank> extends State<RushBuilder<T>> {
  StreamSubscription? eventSub;

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

/// A widget that notifies its descendants of [RushFlow] actions.
class RushNotifier extends StatefulWidget {
  const RushNotifier({required this.actions, super.key, this.child});

  final Widget? child;
  final Map<Type, ContextCallback> actions;

  @override
  _RushNotifierState createState() => _RushNotifierState();
}

class _RushNotifierState extends State<RushNotifier> {
  StreamSubscription? eventSub;

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
