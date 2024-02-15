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
import 'package:rush/src/flutter/mixins/shadow.dart';

/// A widget that creates a circular shape.
/// Example:
/// ```dart
/// RushCircle( backgroundColor: Colors.red, radius: 50.0,
/// child: Text('Rush Circle'),)
/// ```
// ignore: must_be_immutable
class RushCircle extends StatelessWidget with RushShadowMixin<RushCircle> {
  /// Creates a circular widget with shadow effects.
  ///
  /// The [child] parameter is the widget below this widget in the tree.
  ///
  /// The [backgroundColor] parameter is the color with
  /// which to fill the circle.
  ///
  /// The [radius] parameter is the size of the circle,
  /// expressed as the radius (half the diameter).
  ///
  /// The [border] parameter provides stroke for the circle.
  ///
  /// The [customDecoration] parameter is used to
  /// fully provide custom decoration.
  ///
  /// The [gradient] parameter is used to provide a gradient for the circle.
  ///
  /// The [backgroundImage] parameter is used to
  /// provide a background image for the circle.
  ///
  /// The [blendMode] parameter is used to provide a blend mode for the circle.
  ///
  /// The [shadows] parameter is used to give shadow effects to the circle.

  RushCircle({
    super.key,
    this.child,
    this.backgroundColor,
    this.radius,
    this.border,
    this.customDecoration,
    this.gradient,
    this.backgroundImage,
    this.blendMode,
    this.shadows,
  }) {
    setChildForShadow = this;
  }

  /// The widget below this widget in the tree.

  final Widget? child;

  /// The color with which to fill the circle. Changing the background
  /// color will cause the avatar to animate to the new color.
  ///
  /// If a [backgroundColor] is not specified, the theme's
  /// [ThemeData.primaryColorLight] is used with dark foreground colors, and
  /// [ThemeData.primaryColorDark] with light foreground colors.
  final Color? backgroundColor;

  /// The size of the circle, expressed as the radius (half the diameter).
  ///

  /// Changes to the [radius] are animated (including changing from an explicit
  /// [radius] to a minRadius/maxRadius pair or vice versa).
  final double? radius;

  /// Border to provide stroke.
  final BoxBorder? border;

  /// To fully provide custom decoration
  final BoxDecoration? customDecoration;

  /// To provide gradient
  final Gradient? gradient;

  /// To provide background image
  final DecorationImage? backgroundImage;

  /// To provide blend mode
  final BlendMode? blendMode;

  /// To give shadow effect
  final List<BoxShadow>? shadows;

  @override
  Widget build(BuildContext context) {
    // assert(debugCheckHasMediaQuery(context));
    final theme = Theme.of(context);
    var effectiveBackgroundColor = backgroundColor;
    if (effectiveBackgroundColor == null) {
      switch (theme.brightness) {
        case Brightness.dark:
          effectiveBackgroundColor = theme.primaryColorLight;
        case Brightness.light:
          effectiveBackgroundColor = theme.primaryColorDark;
      }
    }

    return AnimatedContainer(
      height: radius ?? MediaQuery.sizeOf(context).shortestSide / 2,
      width: radius ?? MediaQuery.sizeOf(context).shortestSide / 2,
      duration: kThemeChangeDuration,
      decoration: customDecoration ??
          BoxDecoration(
            border: border,
            color: effectiveBackgroundColor,
            shape: BoxShape.circle,
            boxShadow: rushShadow ?? shadows ?? kElevationToShadow[0],
            gradient: gradient,
            image: backgroundImage,
            backgroundBlendMode: blendMode,
          ),
      child: child,
    );
  }
}

/// A widget that creates a capsule shape.
/// Example:
/// ```dart
/// RushCapsule( backgroundColor: Colors.red, width: 100.0, height: 50.0,
/// child: Text('Rush Capsule'),)
/// ```

