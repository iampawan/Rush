import 'package:flutter/material.dart';

/// Uses [RushRenderMixin] mixin to render the widget only
/// when the condition is true.

mixin RushRenderMixin<T> {
  late T _child;

  /// Determines whether to render the widget or not.
  @protected
  bool willRender = true;

  /// Sets the child to be rendered.
  @protected
  set childForRender(T child) {
    _child = child;
  }

  /// Uses [when] clause to render the widget only when the condition is true.
  // ignore: avoid_positional_boolean_parameters
  T when(bool condition) {
    willRender = condition;
    return _child;
  }
}
