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

/// A mixin that provides shadow functionality to a class.
///
/// This mixin can be used to add shadow effects to a class in Flutter.
/// It provides properties and methods to control the shadow appearance
/// and behavior.
mixin RushShadowMixin<T> {
  late T _child;

  @protected

  /// The list of box shadows applied to the widget.
  List<BoxShadow>? rushShadow;

  @protected
  set setChildForShadow(T child) {
    _child = child;
  }

  /// Returns the outer shadow with small offset and blur.
  ///
  /// This method returns a shadow with a small offset and blur,
  /// providing a subtle outer shadow effect.
  T get smOuterShadow => _addShadow(
        shadows: <BoxShadow>[
          const BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 2,
            color: Color.fromRGBO(0, 0, 0, 0.05),
          ),
        ],
      );

  /// Returns the outer shadow with medium offset and blur.
  ///
  /// This method returns a shadow with a medium offset and blur,
  /// creating a visible outer shadow effect.
  T get outerShadow => _addShadow(
        shadows: <BoxShadow>[
          const BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 3,
            color: Color.fromRGBO(0, 0, 0, 0.1),
          ),
          const BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 2,
            color: Color.fromRGBO(0, 0, 0, 0.06),
          ),
        ],
      );

  /// Returns the outer shadow with medium offset, blur, and spread.
  ///
  /// This method returns a shadow with a medium offset, blur, and spread,
  /// creating a more pronounced outer shadow effect.
  T get mdOuterShadow => _addShadow(
        shadows: <BoxShadow>[
          const BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 6,
            spreadRadius: -1,
            color: Color.fromRGBO(0, 0, 0, 0.1),
          ),
          const BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 4,
            spreadRadius: -1,
            color: Color.fromRGBO(0, 0, 0, 0.06),
          ),
        ],
      );

  /// Returns the outer shadow with large offset, blur, and spread.
  ///
  /// This method returns a shadow with a large offset, blur, and spread,
  /// creating a prominent outer shadow effect.
  T get lgOuterShadow => _addShadow(
        shadows: <BoxShadow>[
          const BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 15,
            spreadRadius: -3,
            color: Color.fromRGBO(0, 0, 0, 0.1),
          ),
          const BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 6,
            spreadRadius: -2,
            color: Color.fromRGBO(0, 0, 0, 0.05),
          ),
        ],
      );

  /// Returns the outer shadow with extra large offset, blur, and spread.
  ///
  /// This method returns a shadow with an extra large offset, blur, and
  /// spread, creating a dramatic outer shadow effect.
  T get xlOuterShadow => _addShadow(
        shadows: <BoxShadow>[
          const BoxShadow(
            offset: Offset(0, 20),
            blurRadius: 25,
            spreadRadius: -5,
            color: Color.fromRGBO(0, 0, 0, 0.1),
          ),
          const BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 10,
            spreadRadius: -5,
            color: Color.fromRGBO(0, 0, 0, 0.04),
          ),
        ],
      );

  /// Returns the outer shadow with twice extra large offset, blur, and spread.
  ///
  /// This method returns a shadow with twice the extra large offset, blur,
  /// and spread, creating an exaggerated outer shadow effect.
  T get xl2OuterShadow => _addShadow(
        shadows: <BoxShadow>[
          const BoxShadow(
            offset: Offset(0, 25),
            blurRadius: 50,
            spreadRadius: -12,
            color: Color.fromRGBO(0, 0, 0, 0.25),
          ),
        ],
      );

  /// Returns the outer shadow with thrice extra large offset, blur, and spread.
  ///
  /// This method returns a shadow with thrice the extra large offset, blur,
  /// and spread, creating an intense outer shadow effect.
  T get xl3OuterShadow => _addShadow(
        shadows: <BoxShadow>[
          const BoxShadow(
            offset: Offset(0, 35),
            blurRadius: 60,
            spreadRadius: -15,
            color: Color.fromRGBO(0, 0, 0, 0.3),
          ),
        ],
      );

  /// Shadowing
  T get zeroShadow => _addShadow(shadows: kElevationToShadow[0]);

  /// Shadowing
  T get shadow => _addShadow(shadows: kElevationToShadow[6]);

  ///
  /// To give extra small shadow.
  ///
  T get xsShadow => _addShadow(shadows: kElevationToShadow[1]);

  ///
  /// To give small shadow.
  ///
  T get smShadow => _addShadow(shadows: kElevationToShadow[2]);

  ///
  /// To give medium shadow.
  ///
  T get mdShadow => _addShadow(shadows: kElevationToShadow[3]);

  ///
  /// To give large shadow.
  ///
  T get lgShadow => _addShadow(shadows: kElevationToShadow[4]);

  ///
  /// To give extra large shadow.
  ///
  T get xlShadow => _addShadow(shadows: kElevationToShadow[6]);

  ///
  /// To give twice extra large shadow.
  ///
  T get xl2Shadow => _addShadow(shadows: kElevationToShadow[8]);

  ///
  /// To give thrice extra large shadow.
  ///
  T get xl3Shadow => _addShadow(shadows: kElevationToShadow[9]);

  ///
  /// To give 4x extra large shadow.
  ///
  T get xl4Shadow => _addShadow(shadows: kElevationToShadow[12]);

  ///
  /// To give 5x extra large shadow.
  ///
  T get xl5Shadow => _addShadow(shadows: kElevationToShadow[16]);

  ///
  /// To give max shadow.
  ///
  T get maxShadow => _addShadow(shadows: kElevationToShadow[24]);

  T _addShadow({required List<BoxShadow>? shadows}) {
    rushShadow = shadows;
    return _child;
  }
}