// ignore: must_be_immutable
class RushCapsule extends StatelessWidget with RushShadowMixin<RushCapsule> {
  /// Creates a RushCapsule widget.
  ///
  /// The [child] parameter is the widget below this widget in the tree.
  ///
  /// The [backgroundColor] parameter is the color
  /// with which to fill the capsule.
  ///
  /// The [width] parameter is the width of the capsule.
  ///
  /// The [height] parameter is the height of the capsule.
  ///
  /// The [border] parameter is the border to provide stroke.
  ///
  /// The [customDecoration] parameter is used to
  /// fully provide custom decoration.
  ///
  /// The [gradient] parameter is used to provide a gradient.
  ///
  /// The [backgroundImage] parameter is used to provide a background image.
  ///
  /// The [blendMode] parameter is used to provide a blend mode.
  ///
  /// The [shadows] parameter is used to give a shadow effect.
  RushCapsule({
    super.key,
    this.child,
    this.backgroundColor,
    this.width,
    this.height,
    this.border,
    this.customDecoration,
    this.gradient,
    this.backgroundImage,
    this.blendMode,
    this.shadows,
  }) {
    setChildForShadow = this;
  }

  /// The widget below this widget in the tree.
  final Widget? child;

  /// The color with which to fill the circle.
  ///
  /// If a [backgroundColor] is not specified, the theme's
  /// [ThemeData.primaryColorLight] is used with dark foreground colors, and
  /// [ThemeData.primaryColorDark] with light foreground colors.
  final Color? backgroundColor;

  /// The width of the capsule.
  final double? width;

  /// The height of the capsule.
  final double? height;

  /// Border to provide stroke.
  final BoxBorder? border;

  /// To fully provide custom decoration
  final BoxDecoration? customDecoration;

  /// To provide gradient
  final Gradient? gradient;

  /// To provide background image
  final DecorationImage? backgroundImage;

  /// To provide blend mode
  final BlendMode? blendMode;

  /// To provide blend mode
  final List<BoxShadow>? shadows;

  @override
  Widget build(BuildContext context) {
    // assert(debugCheckHasMediaQuery(context));
    final theme = Theme.of(context);
    var effectiveBackgroundColor = backgroundColor;
    if (effectiveBackgroundColor == null) {
      switch (theme.brightness) {
        case Brightness.dark:
          effectiveBackgroundColor = theme.primaryColorLight;
        case Brightness.light:
          effectiveBackgroundColor = theme.primaryColorDark;
      }
    }

    return AnimatedContainer(
      height: height ?? MediaQuery.sizeOf(context).shortestSide / 4,
      width: width ?? MediaQuery.sizeOf(context).shortestSide,
      duration: kThemeChangeDuration,
      decoration: customDecoration ??
          BoxDecoration(
            border: border,
            borderRadius: BorderRadius.circular(
              MediaQuery.sizeOf(context).shortestSide / 2,
            ),
            color: effectiveBackgroundColor,
            gradient: gradient,
            image: backgroundImage,
            backgroundBlendMode: blendMode,
            boxShadow: rushShadow ?? shadows ?? kElevationToShadow[0],
          ),
      child: child,
    );
  }
}

/// Represents an ellipse shape widget with custom decoration options.
///
/// Example usage:
/// ```dart
/// RushEllipse(
///   child: Text('Rush Ellipse'),
///   backgroundColor: Colors.red,
///   width: 200,
///   height: 150,
///   border: Border.all(color: Colors.black, width: 2),
/// )
/// ```
// ignore: must_be_immutable
class RushEllipse extends StatelessWidget with RushShadowMixin<RushEllipse> {
  /// Creates a ellipse that represents a shape.
  RushEllipse({
    super.key,
    this.child,
    this.backgroundColor,
    this.width,
    this.height,
    this.border,
    this.customDecoration,
    this.gradient,
    this.backgroundImage,
    this.blendMode,
    this.shadows,
  }) {
    setChildForShadow = this;
  }

