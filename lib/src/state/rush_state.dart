// rush_state.dart

import 'dart:async';

import 'package:rush/src/state/rush_engine.dart';

abstract class RushStatus {
  factory RushStatus.idle() = Idle;
  factory RushStatus.loading() = Loading;
  factory RushStatus.success() = Success;
  factory RushStatus.error(Object error) = Error;
}

class Idle implements RushStatus {}

class Loading implements RushStatus {}

class Success implements RushStatus {}

class Error implements RushStatus {
  Error(this.error);
  final Object error;
}

abstract class RushFuel {}

abstract class RushAction<T extends RushFuel> {
  RushAction() {
    RushEngine().dispatch(this);
  }
  RushStatus status = RushStatus.idle();

  Future<void> execute(T fuel);

  void onException(Object e, StackTrace s) {
    status = RushStatus.error(e);
  }
}
