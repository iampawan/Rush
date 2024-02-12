/*
 * Copyright (c) 2024 Pawan Kumar. All rights reserved.
 *
 *  * Licensed under the Apache License, Version 2.0 (the "License");
 *  * you may not use this file except in compliance with the License.
 *  * You may obtain a copy of the License at
 *  * http://www.apache.org/licenses/LICENSE-2.0
 *  * Unless required by applicable law or agreed to in writing, software
 *  * distributed under the License is distributed on an "AS IS" BASIS,
 *  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  * See the License for the specific language governing permissions and
 *  * limitations under the License.
 */

import 'package:flutter/material.dart';
import 'package:rush/src/rush.dart';

/// A mixin that provides gradient functionality for a Flutter widget.
///
/// This mixin can be used to add gradient effects to a Flutter widget by
/// applying it as a mixin. It provides the necessary methods and properties
/// to configure and apply gradients.
///
/// The generic type parameter `T` represents the type of the widget that
/// will be using this mixin.
mixin RushGradientMixin<T> {
  late T _childToGradient;

  @protected

  /// The gradient used for the Rush widget.
  ///
  /// This property allows you to specify a gradient to be applied to the
  /// Rush widget.
  /// Gradients are used to create smooth transitions between multiple colors.
  /// If no gradient is specified,
  /// the Rush widget will not have a gradient applied.
  Gradient? rushGradient;

  @protected

  /// Sets the given [child] to the gradient.
  ///
  /// This method is used to set a child widget to a gradient.
  /// The child widget will be rendered with the specified gradient.
  ///
  /// Example usage:
  /// ```dart
  /// setChildToGradient(MyWidget());
  /// ```
  set setChildToGradient(T child) {
    _childToGradient = child;
  }

  /// Creates a gradient from the specified color [color] to [Rush.gray100].
  /// The [stops] parameter is optional and allows you to specify
  /// the position of each color in the gradient.
  /// Returns the result of applying the gradient to [_childToGradient].
  T gradientFrom({required Color color, List<double>? stops}) => _gradientIt(
        child: _childToGradient,
        gradient: LinearGradient(colors: [color, Rush.gray100], stops: stops),
      );

  /// Creates a gradient from the specified color [from] to [via] to [to].
  /// The [stops] parameter is optional and allows you to specify
  /// the position of each color in the gradient.
  /// Returns the result of applying the gradient to [_childToGradient].
  T gradientVia({
    required Color from,
    required Color via,
    required Color to,
    List<double>? stops,
  }) =>
      _gradientIt(
        child: _childToGradient,
        gradient: LinearGradient(colors: [from, via, to], stops: stops),
      );

  /// Creates a gradient from the specified color [from] to [to].
  /// The [stops] parameter is optional and allows you to specify
  /// the position of each color in the gradient.
  /// Returns the result of applying the gradient to [_childToGradient].
  T gradientFromAndTo({
    required Color from,
    required Color to,
    List<double>? stops,
  }) =>
      _gradientIt(
        child: _childToGradient,
        gradient: LinearGradient(colors: [from, to], stops: stops),
      );

  /// Creates a gradient from [Rush.gray100] to the specified color [color].
  /// The [stops] parameter is optional and allows you to specify
  /// the position of each color in the gradient.
  /// Returns the result of applying the gradient to [_childToGradient].
  T gradientTo({required Color color, List<double>? stops}) => _gradientIt(
        child: _childToGradient,
        gradient: LinearGradient(colors: [Rush.gray100, color], stops: stops),
      );

  T _gradientIt({required Gradient gradient, required T child}) {
    rushGradient = gradient;
    return child;
  }
}