  /// The widget below this widget in the tree.
  final Widget? child;

  /// The color with which to fill the ellipse.
  ///
  /// If a [backgroundColor] is not specified, the theme's
  /// [ThemeData.primaryColorLight] is used with dark foreground colors, and
  /// [ThemeData.primaryColorDark] with light foreground colors.
  final Color? backgroundColor;

  /// The width of the ellipse.
  final double? width;

  /// The height of the ellipse.
  final double? height;

  /// Border to provide stroke.
  final BoxBorder? border;

  /// To fully provide custom decoration
  final BoxDecoration? customDecoration;

  /// To provide gradient
  final Gradient? gradient;

  /// To provide background image
  final DecorationImage? backgroundImage;

  /// To provide blend mode
  final BlendMode? blendMode;

  /// To provide blend mode
  final List<BoxShadow>? shadows;

  @override
  Widget build(BuildContext context) {
    final width0 = width ?? MediaQuery.sizeOf(context).shortestSide;
    final height0 = height ?? MediaQuery.sizeOf(context).shortestSide / 4;
    // assert(debugCheckHasMediaQuery(context));
    final theme = Theme.of(context);
    var effectiveBackgroundColor = backgroundColor;
    if (effectiveBackgroundColor == null) {
      switch (theme.brightness) {
        case Brightness.dark:
          effectiveBackgroundColor = theme.primaryColorLight;
        case Brightness.light:
          effectiveBackgroundColor = theme.primaryColorDark;
      }
    }

    return AnimatedContainer(
      height: height0,
      width: width0,
      duration: kThemeChangeDuration,
      decoration: customDecoration ??
          BoxDecoration(
            border: border,
            borderRadius: BorderRadius.all(Radius.elliptical(width0, height0)),
            color: effectiveBackgroundColor,
            boxShadow: rushShadow ?? shadows ?? kElevationToShadow[0],
            gradient: gradient,
            image: backgroundImage,
            backgroundBlendMode: blendMode,
          ),
      child: child,
    );
  }
}

/// Represents a bevel that represents a shape.
///
/// Example:
/// ```dart
/// RushBevel(
///   child: Text('Rush Bevel'),
///   backgroundColor: Colors.red,
///   radius: 10,
///   width: 200,
///   height: 200,
///   borderSide: BorderSide(color: Colors.black, width: 2),
///   gradient: LinearGradient(
///     colors: [Colors.red, Colors.blue],
///   ),
///   backgroundImage: AssetImage('assets/images/background.png'),
///   shadows: [
///     BoxShadow(color: Colors.black, blurRadius: 5),
///   ],
/// )
/// ```
// ignore: must_be_immutable
class RushBevel extends StatelessWidget with RushShadowMixin<RushBevel> {
  /// Creates a bevel that represents a shape.
  RushBevel({
    super.key,
    this.child,
    this.backgroundColor,
    this.radius,
    this.width,
    this.height,
    this.borderSide,
    this.gradient,
    this.backgroundImage,
    this.shadows,
  }) {
    setChildForShadow = this;
  }

  /// The widget below this widget in the tree.
  final Widget? child;

  /// The color with which to fill the bevel.
  ///
  /// If a [backgroundColor] is not specified, the theme's
  /// [ThemeData.primaryColorLight] is used with dark foreground colors, and
  /// [ThemeData.primaryColorDark] with light foreground colors.
  final Color? backgroundColor;

  /// The radius of the bevel.
  final double? radius;

  /// The width of the bevel.
  final double? width;

  /// The height of the bevel.
  final double? height;

  /// Border to provide stroke.
  final BorderSide? borderSide;

  /// To provide gradient
  final Gradient? gradient;

  /// To provide background image
  final DecorationImage? backgroundImage;

  /// To provide blend mode
  final List<BoxShadow>? shadows;

