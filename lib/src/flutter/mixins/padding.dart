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
import 'package:rush/rush.dart';

/// Provides padding functionality for a widget.
mixin RushPaddingMixin<T> {
  late T _childToPad;

  /// Provides [Padding]
  @protected
  EdgeInsetsGeometry? rushPadding;

  /// Sets the child to be padded.
  @protected
  set childToPad(T child) {
    _childToPad = child;
  }

  /// Adds no padding to the child.
  T get p0 => _padIt(child: _childToPad, padding: Rush.e0);

  /// Adds a small amount of padding to the child.
  T get p1 => _padIt(child: _childToPad, padding: Rush.e1);

  /// Adds a medium amount of padding to the child.
  T get p3 => _padIt(child: _childToPad, padding: Rush.e2);

  /// Adds a large amount of padding to the child.
  T get p4 => _padIt(child: _childToPad, padding: Rush.e4);

  /// Adds a larger amount of padding to the child.
  T get p8 => _padIt(child: _childToPad, padding: Rush.e8);

  /// Adds an even larger amount of padding to the child.
  T get p12 => _padIt(child: _childToPad, padding: Rush.e12);

  /// Adds a very large amount of padding to the child.
  T get p16 => _padIt(child: _childToPad, padding: Rush.e16);

  /// Adds an extra large amount of padding to the child.
  T get p20 => _padIt(child: _childToPad, padding: Rush.e20);

  /// Adds a huge amount of padding to the child.
  T get p24 => _padIt(child: _childToPad, padding: Rush.e24);

  /// Adds a massive amount of padding to the child.
  T get p32 => _padIt(child: _childToPad, padding: Rush.e32);

  /// Adds an enormous amount of padding to the child.
  T get p48 => _padIt(child: _childToPad, padding: Rush.e48);

  /// Adds a gigantic amount of padding to the child.
  T get p64 => _padIt(child: _childToPad, padding: Rush.e64);

  /// Adds no horizontal padding to the child.
  T get px0 => _padIt(child: _childToPad, padding: Rush.ex0);

  /// Adds a small amount of horizontal padding to the child.
  T get px1 => _padIt(child: _childToPad, padding: Rush.ex1);

  /// Adds a medium amount of horizontal padding to the child.
  T get px3 => _padIt(child: _childToPad, padding: Rush.ex2);

  /// Adds a large amount of horizontal padding to the child.
  T get px4 => _padIt(child: _childToPad, padding: Rush.ex4);

  /// Adds a larger amount of horizontal padding to the child.
  T get px8 => _padIt(child: _childToPad, padding: Rush.ex8);

  /// Adds an even larger amount of horizontal padding to the child.
  T get px12 => _padIt(child: _childToPad, padding: Rush.ex12);

  /// Adds a very large amount of horizontal padding to the child.
  T get px16 => _padIt(child: _childToPad, padding: Rush.ex16);

  /// Adds an extra large amount of horizontal padding to the child.
  T get px20 => _padIt(child: _childToPad, padding: Rush.ex20);

  /// Adds a huge amount of horizontal padding to the child.
  T get px24 => _padIt(child: _childToPad, padding: Rush.ex24);

  /// Adds a massive amount of horizontal padding to the child.
  T get px32 => _padIt(child: _childToPad, padding: Rush.ex32);

  /// Adds an enormous amount of horizontal padding to the child.
  T get px48 => _padIt(child: _childToPad, padding: Rush.ex48);

  /// Adds a gigantic amount of horizontal padding to the child.
  T get px64 => _padIt(child: _childToPad, padding: Rush.ex64);

  /// Adds no vertical padding to the child.
  T get py0 => _padIt(child: _childToPad, padding: Rush.ey0);

  /// Adds a small amount of vertical padding to the child.
  T get py1 => _padIt(child: _childToPad, padding: Rush.ey1);

  /// Adds a medium amount of vertical padding to the child.
  T get py3 => _padIt(child: _childToPad, padding: Rush.ey2);

  /// Adds a large amount of vertical padding to the child.
  T get py4 => _padIt(child: _childToPad, padding: Rush.ey4);

  /// Adds a larger amount of vertical padding to the child.
  T get py8 => _padIt(child: _childToPad, padding: Rush.ey8);

  /// Adds an even larger amount of vertical padding to the child.
  T get py12 => _padIt(child: _childToPad, padding: Rush.ey12);

  /// Adds a very large amount of vertical padding to the child.
  T get py16 => _padIt(child: _childToPad, padding: Rush.ey16);

  /// Adds an extra large amount of vertical padding to the child.
  T get py20 => _padIt(child: _childToPad, padding: Rush.ey20);

  /// Adds a huge amount of vertical padding to the child.
  T get py24 => _padIt(child: _childToPad, padding: Rush.ey24);

  /// Adds a massive amount of vertical padding to the child.
  T get py32 => _padIt(child: _childToPad, padding: Rush.ey32);

  /// Adds an enormous amount of vertical padding to the child.
  T get py48 => _padIt(child: _childToPad, padding: Rush.ey48);

  /// Adds a gigantic amount of vertical padding to the child.
  T get py64 => _padIt(child: _childToPad, padding: Rush.ey64);

  T _padIt({required EdgeInsetsGeometry padding, required T child}) {
    rushPadding = padding;
    return child;
  }
}
