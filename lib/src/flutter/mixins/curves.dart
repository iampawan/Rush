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

/// A mixin that provides common curves for the Rush animation library.
mixin RushCurvesMixin<T> {
  late T _child;

  @protected

  /// The curve used for the Rush animation.
  ///
  /// If set, this curve will be used for the Rush animation.
  /// If not set, the default curve will be used.
  Curve? rushCurve;

  @protected
  set setChildForCurve(T child) {
    _child = child;
  }

  /// The bounce-in curve.
  T get bounceIn => _addCurve(curve: Curves.bounceIn);

  /// The bounce-in-out curve.
  T get bounceInOut => _addCurve(curve: Curves.bounceInOut);

  /// The bounce-out curve.
  T get bounceOut => _addCurve(curve: Curves.bounceOut);

  /// The decelerate curve.
  T get decelerate => _addCurve(curve: Curves.decelerate);

  /// The ease curve.
  T get ease => _addCurve(curve: Curves.ease);

  /// The ease-in curve.
  T get easeIn => _addCurve(curve: Curves.easeIn);

  /// The ease-in-back curve.
  T get easeInBack => _addCurve(curve: Curves.easeInBack);

  /// The ease-in-circ curve.
  T get easeInCirc => _addCurve(curve: Curves.easeInCirc);

  /// The ease-in-cubic curve.
  T get easeInCubic => _addCurve(curve: Curves.easeInCubic);

  /// The ease-in-expo curve.
  T get easeInExpo => _addCurve(curve: Curves.easeInExpo);

  /// The ease-in-out curve.
  T get easeInOut => _addCurve(curve: Curves.easeInOut);

  /// The ease-in-out-back curve.
  T get easeInOutBack => _addCurve(curve: Curves.easeInOutBack);

  /// The ease-in-out-circ curve.
  T get easeInOutCirc => _addCurve(curve: Curves.easeInOutCirc);

  /// The ease-in-out-cubic curve.
  T get easeInOutCubic => _addCurve(curve: Curves.easeInOutCubic);

  /// The ease-in-out-expo curve.
  T get easeInOutExpo => _addCurve(curve: Curves.easeInOutExpo);

  /// The ease-in-out-quad curve.
  T get easeInOutQuad => _addCurve(curve: Curves.easeInOutQuad);

  /// The ease-in-out-quart curve.
  T get easeInOutQuart => _addCurve(curve: Curves.easeInOutQuart);

  /// The ease-in-out-quint curve.
  T get easeInOutQuint => _addCurve(curve: Curves.easeInOutQuint);

  /// The ease-in-out-sine curve.
  T get easeInOutSine => _addCurve(curve: Curves.easeInOutSine);

  /// The ease-in-quad curve.
  T get easeInQuad => _addCurve(curve: Curves.easeInQuad);

  /// The ease-in-quart curve.
  T get easeInQuart => _addCurve(curve: Curves.easeInQuart);

  /// The ease-in-quint curve.
  T get easeInQuint => _addCurve(curve: Curves.easeInQuint);

  /// The ease-in-sine curve.
  T get easeInSine => _addCurve(curve: Curves.easeInSine);

  /// The ease-in-to-linear curve.
  T get easeInToLinear => _addCurve(curve: Curves.easeInToLinear);

  /// The ease-out curve.
  T get easeOut => _addCurve(curve: Curves.easeOut);

  /// The ease-out-back curve.
  T get easeOutBack => _addCurve(curve: Curves.easeOutBack);

  /// The ease-out-circ curve.
  T get easeOutCirc => _addCurve(curve: Curves.easeOutCirc);

  /// The ease-out-cubic curve.
  T get easeOutCubic => _addCurve(curve: Curves.easeOutCubic);

  /// The ease-out-expo curve.
  T get easeOutExpo => _addCurve(curve: Curves.easeOutExpo);

  /// The ease-out-quad curve.
  T get easeOutQuad => _addCurve(curve: Curves.easeOutQuad);

  /// The ease-out-quart curve.
  T get easeOutQuart => _addCurve(curve: Curves.easeOutQuart);

  /// The ease-out-quint curve.
  T get easeOutQuint => _addCurve(curve: Curves.easeOutQuint);

  /// The ease-out-sine curve.
  T get easeOutSine => _addCurve(curve: Curves.easeOutSine);

  /// The elastic-in curve.
  T get elasticIn => _addCurve(curve: Curves.elasticIn);

  /// The elastic-in-out curve.
  T get elasticInOut => _addCurve(curve: Curves.elasticInOut);

  /// The elastic-out curve.
  T get elasticOut => _addCurve(curve: Curves.elasticOut);

  /// The fast-linear-to-slow-ease-in curve.
  T get fastLinearToSlowEaseIn =>
      _addCurve(curve: Curves.fastLinearToSlowEaseIn);

  /// The fast-out-slow-in curve.
  T get fastOutSlowIn => _addCurve(curve: Curves.fastOutSlowIn);

  /// The linear curve.
  T get linear => _addCurve(curve: Curves.linear);

  /// The linear-to-ease-out curve.
  T get linearToEaseOut => _addCurve(curve: Curves.linearToEaseOut);

  /// The slow-middle curve.
  T get slowMiddle => _addCurve(curve: Curves.slowMiddle);
  T _addCurve({required Curve curve}) {
    rushCurve = curve;
    return _child;
  }
}