  @override
  Widget build(BuildContext context) {
    final width0 = width ?? MediaQuery.sizeOf(context).shortestSide;
    final height0 = height ?? MediaQuery.sizeOf(context).shortestSide / 4;
    // assert(debugCheckHasMediaQuery(context));
    final theme = Theme.of(context);
    var effectiveBackgroundColor = backgroundColor;
    if (effectiveBackgroundColor == null) {
      switch (theme.brightness) {
        case Brightness.dark:
          effectiveBackgroundColor = theme.primaryColorLight;
        case Brightness.light:
          effectiveBackgroundColor = theme.primaryColorDark;
      }
    }

    return AnimatedContainer(
      height: height0,
      width: width0,
      duration: kThemeChangeDuration,
      decoration: ShapeDecoration(
        shape: BeveledRectangleBorder(
          side: borderSide ??
              const BorderSide(width: 0, color: Colors.transparent),
          borderRadius: BorderRadius.circular(
            radius ?? 10.0,
          ),
        ),
        shadows: rushShadow ?? shadows ?? kElevationToShadow[0],
        color: effectiveBackgroundColor,
        gradient: gradient,
        image: backgroundImage,
      ),
      child: child,
    );
  }
}

/// Represents a continuous rectangle shape.
///
/// This widget is used to create a continuous rectangle shape with
/// customizable properties such as background color, radius, width, height,
/// border, gradient, and shadows.
///
/// Example:
/// ```dart
/// RushContinuousRectangle(
///   backgroundColor: Colors.blue,
///   radius: 10.0,
///   width: 200.0,
///   height: 100.0,
///   borderSide: BorderSide(color: Colors.black, width: 2.0),
///   gradient: LinearGradient(
///     colors: [Colors.red, Colors.yellow],
///     begin: Alignment.topLeft,
///     end: Alignment.bottomRight,
///   ),
///   shadows: [
///     BoxShadow(color: Colors.grey, blurRadius: 5.0),
///   ],
///   child: Text('Rush Continuous Rectangle'),
/// )
/// ```
// ignore: must_be_immutable
class RushContinuousRectangle extends StatelessWidget
    with RushShadowMixin<RushContinuousRectangle> {
  /// Creates a continuous rectangle that represents a shape.
  RushContinuousRectangle({
    super.key,
    this.child,
    this.backgroundColor,
    this.radius,
    this.width,
    this.height,
    this.borderSide,
    this.gradient,
    this.backgroundImage,
    this.shadows,
  }) : assert(
          !(backgroundColor != null && gradient != null),
          'Cannot provide both backgroundColor and gradient',
        ) {
    setChildForShadow = this;
  }

  /// The widget below this widget in the tree.
  final Widget? child;

  /// The color with which to fill the rectangle.
  /// If a [backgroundColor] is not specified, the theme's
  /// [ThemeData.primaryColorLight] is used with dark foreground colors, and
  /// [ThemeData.primaryColorDark] with light foreground colors.
  final Color? backgroundColor;

  /// The radius of the rectangle.
  final double? radius;

  /// The width of the rectangle.
  final double? width;

  /// The height of the rectangle.
  final double? height;

  /// Border to provide stroke.
  final BorderSide? borderSide;

  /// To provide gradient
  final Gradient? gradient;

  /// To provide background image
  final DecorationImage? backgroundImage;

  /// To provide blend mode
  final List<BoxShadow>? shadows;

  @override
  Widget build(BuildContext context) {
    final width0 = width ?? MediaQuery.sizeOf(context).shortestSide;
    final height0 = height ?? MediaQuery.sizeOf(context).shortestSide / 4;
    // assert(debugCheckHasMediaQuery(context));
    final theme = Theme.of(context);
    var effectiveBackgroundColor = backgroundColor;
    if (effectiveBackgroundColor == null && gradient == null) {
      switch (theme.brightness) {
        case Brightness.dark:
          effectiveBackgroundColor = theme.primaryColorLight;
        case Brightness.light:
          effectiveBackgroundColor = theme.primaryColorDark;
      }
    }

    return AnimatedContainer(
      height: height0,
      width: width0,
      duration: kThemeChangeDuration,
      decoration: ShapeDecoration(
        shape: ContinuousRectangleBorder(
          side: borderSide ??
              const BorderSide(width: 0, color: Colors.transparent),
          borderRadius: BorderRadius.circular(radius ?? 10.0),
        ),
        shadows: rushShadow ?? shadows ?? kElevationToShadow[0],
        color: effectiveBackgroundColor,
        image: backgroundImage,
        gradient: gradient,
      ),
      child: child,
    );
  }
}

