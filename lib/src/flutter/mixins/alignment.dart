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

/// A mixin that provides alignment functionality for Rush widgets.
mixin RushAlignmentMixin<T> {
  late T _child;

  @protected

  /// The alignment for the Rush widget.
  ///
  /// This property determines how the Rush widget is aligned within
  /// its parent widget.
  /// If set to null, the Rush widget will use the default alignment.
  Alignment? rushAlignment;

  @protected
  set setChildForAlignment(T child) {
    _child = child;
  }

  /// Sets the alignment of the Rush widget to [val].
  ///
  /// Returns the Rush widget with the specified alignment.
  T alignment(Alignment val) {
    rushAlignment = val;
    return _child;
  }

  /// Sets the alignment of the Rush widget to [Alignment.topCenter].
  ///
  /// Returns the Rush widget with the top center alignment.
  T get topCenter => _addAlignment(alignment: Alignment.topCenter);

  /// Sets the alignment of the Rush widget to [Alignment.topLeft].
  ///
  /// Returns the Rush widget with the top left alignment.
  T get topLeft => _addAlignment(alignment: Alignment.topLeft);

  /// Sets the alignment of the Rush widget to [Alignment.topRight].
  ///
  /// Returns the Rush widget with the top right alignment.
  T get topRight => _addAlignment(alignment: Alignment.topRight);

  /// Sets the alignment of the Rush widget to [Alignment.center].
  ///
  /// Returns the Rush widget with the center alignment.
  T get center => _addAlignment(alignment: Alignment.center);

  /// Sets the alignment of the Rush widget to [Alignment.centerLeft].
  ///
  /// Returns the Rush widget with the center left alignment.
  T get centerLeft => _addAlignment(alignment: Alignment.centerLeft);

  /// Sets the alignment of the Rush widget to [Alignment.centerRight].
  ///
  /// Returns the Rush widget with the center right alignment.
  T get centerRight => _addAlignment(alignment: Alignment.centerRight);

  /// Sets the alignment of the Rush widget to [Alignment.bottomCenter].
  ///
  /// Returns the Rush widget with the bottom center alignment.
  T get bottomCenter => _addAlignment(alignment: Alignment.bottomCenter);

  /// Sets the alignment of the Rush widget to [Alignment.bottomLeft].
  ///
  /// Returns the Rush widget with the bottom left alignment.
  T get bottomLeft => _addAlignment(alignment: Alignment.bottomLeft);

  /// Sets the alignment of the Rush widget to [Alignment.bottomRight].
  ///
  /// Returns the Rush widget with the bottom right alignment.
  T get bottomRight => _addAlignment(alignment: Alignment.bottomRight);
  T _addAlignment({required Alignment alignment}) {
    rushAlignment = alignment;
    return _child;
  }
}
