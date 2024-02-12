import 'package:flutter/material.dart';

/// A mixin that provides rounding functionality.
///
/// This mixin can be used with any class to add rounding capabilities.
/// It provides methods and properties for rounding numbers.
mixin RushRoundMixin<T> {
  late T _childToRound;

  /// A mixin that provides a rounded value.
  double? roundedValue;

  @protected
  set setChildToRound(T child) {
    _childToRound = child;
  }

  /// The radius geometry for the child.
  @protected
  BorderRadiusGeometry? radiusGeometry;

  /// Returns the child with no rounding.
  T get zeroRounded {
    roundedValue = 0.0;
    return _childToRound;
  }

  /// Returns the child with small rounding.
  T get smRounded {
    roundedValue = 7.5;
    return _childToRound;
  }

  /// Returns the child with default rounding.
  T get rounded {
    roundedValue = 15.0;
    return _childToRound;
  }

  /// Returns the child with large rounding.
  T get lgRounded {
    roundedValue = 30.0;
    return _childToRound;
  }

  /// Returns the child with custom rounding based on the provided [geometry].
  T customRounded(BorderRadiusGeometry geometry) {
    roundedValue = 0.0;
    radiusGeometry = geometry;
    return _childToRound;
  }

  /// Returns the child with top-left rounding.
  T topLeftRounded({double? value}) {
    roundedValue = value ?? 15.0;
    radiusGeometry = BorderRadius.only(topLeft: Radius.circular(roundedValue!));
    return _childToRound;
  }

  /// Returns the child with top-right rounding.
  T topRightRounded({double? value}) {
    roundedValue = value ?? 15.0;
    radiusGeometry =
        BorderRadius.only(topRight: Radius.circular(roundedValue!));
    return _childToRound;
  }

  /// Returns the child with bottom-left rounding.
  T bottomLeftRounded({double? value}) {
    roundedValue = value ?? 15.0;
    radiusGeometry =
        BorderRadius.only(bottomLeft: Radius.circular(roundedValue!));
    return _childToRound;
  }

  /// Returns the child with bottom-right rounding.
  T bottomRightRounded({double? value}) {
    roundedValue = value ?? 15.0;
    radiusGeometry =
        BorderRadius.only(bottomRight: Radius.circular(roundedValue!));
    return _childToRound;
  }

  /// Returns the child with left rounding.
  T leftRounded({double? value}) {
    roundedValue = value ?? 15.0;
    radiusGeometry =
        BorderRadius.horizontal(left: Radius.circular(roundedValue!));
    return _childToRound;
  }

  /// Returns the child with right rounding.
  T rightRounded({double? value}) {
    roundedValue = value ?? 15.0;
    radiusGeometry =
        BorderRadius.horizontal(right: Radius.circular(roundedValue!));
    return _childToRound;
  }

  /// Returns the child with top rounding.
  T topRounded({double? value}) {
    roundedValue = value ?? 15.0;
    radiusGeometry = BorderRadius.vertical(top: Radius.circular(roundedValue!));
    return _childToRound;
  }

  /// Returns the child with bottom rounding.
  T bottomRounded({double? value}) {
    roundedValue = value ?? 15.0;
    radiusGeometry =
        BorderRadius.vertical(bottom: Radius.circular(roundedValue!));
    return _childToRound;
  }

  /// Returns the child with custom rounding based on the provided [value].
  T withRounded({double value = 15.0}) {
    roundedValue = value;
    return _childToRound;
  }
}
