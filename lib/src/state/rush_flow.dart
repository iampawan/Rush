part of 'rush_engine.dart';

/// A function that returns a RushFlow.
typedef RushFlowBuilder = RushFlow Function();

/// An abstract class representing a RushFlow.
abstract class RushFlow<T extends RushTank?> {
  RushFlow() {
    _status = RushStatus.idle;
    _run();
  }

  T? get fuel => RushEngine.tank as T?;

  RushStatus get status => _status;
  late RushStatus _status;

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
        _status = RushStatus.loading;
        RushEngine.notify(this);
        result = await result;
      }

      if (result != null && this is RushChain) {
        final dynamic out = (this as RushChain).fork(result);
        if (out is Future) {
          await out;
        }
      }
      _status = RushStatus.success;
      RushEngine.notify(this);

      for (final action in _postActions) {
        action();
      }
    } catch (e, s) {
      _status = RushStatus.error;
      onException(e, s);
      RushEngine.notify(this);
    }

    for (final i in RushEngine._middlewares) {
      i.postFlow(this);
    }
  }

  void next(RushFlowBuilder actionBuilder) {
    _postActions.add(actionBuilder);
  }

  dynamic execute();

  void onException(dynamic e, StackTrace s) {
    print(e);
    print(s);
  }
}

mixin RushChain<T> {
  dynamic fork(T result);
}

abstract class RushMiddleware {
  bool preFlow(RushFlow action);

  void postFlow(RushFlow action);
}
