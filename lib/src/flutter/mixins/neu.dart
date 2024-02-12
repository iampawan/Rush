/*
 * Copyright (c) 2020 Pawan Kumar. All rights reserved.
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
import 'package:rush/src/flutter/types/neumorph.dart';

/// A mixin that provides the Neumorphism functionality.

mixin RushNeuMixin {
  Gradient? _gradient;

  @protected

  /// Applies a neumorphic decoration to the widget.
  ///
  /// This method returns a [RushNeu] widget with the
  /// specified decoration applied.
  /// Neumorphic decoration gives a raised or embossed effect to the widget,
  /// making it visually appealing and adding depth to the UI.
  ///
  /// The [color] parameter specifies the color of the neumorphic decoration.
  /// The [curveType] parameter specifies the curve to use eg: concave.
  /// The [elevation] parameter specifies the depth of the neumorphic effect.
  ///
  /// Returns a [RushNeu] widget with the specified decoration applied.
  RushNeu neuDecoration(
    Color color,
    RushCurve curveType,
    double elevation,
  ) {
    final color0 = color;
    final emboss = curveType == RushCurve.emboss;

    var colorValue = color0;

    var shadowList = <BoxShadow>[
      BoxShadow(
        color: _getNeuColor(color0, emboss ? 0 - elevation : elevation - 30),
        offset: Offset(0 - elevation, 0 - elevation),
        blurRadius: elevation,
      ),
      BoxShadow(
        color: _getNeuColor(color0, emboss ? elevation : 0 - elevation),
        offset: Offset(elevation, elevation),
        blurRadius: elevation,
      ),
    ];

    if (emboss) {
      shadowList = [
        BoxShadow(
          color: _getNeuColor(color0, elevation - 30),
          offset: Offset(elevation / 4, elevation / 4),
          blurRadius: elevation / 4,
        ),
        BoxShadow(
          color: _getNeuColor(color0, 0 - elevation),
          offset: Offset(0 - elevation / 6, 0 - elevation / 6),
          blurRadius: elevation / 6,
        ),
      ];

      colorValue = _getNeuColor(colorValue, 0 - elevation / 2);
    }
    switch (curveType) {
      case RushCurve.concave:
        _gradient = _getConcaveGradients(colorValue, elevation);
      case RushCurve.convex:
        _gradient = _getConvexGradients(colorValue, elevation);
      case RushCurve.emboss:
      case RushCurve.flat:
        _gradient = _getFlatGradients(colorValue, elevation);
    }
    return RushNeu(
      shadowList,
      _gradient,
    );
  }

  Gradient _getFlatGradients(Color baseColor, double depth) => LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          baseColor,
          baseColor,
        ],
      );

  Gradient _getConcaveGradients(Color baseColor, double depth) =>
      LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          _getNeuColor(baseColor, 0 - depth),
          _getNeuColor(baseColor, depth),
        ],
      );

  Gradient _getConvexGradients(Color baseColor, double depth) => LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          _getNeuColor(baseColor, depth),
          _getNeuColor(baseColor, 0 - depth),
        ],
      );

  Color _getNeuColor(Color baseColor, double amount) {
    var colors = <String, int>{
      'r': baseColor.red,
      'g': baseColor.green,
      'b': baseColor.blue,
    };

    colors = colors.map((key, value) {
      if (value + amount < 0) {
        return MapEntry(key, 0);
      }
      if (value + amount > 255) {
        return MapEntry(key, 255);
      }
      return MapEntry(key, (value + amount).floor());
    });
    return Color.fromRGBO(colors['r']!, colors['g']!, colors['b']!, 1);
  }
}
