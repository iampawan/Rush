part of 'rush_engine.dart';

typedef RushFlowBuilder = RushFlow Function();

abstract class RushFlow<T extends RushFuel?> {
  RushFlow() {
    status = RushStatus.idle;
    _run();
  }

  T? get fuel => RushEngine.fuel as T?;

  RushStatus? status;

  final List<RushFlowBuilder> _postActions = [];

  Future<void> _run() async {
    for (final i in RushEngine._middlewares) {
      if (!i.preFlow(this)) {
        return;
      }
    }

    try {
      dynamic result = execute();
      if (result is Future) {
        status = RushStatus.loading;
        RushEngine.notify(this);
        result = await result;
      }

      if (result != null && this is RushChain) {
        final dynamic out = (this as RushChain).fork(result);
        if (out is Future) {
          await out;
        }
        status = RushStatus.success;
        RushEngine.notify(this);
      }
      RushEngine.notify(this);
      status = RushStatus.success;

      for (final action in _postActions) {
        action();
      }
      // ignore: avoid_catches_without_on_clauses
    } catch (e, s) {
      status = RushStatus.error;
      onException(e, s);
      RushEngine.notify(this);
    }

    // Execute all the interceptors.
    for (final i in RushEngine._middlewares) {
      i.postFlow(this);
    }
  }

  void next(RushFlowBuilder actionBuilder) {
    _postActions.add(actionBuilder);
  }

  dynamic execute();

  void onException(dynamic e, StackTrace s) {
    var isAssertOn = false;
    assert(isAssertOn = true);
    if (isAssertOn) {
      print(e);
      print(s);
    }
  }
}

mixin RushChain<T> {
  dynamic fork(T result);
}

abstract class RushMiddleware {
  bool preFlow(RushFlow action);

  void postFlow(RushFlow action);
}

class _RushModel extends InheritedModel<dynamic> {
  const _RushModel({required super.child, this.recent});
  final Set<Type>? recent;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) =>
      oldWidget.hashCode != recent.hashCode;

  @override
  bool updateShouldNotifyDependent(
    covariant InheritedModel<dynamic> oldWidget,
    Set<dynamic> dependencies,
  ) {
    return dependencies.intersection(recent!).isNotEmpty;
  }
}