/// Represents a triangle shape.
///
/// Example:
/// ```dart
/// RushTriangle(
///   child: Text('Triangle'),
///   backgroundColor: Colors.blue,
///   width: 100,
///   height: 100,
/// )
/// ```
class RushTriangle extends StatelessWidget {
  /// Creates a triangle that represents a shape.
  const RushTriangle({
    super.key,
    this.child,
    this.backgroundColor,
    this.width,
    this.height,
    this.strokeWidth,
  });

  /// The widget below this widget in the tree.
  final Widget? child;

  /// The color with which to fill the triangle.
  ///
  /// If a [backgroundColor] is not specified, the theme's
  /// [ThemeData.primaryColorLight] is used with dark foreground colors, and
  /// [ThemeData.primaryColorDark] with light foreground colors.
  final Color? backgroundColor;

  /// The width of the triangle.
  final double? width;

  /// The height of the triangle.
  final double? height;

  /// Width to provide stroke.
  final double? strokeWidth;

  @override
  Widget build(BuildContext context) {
    final width0 = width ?? MediaQuery.sizeOf(context).shortestSide / 2;
    final height0 = height ?? MediaQuery.sizeOf(context).shortestSide / 2;
    // assert(debugCheckHasMediaQuery(context));
    final theme = Theme.of(context);
    var effectiveBackgroundColor = backgroundColor;
    if (effectiveBackgroundColor == null) {
      switch (theme.brightness) {
        case Brightness.dark:
          effectiveBackgroundColor = theme.primaryColorLight;
        case Brightness.light:
          effectiveBackgroundColor = theme.primaryColorDark;
      }
    }

    return AnimatedContainer(
      height: height0,
      width: width0,
      duration: kThemeChangeDuration,
      child: CustomPaint(
        size: Size(width0, height0),
        painter: _VxTriangle(
          effectiveBackgroundColor,
          strokeWidth: strokeWidth,
          isStroke: strokeWidth != null,
        ),
        child: child,
      ),
    );
  }
}

/// Represents a ticket shape.
///
/// Example:
/// ```dart
/// RushTicket(
///   child: Text('Ticket'),
///   backgroundColor: Colors.yellow,
///   width: 200,
///   height: 100,
///   isHardEdged: true,
///   isTwoSided: false,
/// )
/// ```
class RushTicket extends StatelessWidget {
  /// Creates a VxTicket that represents a shape.
  const RushTicket({
    super.key,
    this.child,
    this.backgroundColor,
    this.width,
    this.height,
    this.isHardEdged = false,
    this.isTwoSided = false,
  });

  /// The widget below this widget in the tree.
  final Widget? child;

  /// The color with which to fill the rectangle.
  /// If a [backgroundColor] is not specified, the theme's
  /// [ThemeData.primaryColorLight] is used with dark foreground colors, and
  /// [ThemeData.primaryColorDark] with light foreground colors.
  final Color? backgroundColor;

  /// The width of the rectangle.
  final double? width;

  /// The height of the rectangle.
  final double? height;

  /// The ticket type is by default curvish. If isHardEdged is true
  /// then it will be pointed edged.
  final bool? isHardEdged;

  /// Ticket style both sides
  final bool? isTwoSided;

