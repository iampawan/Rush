import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rush/rush.dart';

class RushBuilder<T> extends StatefulWidget {
  const RushBuilder({
    required this.builder,
    required this.actions,
    super.key,
    this.notifications,
  });

  /// [builder] provides the child widget to rendered.
  final RushStateWidgetBuilder<T> builder;

  /// Widget will rerender every time any of [actions] executes.
  final Set<Type> actions;

  /// Map of mutations and their corresponding callback
  final Map<Type, ContextCallback>? notifications;

  @override
  _RushBuilderState createState() => _RushBuilderState<T>();
}

class _RushBuilderState<T> extends State<RushBuilder<T>> {
  StreamSubscription? eventSub;

  @override
  void initState() {
    super.initState();
    if (widget.notifications != null) {
      final notifications = widget.notifications!.keys.toSet();
      final stream = RushEngine.events.where(
        (e) => notifications.contains(e.runtimeType),
      );
      eventSub = stream.listen((e) {
        widget.notifications![e.runtimeType]
            ?.call(context, e, status: e.status);
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
      (e) => widget.actions.contains(e.runtimeType),
    );
    return StreamBuilder<RushFlow>(
      stream: stream,
      builder: (context, action) {
        RushStatus? status;
        if (!action.hasData ||
            action.connectionState == ConnectionState.waiting) {
          status = RushStatus.idle;
        } else {
          status = action.data?.status;
        }
        final store = RushEngine.fuel as T;
        return widget.builder(context, store, status);
      },
    );
  }
}

typedef ContextCallback = void Function(
  BuildContext context,
  RushFlow action, {
  RushStatus? status,
});

class RushNotifier extends StatefulWidget {
  /// [RushNotifier] make callbacks for given actions
  const RushNotifier({required this.actions, super.key, this.child});

  /// Optional child widget
  final Widget? child;

  /// Map of mutations and their corresponding callback
  final Map<Type, ContextCallback> actions;

  @override
  _RushNotifierState createState() => _RushNotifierState();
}

class _RushNotifierState extends State<RushNotifier> {
  StreamSubscription? eventSub;

  @override
  void initState() {
    super.initState();
    final mutations = widget.actions.keys.toSet();
    final stream = RushEngine.events.where(
      (e) => mutations.contains(e.runtimeType),
    );
    eventSub = stream.listen((e) {
      widget.actions[e.runtimeType]?.call(context, e, status: e.status);
    });
  }

  @override
  void dispose() {
    eventSub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // allow null child
    return widget.child ?? const SizedBox();
  }
}
