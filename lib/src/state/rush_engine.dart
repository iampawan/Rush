// rush_engine.dart

import 'dart:async';

import 'package:rush/src/state/rush_state.dart';

abstract class RushMiddleware {
  void call(RushAction action);
}

class RushEngine {
  factory RushEngine() {
    return _singleton;
  }

  RushEngine._internal();
  static final RushEngine _singleton = RushEngine._internal();

  final Map<Type, RushFuel> fuels = {};
  final _controller = StreamController<RushAction>.broadcast();
  final List<RushMiddleware> middlewares = [];

  void init({
    Map<Type, RushFuel> fuels = const {},
    List<RushMiddleware> middlewares = const [],
  }) {
    this.fuels.addAll(fuels);
    this.middlewares.addAll(middlewares);
  }

  Stream<RushAction> get actions => _controller.stream;

  T getFuel<T extends RushFuel>() {
    return fuels[T]! as T;
  }

  Future<RushStatus> getStatus<T extends RushFuel>() async {
    final fuelType = T;
    final lastAction = await _controller.stream
        .where((action) => action is RushAction<T>)
        .last;
    return lastAction.status;
  }

  void dispatch<T extends RushFuel>(RushAction<T> action) {
    action.status = RushStatus.loading();
    _controller.add(action);
    for (final middleware in middlewares) {
      middleware(action);
    }
    action.execute(getFuel<T>()).then((_) {
      action.status = RushStatus.success();
      _controller.add(action);
    }).catchError((Object e, StackTrace s) {
      action.onException(e, s);
      _controller.add(action);
    });
  }

  void dispose() {
    _controller.close();
  }
}
