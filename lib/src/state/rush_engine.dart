import 'dart:async';

part 'rush_flow.dart';

/// An enum representing the status of a RushFlow.
enum RushStatus { idle, loading, success, error }

/// An abstract class representing a RushTank.
abstract class RushTank {}

/// A class representing a RushEngine.
class RushEngine {
  RushEngine._();

  static late RushTank _tank;
  static final _controller = StreamController<RushFlow>.broadcast();
  static final _middlewares = <RushMiddleware>[];

  /// The tank/storage for this engine.
  static RushTank get tank => _tank;

  /// The events of this engine.
  static Stream<RushFlow> get events => _controller.stream;

  /// Initializes the engine with the given fuel.
  static void withFuel(RushTank fuel) {
    _tank = fuel;
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
