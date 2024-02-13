part of 'rush_engine.dart';

/// A function that returns a RushFlow.
typedef RushFlowBuilder = RushFlow Function();

/// An abstract class representing a RushFlow.
abstract class RushFlow<T extends RushTank> {
  /// Constructs a new instance of [RushFlow].
  ///
  /// Sets the initial status to [RushStatus.idle] and starts the
  /// flow execution.
  RushFlow() {
    _status = RushStatus.idle;
    _run();
  }

  /// The RushTank associated with this RushFlow.
  T get tank => RushEngine.getTank<T>();

  /// The current status of the RushFlow.
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

  /// Moves to the next action in the RushFlow.
  ///
  /// The [actionBuilder] is a function that returns the next RushFlow.
  void next(RushFlowBuilder actionBuilder) {
    _postActions.add(actionBuilder);
  }

  /// Executes the RushFlow.
  dynamic execute();

  /// Handles the exception that occurs during the execution of the RushFlow.
  void onException(dynamic e, StackTrace s) {
    Rush.log(e);
    Rush.log(s);
  }
}

/// A mixin that allows a RushFlow to fork into another RushFlow.
mixin RushChain<T> {
  /// Forks the RushFlow into another RushFlow.
  dynamic fork(T result);
}

/// An abstract class representing a RushMiddleware.
abstract class RushMiddleware {
  /// A function that is called before the execution of a RushFlow.
  bool preFlow(RushFlow action);

  /// A function that is called after the execution of a RushFlow.

  void postFlow(RushFlow action);
}
