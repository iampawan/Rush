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
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rush/rush.dart';
import 'package:rush/src/flutter/builder.dart';
import 'package:rush/src/flutter/mixins/alignment.dart';
import 'package:rush/src/flutter/mixins/colors.dart';
import 'package:rush/src/flutter/mixins/gradient.dart';
import 'package:rush/src/flutter/mixins/neu.dart';
import 'package:rush/src/flutter/mixins/padding.dart';
import 'package:rush/src/flutter/mixins/render.dart';
import 'package:rush/src/flutter/mixins/rounding.dart';
import 'package:rush/src/flutter/mixins/shadow.dart';

/// A builder class for creating containers in Rush.
///
/// This class extends the [RushWidgetBuilder] class and is used to build
/// containers in the Rush framework. Containers are used to hold and arrange
/// other widgets in a specific layout.
@protected
class RushContainerBuilder extends RushWidgetBuilder<Widget>
    with
        RushAlignmentMixin<RushContainerBuilder>,
        RushGradientMixin<RushContainerBuilder>,
        RushColorMixin<RushContainerBuilder>,
        RushPaddingMixin<RushContainerBuilder>,
        RushRoundMixin<RushContainerBuilder>,
        RushShadowMixin<RushContainerBuilder>,
        RushRenderMixin<RushContainerBuilder>,
        RushNeuMixin {
  /// A builder class for creating RushContainer widgets.
  ///
  /// The [RushContainerBuilder] class provides a convenient way to create
  /// [Container] widgets with custom configurations.
  ///
  RushContainerBuilder(this.child) {
    setChildForAlignment = this;
    setChildForShadow = this;
    setChildToRound = this;
    childToColor = this;
    childToPad = this;
    childForRender = this;
    setChildToGradient = this;
  }

  /// The original container widget.
  final Container child;

  bool _isCircleRounded = false;
  List<BoxShadow>? _containerShadow;
  BoxBorder? _border;
  Gradient? _gradient;
  double? _height;
  double? _width;
  Clip? _clip;
  RushNeu? _rushNeu;
  EdgeInsetsGeometry? _margin;
  Matrix4? _transform;

  DecorationImage? _bgImage;

  BoxDecoration? _decoration;
  BoxDecoration? _foregroundDecoration;
  BoxConstraints? _constraints;

  /// Sets the height property of the container.
  ///
  /// Example:
  /// ```
  /// Container().height(100).apply();
  /// ```
  RushContainerBuilder height(double val) => this.._height = val;

  /// Sets the width property of the container.
  ///
  /// Example:
  /// ```
  /// Container().width(100).apply();
  /// ```
  RushContainerBuilder width(double val) => this.._width = val;

  /// Sets the height property of the container in
  /// percentage of the screen size.
  ///
  /// Example:
  /// ```
  /// Container().heightInPercentage(50).apply();
  /// ```
  RushContainerBuilder heightInPercentage(BuildContext context, double val) =>
      this.._height = context.screenHeightInPercentage * val;

  /// Sets the width property of the container in
  /// percentage of the screen size.
  ///
  /// Example:
  /// ```
  /// Container().widthInPercentage(80).apply();
  /// ```
  RushContainerBuilder widthInPercentage(BuildContext context, double val) =>
      this.._width = context.screenWidthInPercentage * val;

  /// Sets the size of the container.
  ///
  /// Example:
  /// ```
  /// Container().size(100, 200).apply();
  /// ```
  RushContainerBuilder size(double width, double height) => this
    .._width = width
    .._height = height;

  /// Sets the size of the container in percentage of the screen size.
  ///
  /// Example:
  /// ```
  /// Container().sizeInPercentage(
  ///   context: context,
  ///   widthInPercentage: 50,
  ///   heightInPercentage: 30,
  /// ).apply();
  /// ```
  RushContainerBuilder sizeInPercentage({
    required BuildContext context,
    required double widthInPercentage,
    required double heightInPercentage,
  }) =>
      this
        .._width = context.screenWidthInPercentage * widthInPercentage
        .._height = context.screenHeightInPercentage * heightInPercentage;

  /// Sets the width and height of the container to create a square.
  ///
  /// Example:
  /// ```
  /// Container().square(100).apply();
  /// ```
  RushContainerBuilder square(double val) => this
    .._width = val
    .._height = val;

  /// Sets the decoration property of the container.
  ///
  /// Example:
  /// ```
  /// Container().decoration(BoxDecoration(color: Colors.red)).apply();
  /// ```
  RushContainerBuilder decoration(BoxDecoration decoration) =>
      this.._decoration = decoration;

  /// Sets the foregroundDecoration property of the container.
  ///
  /// Example:
  /// ```
  /// Container().foregroundDecoration(BoxDecoration(color: Colors.blue))
  /// .apply();
  /// ```
  RushContainerBuilder foregroundDecoration(BoxDecoration decoration) =>
      this.._foregroundDecoration = decoration;

  /// Sets the constraints property of the container.
  ///
  /// Example:
  /// ```
  /// Container().constraints(BoxConstraints(minWidth: 100, minHeight: 100))
  /// .apply();
  /// ```
  RushContainerBuilder constraints(BoxConstraints constraints) =>
      this.._constraints = constraints;

  /// Sets the padding property of the container.
  ///
  /// Example:
  /// ```
  /// Container().padding(Rush.e16).apply();
  /// ```
  RushContainerBuilder padding(EdgeInsetsGeometry val) =>
      this..rushPadding = val;

  /// Sets the margin property of the container.
  ///
  /// Example:
  /// ```
  /// Container().margin(Rush.e16).apply();
  /// ```
  RushContainerBuilder margin(EdgeInsetsGeometry val) => this.._margin = val;

  /// Sets the color property of the container.
  ///
  /// Example:
  /// ```
  /// Container().color(Colors.red).apply();
  /// ```
  RushContainerBuilder color(Color color) => this..rushColor = color;

  /// Sets the color property of the container using a hexadecimal color value.
  ///
  /// Example:
  /// ```
  /// Container().hexColor('#FF0000').apply();
  /// ```
  RushContainerBuilder hexColor(String colorHex) =>
      this..rushColor = Rush.hexToColor(colorHex);

  /// Sets the transform property of the container.
  ///
  /// Example:
  /// ```
  /// Container().transform(Matrix4.translationValues(10, 10, 0)).apply();
  /// ```
  RushContainerBuilder transform(Matrix4 val) => this.._transform = val;

  /// Sets the clip property of the container.
  ///
  /// Example:
  /// ```
  /// Container().clip(Clip.antiAlias).apply();
  /// ```
  RushContainerBuilder clip(Clip clip) => this.._clip = clip;

  /// Sets the container to have a circular shape.
  ///
  /// Example:
  /// ```
  /// Container().asCircle.apply();
  /// ```
  RushContainerBuilder get asCircle => this.._isCircleRounded = true;

  /// Sets the shadow property of the container.
  ///
  /// Example:
  /// ```
  /// Container().withShadow([
  ///   BoxShadow(
  ///     color: Colors.black,
  ///     offset: Offset(2, 2),
  ///     blurRadius: 5,
  ///   ),
  /// ]).apply();
  /// ```
  RushContainerBuilder withShadow(List<BoxShadow> shadows) {
    _containerShadow = shadows;
    return this;
  }

  /// Sets the shadow outline property of the container.
  ///
  /// Example:
  /// ```
  /// Container().shadowOutline(outlineColor: Colors.blue).apply();
  /// ```
  RushContainerBuilder shadowOutline({Color? outlineColor}) {
    _containerShadow = [
      BoxShadow(
        color: outlineColor?.withOpacity(0.5) ??
            const Color.fromRGBO(66, 153, 225, 0.5),
        spreadRadius: 3,
      ),
    ];

    return this;
  }

  /// Sets the border property of the container.
  ///
  /// Example:
  /// ```
  /// Container().border(
  ///   color: Colors.red,
  ///   width: 2.0,
  ///   style: BorderStyle.solid,
  /// ).apply();
  /// ```
  RushContainerBuilder border({
    Color color = Colors.black,
    double width = 1.0,
    BorderStyle style = BorderStyle.solid,
  }) {
    _border = Border.all(color: color, width: width, style: style);
    return this;
  }

  /// Sets a linear gradient for the container.
  ///
  /// Example:
  /// ```
  /// Container().linearGradient(
  ///   [Colors.red, Colors.blue],
  ///   begin: Alignment.centerLeft,
  ///   end: Alignment.centerRight,
  ///   stops: [0.0, 1.0],
  ///   tileMode: TileMode.clamp,
  ///   transform: GradientTransform(),
  /// ).apply();
  /// ```
  RushContainerBuilder linearGradient(
    List<Color> colors, {
    AlignmentGeometry begin = Alignment.centerLeft,
    AlignmentGeometry end = Alignment.centerRight,
    List<double>? stops,
    TileMode tileMode = TileMode.clamp,
    GradientTransform? transform,
  }) =>
      this
        .._gradient = LinearGradient(
          colors: colors,
          begin: begin,
          stops: stops,
          end: end,
          tileMode: tileMode,
          transform: transform,
        );

  /// Sets a radial gradient for the container.
  ///
  /// Example:
  /// ```
  /// Container().radialGradient(
  ///   [Colors.red, Colors.blue],
  ///   center: Alignment.center,
  ///   radius: 0.5,
  ///   stops: [0.0, 1.0],
  ///   tileMode: TileMode.clamp,
  ///   focal: Alignment.center,
  ///   focalRadius: 0.0,
  ///   transform: GradientTransform(),
  /// ).apply();
  /// ```
  RushContainerBuilder radialGradient(
    List<Color> colors, {
    AlignmentGeometry center = Alignment.center,
    double radius = 0.5,
    List<double>? stops,
    TileMode tileMode = TileMode.clamp,
    AlignmentGeometry? focal,
    double focalRadius = 0.0,
    GradientTransform? transform,
  }) =>
      this
        .._gradient = RadialGradient(
          colors: colors,
          center: center,
          radius: radius,
          focalRadius: focalRadius,
          stops: stops,
          focal: focal,
          tileMode: tileMode,
          transform: transform,
        );

  /// Sets a sweep gradient for the container.
  ///
  /// Example:
  /// ```
  /// Container().sweepGradient(
  ///   [Colors.red, Colors.blue],
  ///   center: Alignment.center,
  ///   startAngle: 0.0,
  ///   endAngle: pi * 2,
  ///   stops: [0.0, 1.0],
  ///   tileMode: TileMode.clamp,
  ///   transform: GradientTransform(),
  /// ).apply();
  /// ```
  RushContainerBuilder sweepGradient(
    List<Color> colors, {
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = pi * 2,
    List<double>? stops,
    TileMode tileMode = TileMode.clamp,
    GradientTransform? transform,
  }) =>
      this
        .._gradient = SweepGradient(
          colors: colors,
          center: center,
          endAngle: endAngle,
          startAngle: startAngle,
          stops: stops,
          tileMode: tileMode,
          transform: transform,
        );

  /// Sets a custom gradient for the container.
  ///
  /// Example:
  /// ```
  /// Container().gradient(
  ///   LinearGradient(
  ///     colors: [Colors.red, Colors.blue],
  ///     begin: Alignment.centerLeft,
  ///     end: Alignment.centerRight,
  ///   ),
  /// ).apply();
  /// ```
  RushContainerBuilder gradient(Gradient gradient) =>
      this.._gradient = gradient;

  /// Sets a background image for the container.
  ///
  /// Example:
  /// ```
  /// Container().backgroundImage(
  ///   DecorationImage(
  ///     image: AssetImage('assets/image.png'),
  ///     fit: BoxFit.cover,
  ///   ),
  /// ).apply();
  /// ```
  RushContainerBuilder backgroundImage(DecorationImage image) =>
      this.._bgImage = image;

  /// Sets the container to have a neumorphic style.
  ///
  /// Example:
  /// ```
  /// Container().neumorphic(
  ///   color: Colors.grey,
  ///   curve: RushCurve.concave,
  ///   elevation: 12.0,
  /// ).apply();
  /// ```
  RushContainerBuilder neumorphic({
    Color? color,
    RushCurve curve = RushCurve.concave,
    double elevation = 12.0,
  }) =>
      this
        .._rushNeu = neuDecoration(
          (color ?? rushColor)!,
          curve,
          elevation,
        );

  @override
  Widget apply() {
    if (!willRender) {
      return const SizedBox.shrink();
    }

    return Container(
      key: child.key,
      height: _height,
      constraints: _constraints ?? child.constraints,
      clipBehavior: _clip ?? child.clipBehavior,
      width: _width,
      padding: rushPadding ?? child.padding,
      margin: _margin ?? child.margin,
      alignment: rushAlignment ?? child.alignment,
      transform: _transform ?? child.transform,
      foregroundDecoration: _foregroundDecoration ?? child.foregroundDecoration,
      transformAlignment: child.transformAlignment,
      decoration: _rushNeu != null
          ? BoxDecoration(
              borderRadius: _isCircleRounded || (roundedValue == null)
                  ? null
                  : (radiusGeometry ?? BorderRadius.circular(roundedValue!)),
              shape: _isCircleRounded ? BoxShape.circle : BoxShape.rectangle,
              boxShadow: _rushNeu!.shadows,
              border: _border,
              gradient: rushGradient ?? _rushNeu!.gradient,
              image: _bgImage,
            )
          : _decoration ??
              BoxDecoration(
                color: rushColor,
                borderRadius: _isCircleRounded || (roundedValue == null)
                    ? null
                    : (radiusGeometry ?? BorderRadius.circular(roundedValue!)),
                shape: _isCircleRounded ? BoxShape.circle : BoxShape.rectangle,
                boxShadow: rushShadow ?? _containerShadow ?? [],
                border: _border,
                gradient: rushGradient ?? _gradient,
                image: _bgImage,
              ),
      child: child,
    );
  }
}

/// Extension on [Widget] to provide additional functionality for containers.
extension VxContainerWidgetExtension on Container {
  ///
  /// Extension method to directly access material [RushContainerBuilder]
  /// with any widget without wrapping or with dot operator.
  ///
  RushContainerBuilder get rush => RushContainerBuilder(this);
}
