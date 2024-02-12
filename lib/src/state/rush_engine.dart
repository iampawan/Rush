import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

part 'rush_flow.dart';

typedef RushStateWidgetBuilder<T> = Widget Function(
  BuildContext context,
  T fuel,
  RushStatus? status,
);

enum RushStatus { idle, loading, success, error }

abstract class RushFuel {}

class RushEngine extends StatelessWidget {
  /// Constructor collects the store instance and interceptors.
  RushEngine({
    required RushFuel fuel,
    required this.child,
    super.key,
    List<RushMiddleware> middlewares = const [],
  }) {
    RushEngine._fuel = fuel;
    RushEngine._middlewares = middlewares;
  }

  final Widget? child;

  static late List<RushMiddleware> _middlewares;

  static final StreamController<RushFlow<RushFuel?>> _events =
      StreamController<RushFlow>.broadcast();

  static Stream<RushFlow> get events => _events.stream;

  static late RushFuel? _fuel;

  static RushFuel get fuel => _fuel!;

  static final Set<Type> _buffer = <Type>{};

  static void notify(RushFlow action) {
    _buffer.add(action.runtimeType);
    _events.add(action);
  }

  /// Filters the main event stream with the mutation
  /// given as parameter. This can be used to perform some callbacks inside
  /// widgets after some mutation executed.
  static Stream<RushFlow> streamOf(Type mutation) {
    return _events.stream.where((e) => e.runtimeType == mutation);
  }

  /// Attaches context to the mutations given in `on` param.
  /// When a mutation specified execute widget will rebuild.
  static void watch(BuildContext context, {required List<Type> on}) {
    for (final mutant in on) {
      context.dependOnInheritedWidgetOfExactType<_RushModel>(
        aspect: mutant,
      );
    }
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    events.forEach((element) {
      properties.add(
        DiagnosticsProperty(
          element.runtimeType.toString(),
          element.fuel.toString(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _events.stream,
      builder: (context, _) {
        // Copy all the mutations that executed before
        // current build and clear that buffer
        // ignore: prefer_typing_uninitialized_variables
        Set<Type> clone;
        if (_buffer.isNotEmpty) {
          clone = <Type>{}..addAll(_buffer);
          _buffer.clear();
        } else {
          clone = _buffer;
        }

        // Rebuild inherited model with all the mutations
        // inside "clone" as the aspects changed
        return _RushModel(recent: clone, child: child!);
      },
    );
  }
}
