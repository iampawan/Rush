import 'package:flutter/material.dart';

/// Enum representing different types of RushCurve.
///
/// The RushCurve enum defines the different types of curves
/// that can be used in the Rush library.
/// It includes the following options:
/// - concave: Represents a concave curve.
/// - convex: Represents a convex curve.
/// - emboss: Represents an emboss curve.
/// - flat: Represents a flat curve.
enum RushCurve {
  /// Represents the types of Neumorphic effects.
  ///
  /// The available types are:
  /// - `concave`: Represents a concave Neumorphic effect.

  concave,

  /// - `convex`: Represents a convex Neumorphic effect.
  convex,

  /// - `emboss`: Represents an emboss Neumorphic effect.
  emboss,

  /// - `flat`: Represents a flat Neumorphic effect.
  flat,
}

@protected

/// Represents a Neumorphic widget in the Rush library.
/// Neumorphic widgets have a soft, shadowy appearance
/// that gives them a three-dimensional effect.
class RushNeu {
  /// Creates a Neumorphic widget with the specified properties.
  RushNeu(this.shadows, this.gradient);

  /// The list of box shadows applied to the widget.
  final List<BoxShadow> shadows;

  /// The gradient used for the Rush widget.
  final Gradient? gradient;
}
