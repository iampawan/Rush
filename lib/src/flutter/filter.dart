/*
 * Copyright 2024 Pawan Kumar. All rights reserved.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'package:flutter/material.dart';
import 'package:rush/src/flutter/builder.dart';

/// [RushColorFilter] contains enums for different color filters.
enum RushColorFilter {
  /// No filter.

  noFilter,

  /// Purple filter.

  purple,

  /// Yellow filter.

  yellow,

  /// Pink filter.

  pink,

  /// Black and white filter.

  blackAndWhite,

  /// Old times filter.

  oldTimes,

  /// Cold life filter.

  coldLife,

  /// Blue filter.

  blue,

  /// Milk filter.

  milk,

  /// Sepia filter.

  sepia,

  /// Polaroid filter.

  polaroid
}

/// A widget builder for applying Rush filters to a child widget.
///
/// Example:
/// ```dart
/// RushFilterBuilder(
///   child: MyWidget(),
/// ).apply();
/// ```
class RushFilterBuilder extends RushWidgetBuilder<Widget> {
  /// Creates a new [RushFilterBuilder] instance.
  RushFilterBuilder({required this.child});

  /// The child widget to apply the filter to.
  final Widget child;

  bool _isColorModeOn = false;
  Color _colorModeColor = Colors.transparent;
  BlendMode _blendMode = BlendMode.clear;

  /// The custom filter matrix.
  List<double> myMatrix = [
    1,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
  ];

  final List<double> _noFilter = [
    1,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
  ];

  final List<double> _blue = [
    1,
    -0.2,
    0,
    0,
    0,
    0,
    1,
    0,
    -0.1,
    0,
    0,
    1.2,
    1,
    0.1,
    0,
    0,
    0,
    1.7,
    1,
    0,
  ];

  final List<double> _yellow = [
    1,
    0,
    0,
    0,
    0,
    -0.2,
    1,
    0.3,
    0.1,
    0,
    -0.1,
    0,
    1,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
  ];

  final List<double> _pink = [
    1,
    0,
    0,
    1.9,
    -2.2,
    0,
    1,
    0,
    0.0,
    0.3,
    0,
    0,
    1,
    0,
    0.5,
    0,
    0,
    0,
    1,
    0.2,
  ];
  final List<double> _blackAndWhite = [
    0,
    1,
    0,
    0,
    0,
    0,
    1,
    0,
    0,
    0,
    0,
    1,
    0,
    0,
    0,
    0,
    1,
    0,
    1,
    0,
  ];

  final List<double> _oldTimes = [
    1,
    0,
    0,
    0,
    0,
    -0.4,
    1.3,
    -0.4,
    0.2,
    -0.1,
    0,
    0,
    1,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
  ];

  final List<double> _coldLife = [
    1,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
    0,
    0,
    -0.2,
    0.2,
    0.1,
    0.4,
    0,
    0,
    0,
    0,
    1,
    0,
  ];

  final List<double> _purple = [
    1.3,
    -0.3,
    1.1,
    0,
    0,
    0,
    1.3,
    0.2,
    0,
    0,
    0,
    0,
    0.8,
    0.2,
    0,
    0,
    0,
    0,
    1,
    0,
  ];

  final List<double> _milk = [
    0,
    1.0,
    0,
    0,
    0,
    0,
    1.0,
    0,
    0,
    0,
    0,
    0.6,
    1,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
  ];

  final List<double> _sepia = [
    0.393,
    0.769,
    0.189,
    0,
    0,
    0.349,
    0.686,
    0.168,
    0,
    0,
    0.272,
    0.534,
    0.131,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
  ];

  final List<double> _polaroid = [
    1.438,
    -0.062,
    -0.062,
    0,
    0,
    0.122,
    1.378,
    -0.122,
    0,
    0,
    0.016,
    -0.016,
    0,
    0,
    0,
    0.03,
    0.05,
    -0.02,
    1,
    0,
  ];

  /// Returns the custom filter matrix.
  RushFilterBuilder setCustomFilter(List<double> filterMatrix) {
    _isColorModeOn = false;
    myMatrix = filterMatrix;
    return this;
  }

  /// Returns the predefined filter matrix.
  RushFilterBuilder setFilter(RushColorFilter filter) {
    _isColorModeOn = false;
    switch (filter) {
      case RushColorFilter.noFilter:
        myMatrix = _noFilter;
      case RushColorFilter.purple:
        myMatrix = _purple;
      case RushColorFilter.yellow:
        myMatrix = _yellow;
      case RushColorFilter.pink:
        myMatrix = _pink;
      case RushColorFilter.blackAndWhite:
        myMatrix = _blackAndWhite;
      case RushColorFilter.oldTimes:
        myMatrix = _oldTimes;
      case RushColorFilter.coldLife:
        myMatrix = _coldLife;
      case RushColorFilter.blue:
        myMatrix = _blue;
      case RushColorFilter.milk:
        myMatrix = _milk;
      case RushColorFilter.sepia:
        myMatrix = _sepia;
      case RushColorFilter.polaroid:
        myMatrix = _polaroid;
    }
    return this;
  }

  /// Returns the no filter matrix.
  RushFilterBuilder get noFilter {
    myMatrix = _noFilter;
    return this;
  }

  /// Returns the purple filter matrix.
  RushFilterBuilder get purple {
    myMatrix = _purple;
    return this;
  }

  /// Returns the yellow filter matrix.
  RushFilterBuilder get yellow {
    myMatrix = _yellow;
    return this;
  }

  /// Returns the pink filter matrix.
  RushFilterBuilder get pink {
    myMatrix = _pink;
    return this;
  }

  /// Returns the black and white filter matrix.
  RushFilterBuilder get blackAndWhite {
    myMatrix = _blackAndWhite;
    return this;
  }

  /// Returns the old times filter matrix.
  RushFilterBuilder get oldTimes {
    myMatrix = _oldTimes;
    return this;
  }

  /// Returns the cold life filter matrix.
  RushFilterBuilder get coldLife {
    myMatrix = _coldLife;
    return this;
  }

  /// Returns the blue filter matrix.
  RushFilterBuilder get blue {
    myMatrix = _blue;
    return this;
  }

  /// Returns the milk filter matrix.
  RushFilterBuilder get milk {
    myMatrix = _milk;
    return this;
  }

  /// Returns the sepia filter matrix.
  RushFilterBuilder get sepia {
    myMatrix = _sepia;
    return this;
  }

  /// Returns the polaroid filter matrix.
  RushFilterBuilder get polaroid {
    myMatrix = _polaroid;
    return this;
  }

  /// Returns the color filter mode after blending \with a given color and blend mode.
  RushFilterBuilder blend(Color color, BlendMode blendMode) {
    _isColorModeOn = true;
    _colorModeColor = color;
    _blendMode = blendMode;
    return this;
  }

  @override
  Widget apply({Key? key}) {
    if (_isColorModeOn) {
      return ColorFiltered(
        key: key,
        colorFilter: ColorFilter.mode(_colorModeColor, _blendMode),
        child: child,
      );
    } else {
      return ColorFiltered(
        key: key,
        colorFilter: ColorFilter.matrix(myMatrix),
        child: child,
      );
    }
  }
}

/// This extension will help to provide different filters to the widget.
extension FilterExtension on Widget {
  /// Filters the widget with a color filter.
  Widget filter({RushColorFilter filter = RushColorFilter.noFilter}) =>
      RushFilterBuilder(
        child: this,
      ).setFilter(filter).apply();
}