  @override
  Widget build(BuildContext context) {
    final width0 = width ?? MediaQuery.sizeOf(context).shortestSide;
    final height0 = height ?? MediaQuery.sizeOf(context).shortestSide / 4;
    // assert(debugCheckHasMediaQuery(context));
    final theme = Theme.of(context);
    var effectiveBackgroundColor = backgroundColor;
    if (effectiveBackgroundColor == null) {
      switch (theme.brightness) {
        case Brightness.dark:
          effectiveBackgroundColor = theme.primaryColorLight;
        case Brightness.light:
          effectiveBackgroundColor = theme.primaryColorDark;
      }
    }

    return ClipPath(
      clipper:
          _VxTicketClipper(isTwoSide: isTwoSided!, isHardEdge: isHardEdged!),
      child: AnimatedContainer(
        height: height0,
        width: width0,
        duration: kThemeChangeDuration,
        color: effectiveBackgroundColor,
        child: child,
      ),
    );
  }
}

class _VxTriangle extends CustomPainter {
  _VxTriangle(
    this.color, {
    this.strokeWidth = 0.0,
    this.isStroke = false,
  });
  final Color? color;
  final double? strokeWidth;

  final bool isStroke;
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..close();

    final paint = Paint()
      ..style = isStroke ? PaintingStyle.stroke : PaintingStyle.fill
      ..color = color!;
    if (strokeWidth != null) {
      paint.strokeWidth = strokeWidth!;
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant _VxTriangle oldDelegate) {
    return oldDelegate.color != color || oldDelegate.strokeWidth != strokeWidth;
  }
}

class _VxTicketClipper extends CustomClipper<Path> {
  _VxTicketClipper({this.isTwoSide = false, this.isHardEdge = false});
  final bool isTwoSide;
  final bool isHardEdge;
  @override
  Path getClip(Size size) {
    final path = Path()..lineTo(0, size.height);
    var x = 0.0;
    var y = size.height;
    final yControlPoint = size.height * .85;
    final increment = size.width / (isHardEdge ? 20 : 12);
    while (x < size.width) {
      if (isHardEdge) {
        x += increment;
        y = (y == size.height) ? size.height * .88 : size.height;
        path.lineTo(x, y);
      } else {
        path.quadraticBezierTo(
          x + increment / 2,
          yControlPoint,
          x + increment,
          y,
        );
        x += increment;
      }
    }
    path.lineTo(size.width, 0);
    if (isTwoSide && !isHardEdge) {
      while (x > 0) {
        if (isHardEdge) {
          // x -= increment;
          // y = (y == 0) ? size.height * .15 : 0;
          // path.lineTo(x, y);
        } else {
          path.quadraticBezierTo(
            x - increment / 2,
            size.height * .15,
            x - increment,
            0,
          );
          x -= increment;
        }
      }
    }
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<dynamic> oldDelegate) {
    return oldDelegate != this;
  }
}

/// Extension method to directly access Shapes with any widget
/// without wrapping or with dot operator.
extension RushShapesExtension on Widget {
  ///
  /// Extension method to directly access [RushCircle] with any widget
  /// without wrapping or with dot operator.
  ///
  RushCircle rushCircle({
    Key? key,
    Widget? child,
    Color? backgroundColor,
    double? radius,
    BoxBorder? border,
    BoxDecoration? customDecoration,
    DecorationImage? backgroundImage,
    BlendMode? blendMode,
    Gradient? gradient,
    List<BoxShadow>? shadows,
  }) =>
      RushCircle(
        key: key,
        backgroundColor: backgroundColor,
        border: border,
        customDecoration: customDecoration,
        radius: radius,
        backgroundImage: backgroundImage,
        blendMode: blendMode,
        gradient: gradient,
        shadows: shadows,
        child: this,
      );

