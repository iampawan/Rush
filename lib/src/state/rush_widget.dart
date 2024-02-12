// rush_widget.dart

import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:rush/src/state/rush_engine.dart';
import 'package:rush/src/state/rush_state.dart';

class RushProvider extends InheritedWidget {
  const RushProvider({required this.engine, required super.child, super.key});
  final RushEngine engine;

  @override
  bool updateShouldNotify(RushProvider oldWidget) => engine != oldWidget.engine;

  static RushProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<RushProvider>()!;
  }
}

typedef RushStateWidgetBuilder<T> = Widget Function(
  BuildContext context,
  T fuel,
  RushStatus status,
);

class RushWidget<T extends RushFuel> extends StatefulWidget {
  const RushWidget({
    required this.builder,
    required this.actions,
    super.key,
  });
  final RushStateWidgetBuilder<T> builder;
  final Map<Type, Function> actions;

  @override
  _RushWidgetState createState() => _RushWidgetState<T>();
}

class _RushWidgetState<T extends RushFuel> extends State<RushWidget<T>> {
  StreamSubscription? _subscription;
  RushStatus _status = RushStatus.idle();
  Object? _error;

  @override
  void initState() {
    super.initState();
    final engine = RushEngine();
    _subscription = engine.actions.listen((action) {
      if (widget.actions.containsKey(action.runtimeType)) {
        widget.actions[action.runtimeType]?.call();
      }
      if (action.status is Error) {
        setState(() {
          _status = action.status;
          _error = (action.status as Error).error;
        });
      }
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final rushEngine = RushEngine();
    return StreamBuilder<RushAction>(
      stream: rushEngine.actions,
      builder: (context, snapshot) {
        if (snapshot.hasData &&
            widget.actions.containsKey(snapshot.data.runtimeType)) {
          return widget.builder(
            context,
            rushEngine.getFuel<T>(),
            snapshot.data!.status,
          );
        } else {
          return widget.builder(
            context,
            rushEngine.getFuel<T>(),
            RushStatus.idle(),
          );
        }
      },
    );
  }
}

class RushNotifier extends StatefulWidget {
  const RushNotifier({required this.actions, super.key, this.child});
  final Widget? child;
  final Map<Type, Function> actions;

  @override
  _RushNotifierState createState() => _RushNotifierState();
}

class _RushNotifierState extends State<RushNotifier> {
  StreamSubscription? _subscription;

  @override
  void initState() {
    super.initState();
    final engine = RushEngine();
    _subscription = engine.actions.listen((action) {
      if (widget.actions.containsKey(action.runtimeType)) {
        widget.actions[action.runtimeType]?.call();
      }
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child ?? const SizedBox();
  }
}
