import 'dart:async';

import 'package:rush/src/rush.dart';

part 'rush_flow.dart';

/// An enum representing the status of a RushFlow.
enum RushStatus {
  /// Represents the idle state.
  ///
  /// Example:
  /// ```
  /// RushStatus status = RushStatus.idle;
  /// ```
  idle,

  /// Represents the loading state.
  ///
  /// Example:
  /// ```
  /// RushStatus status = RushStatus.loading;
  /// ```
  loading,

  /// Represents the success state.
  ///
  /// Example:
  /// ```
  /// RushStatus status = RushStatus.success;
  /// ```
  success,

  /// Represents the error state.
  ///
  /// Example:
  /// ```
  /// RushStatus status = RushStatus.error;
  /// ```
  error
}

/// An abstract class representing a RushTank.
abstract class RushTank {}

/// A class representing a RushEngine.
class RushEngine {
  RushEngine._();

  static final _controller = StreamController<RushFlow<RushTank>>.broadcast();
  static final _middlewares = <RushMiddleware>[];

  /// The tank/storage for this engine.
  static final Map<Type, RushTank> _tanks = {};

  /// The events of this engine.
  static Stream<RushFlow<RushTank>> get events => _controller.stream;

  /// Initializes the engine with the given tank and middlewares.
  static void init<T extends RushTank>(
    T tank, {
    List<RushMiddleware>? middlewares,
  }) {
    registerTank(tank);
    if (middlewares != null) {
      _middlewares.addAll(middlewares);
    }
  }

  /// Registers a tank with this engine.
  static void registerTank<T extends RushTank>(T tank) {
    _tanks[T] = tank;
  }

  /// Gets the tank of the given type.
  static T getTank<T extends RushTank>() {
    if (!_tanks.containsKey(T)) {
      throw Exception('No tank of type $T registered');
    }
    return _tanks[T]! as T;
  }

  /// Adds a middleware to this engine.
  static void addMiddleware(RushMiddleware middleware) {
    _middlewares.add(middleware);
  }

  /// Notifies the engine of the given action.
  static void notify(RushFlow action) {
    _controller.add(action);
  }

  /// Disposes of this engine.
  static void dispose() {
    _controller.close();
  }
}