  ///
  /// Extension method to directly access [RushCapsule] with any widget
  /// without wrapping or with dot operator.
  ///
  RushCapsule rushCapsule({
    Key? key,
    Widget? child,
    Color? backgroundColor,
    double? width,
    double? height,
    BoxBorder? border,
    BoxDecoration? customDecoration,
    DecorationImage? backgroundImage,
    BlendMode? blendMode,
    Gradient? gradient,
    List<BoxShadow>? shadows,
  }) =>
      RushCapsule(
        key: key,
        backgroundColor: backgroundColor,
        border: border,
        customDecoration: customDecoration,
        width: width,
        height: height,
        backgroundImage: backgroundImage,
        blendMode: blendMode,
        gradient: gradient,
        shadows: shadows,
        child: this,
      );

  ///
  /// Extension method to directly access [RushEllipse] with any widget
  /// without wrapping or with dot operator.
  ///
  RushEllipse rushEllipse({
    Key? key,
    Widget? child,
    Color? backgroundColor,
    double? width,
    double? height,
    BoxBorder? border,
    BoxDecoration? customDecoration,
    DecorationImage? backgroundImage,
    BlendMode? blendMode,
    Gradient? gradient,
    List<BoxShadow>? shadows,
  }) =>
      RushEllipse(
        key: key,
        backgroundColor: backgroundColor,
        border: border,
        customDecoration: customDecoration,
        width: width,
        height: height,
        backgroundImage: backgroundImage,
        blendMode: blendMode,
        gradient: gradient,
        shadows: shadows,
        child: this,
      );

  ///
  /// Extension method to directly access [RushBevel] with any widget
  /// without wrapping or with dot operator.
  ///
  RushBevel rushBevel({
    Key? key,
    Widget? child,
    Color? backgroundColor,
    double? radius,
    double? width,
    double? height,
    BorderSide? borderSide,
    DecorationImage? backgroundImage,
    Gradient? gradient,
    List<BoxShadow>? shadows,
  }) =>
      RushBevel(
        key: key,
        backgroundColor: backgroundColor,
        borderSide: borderSide,
        radius: radius,
        width: width,
        height: height,
        backgroundImage: backgroundImage,
        gradient: gradient,
        shadows: shadows,
        child: this,
      );

  ///
  /// Extension method to directly access [RushContinuousRectangle] with any
  /// widget without wrapping or with dot operator.
  ///
  RushContinuousRectangle rushContinuousRectangle({
    Key? key,
    Widget? child,
    Color? backgroundColor,
    double? radius,
    double? width,
    double? height,
    BorderSide? borderSide,
    DecorationImage? backgroundImage,
    Gradient? gradient,
    List<BoxShadow>? shadows,
  }) =>
      RushContinuousRectangle(
        key: key,
        backgroundColor: backgroundColor,
        borderSide: borderSide,
        radius: radius,
        width: width,
        height: height,
        backgroundImage: backgroundImage,
        gradient: gradient,
        shadows: shadows,
        child: this,
      );

  ///
  /// Extension method to directly access [RushTriangle] with any widget
  /// without wrapping or with dot operator.
  ///
  RushTriangle rushTriangle({
    Key? key,
    Widget? child,
    Color? backgroundColor,
    double? width,
    double? height,
    double? strokeWidth,
  }) =>
      RushTriangle(
        key: key,
        backgroundColor: backgroundColor,
        width: width,
        height: height,
        strokeWidth: strokeWidth,
        child: this,
      );

  ///
  /// Extension method to directly access [RushTicket] with any widget
  /// without wrapping or with dot operator.
  ///
  RushTicket rushTicket({
    Key? key,
    Widget? child,
    Color? backgroundColor,
    double? width,
    double? height,
    bool? isHardEdged,
    bool? isTwoSided,
  }) =>
      RushTicket(
        key: key,
        backgroundColor: backgroundColor,
        width: width,
        height: height,
        isHardEdged: isHardEdged,
        isTwoSided: isTwoSided,
        child: this,
      );
}
