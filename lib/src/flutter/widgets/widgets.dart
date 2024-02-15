import 'package:flutter/material.dart';
import 'package:rush/rush.dart';

export 'conditional.dart';
export 'dark_mode.dart';
export 'glass.dart';
export 'hover.dart';
export 'platforms.dart';
export 'random_container.dart';
export 'responsive.dart';
export 'shapes.dart';
export 'stepper.dart';

/// Extension methods for Flutter widgets.
extension RushWidgetsExtension on Widget {
  /// Adds a tooltip to the widget.
  ///
  /// Example:
  /// ```dart
  /// Container().tooltip('This is a tooltip');
  /// ```
  Widget tooltip(
    String message, {
    Key? key,
    Decoration? decoration,
    double? height,
    bool? preferBelow,
    EdgeInsetsGeometry? padding,
    TextStyle? textStyle,
    Duration? waitDuration,
    EdgeInsetsGeometry? margin,
  }) =>
      Tooltip(
        key: key,
        message: message,
        decoration: decoration,
        height: height,
        padding: padding,
        preferBelow: preferBelow,
        textStyle: textStyle,
        waitDuration: waitDuration,
        margin: margin,
        child: this,
      );

  /// Hides the widget based on the visibility flag.
  ///
  /// Example:
  /// ```dart
  /// Container().hide(isVisible: false, maintainSize: false);
  /// ```
  Widget hide({Key? key, bool isVisible = false, bool maintainSize = false}) =>
      Visibility(
        key: key,
        visible: isVisible,
        maintainSize: maintainSize,
        maintainAnimation: maintainSize,
        maintainState: maintainSize,
        child: this,
      );

  /// Extension for [Expanded]
  ///
  /// Example:
  /// ```dart
  /// Container().expand(flex: 2);
  /// ```
  Expanded expand({Key? key, int flex = 1}) {
    return Expanded(
      key: key,
      flex: flex,
      child: this,
    );
  }

  /// Creates a flexible widget that expands to fill the available space.
  ///
  /// Example:
  /// ```dart
  /// Container().flexible(flex: 2);
  /// ```
  Flexible flexible({Key? key, int flex = 1}) {
    return Flexible(
      key: key,
      flex: flex,
      child: this,
    );
  }

  /// Positions the widget at a specific location.
  ///
  /// Example:
  /// ```dart
  /// Container().positioned(top: 10, left: 20);
  /// ```
  Widget positioned({
    double? top,
    double? bottom,
    double? left,
    double? right,
    double? height,
    double? width,
    bool isFilled = false,
  }) {
    return isFilled
        ? Positioned.fill(
            key: key,
            top: top,
            bottom: bottom,
            left: left,
            right: right,
            child: this,
          )
        : Positioned(
            key: key,
            top: top,
            bottom: bottom,
            left: left,
            right: right,
            height: height,
            width: width,
            child: this,
          );
  }

  /// Sets the background color of the widget.
  ///
  /// Example:
  /// ```dart
  /// Text("Rush").backgroundColor(Colors.blue);
  /// ```
  DecoratedBox backgroundColor(Color? color) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
      ),
      child: this,
    );
  }

  /// Adds a stroke to the widget.
  ///
  /// Example:
  /// ```dart
  /// Text("Rush").stroke(2, Colors.black);
  /// ```
  DecoratedBox stroke(double width, Color color, {bool isCircle = false}) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: color, width: width),
        shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
      ),
      child: this,
    );
  }

  /// Sets the aspect ratio of the widget.
  ///
  /// Example:
  /// ```dart
  /// Container().aspectRatio(16 / 9);
  /// ```
  AspectRatio aspectRatio(double aspectRatio) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: this,
    );
  }

  /// Creates a rounded rectangle clip with the specified radius.
  ///
  /// Example:
  /// ```dart
  /// ClipRRect roundedRectClip = cornerRadius(10);
  /// ```
  ClipRRect cornerRadius(double radius) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: this,
    );
  }

  /// Creates a half clip path with the specified clip behavior.
  ///
  /// Example:
  /// ```dart
  /// ClipPath clip = clipHalf(clipBehavior: Clip.antiAlias);
  /// ```
  ClipPath clipHalf({Clip clipBehavior = Clip.antiAlias}) {
    return ClipPath(
      key: key,
      clipBehavior: clipBehavior,
      clipper: RushHalfClipper(),
      child: this,
    );
  }

  /// Clips the widget in an oval shape.
  ///
  /// Example:
  /// ```dart
  /// Container().clipOval();
  /// ```
  Widget clipOval({
    Clip clipBehavior = Clip.antiAlias,
    CustomClipper<Rect>? clipper,
  }) {
    return ClipOval(
      key: key,
      clipBehavior: clipBehavior,
      clipper: clipper,
      child: this,
    );
  }

  /// Disables the widget.
  ///
  /// Example:
  /// ```dart
  /// Container().disabled();
  /// ```
  Widget disabled({bool isDisabled = true}) {
    return IgnorePointer(
      ignoring: isDisabled,
      child: Opacity(opacity: isDisabled ? 0.3 : 1, child: this),
    );
  }

  /// Applies opacity to the widget.
  ///
  /// Example:
  /// ```dart
  /// Container().opacity(value: 0.5);
  /// ```
  Widget opacity({required double value, Key? key}) => Opacity(
        key: key,
        opacity: value,
        child: this,
      );

  /// Creates a widget wrapped in a Material widget.
  ///
  /// Example:
  /// ```dart
  /// Container().material();
  /// ```
  Widget material({
    Key? key,
    MaterialType type = MaterialType.canvas,
    Duration animationDuration = kThemeAnimationDuration,
    bool borderOnForeground = true,
    BorderRadiusGeometry? borderRadius,
    Clip clipBehavior = Clip.none,
    Color? color,
    double elevation = 0.0,
    Color? shadowColor,
    ShapeBorder? shape,
    TextStyle? textStyle,
    Color? surfaceTintColor,
  }) =>
      Material(
        key: key,
        type: type,
        animationDuration: animationDuration,
        borderOnForeground: borderOnForeground,
        borderRadius: borderRadius,
        clipBehavior: clipBehavior,
        color: color,
        elevation: elevation,
        shadowColor: shadowColor,
        shape: shape,
        textStyle: textStyle,
        surfaceTintColor: surfaceTintColor,
        child: this,
      );

  /// Wraps the widget in a [SafeArea] widget.
  ///
  /// Example:
  /// ```dart
  /// Container().safeArea();
  /// ```
  Widget safeArea({
    Key? key,
    EdgeInsets minimum = EdgeInsets.zero,
    bool maintainBottomViewPadding = false,
    bool top = true,
    bool bottom = true,
    bool left = true,
    bool right = true,
  }) =>
      SafeArea(
        key: key,
        minimum: minimum,
        maintainBottomViewPadding: maintainBottomViewPadding,
        top: top,
        bottom: bottom,
        left: left,
        right: right,
        child: this,
      );

  /// Applies a shader mask to the widget.
  ///
  /// Example:
  /// ```dart
  /// Container().shaderMask(
  ///   gradient: LinearGradient(
  ///     colors: [Colors.red, Colors.blue],
  ///   ),
  /// );
  /// ```
  Widget shaderMask({
    required Gradient gradient,
    Key? key,
    BlendMode blendMode = BlendMode.modulate,
  }) =>
      ShaderMask(
        blendMode: blendMode,
        key: key,
        shaderCallback: (bounds) => gradient.createShader(
          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
        ),
        child: this,
      );
}
