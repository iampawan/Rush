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
import 'package:flutter/rendering.dart';
import 'package:rush/rush.dart';

/// [RushShimmer] widget can be used to provide shimmer effect to any widget.
class RushShimmer extends StatefulWidget {
  /// Constructs an instance of [RushShimmer] with the given parameters.
  const RushShimmer({
    required this.child,
    super.key,
    this.gradient,
    this.duration = const Duration(seconds: 1),
    this.count = 10000,
    this.showAnimation = true,
    this.showGradient = false,
    this.primaryColor = Colors.grey,
    this.secondaryColor,
  });

  /// The child of type [Widget] to display shimmer effect.
  final Widget child;

  /// Controls the speed of the shimmer effect.
  /// The default value is 1 second.
  final Duration duration;

  /// Controls the [child]'s shades of color using Linear gradient.
  /// Child [Widget] only takes gradient color, If [showGradient] is true.
  final Gradient? gradient;

  /// Controls the animation shimmerEffectCount.
  /// The default value is '0', that displays child [Widget]'s
  /// shimmer effect forever.
  final int count;

  /// Controls animation effect, defaults true state that
  /// makes animation active.
  final bool showAnimation;

  /// If true, takes gradient color [gradient] for the [child]'s shimmer effect.
  /// Default set to false.
  final bool showGradient;

  /// Defines the primary color of the [child]'s shimmer effect.
  /// Child [Widget] takes primary color, only if [showGradient] is false.
  /// Default [showGradient] will be false.
  final Color primaryColor;

  /// defines the secondary color of the [child]'s shimmer effect.
  /// Child [Widget] takes secondary color, only if [showGradient] is false.
  /// Default [showGradient] will be false.
  final Color? secondaryColor;

  @override
  RushShimmerState createState() => RushShimmerState();
}

/// The state of [RushShimmer] widget.
class RushShimmerState extends State<RushShimmer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  // ignore: use_late_for_private_fields_and_variables
  int? _count;

  @override
  void initState() {
    super.initState();
    _count = 0;
    _controller = AnimationController(vsync: this, duration: widget.duration)
      ..addStatusListener((AnimationStatus status) {
        if (status != AnimationStatus.completed) {
          return;
        }
        _count = _count! + 1;
        if (widget.count <= 0) {
          _controller.repeat();
        } else if (_count! < widget.count) {
          _controller.forward(from: 0);
        }
      });
    if (widget.showAnimation) {
      _controller.forward();
    }
  }

  @override
  void didUpdateWidget(RushShimmer oldWidget) {
    if (widget.showAnimation) {
      _controller.forward();
    } else {
      _controller.stop();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) => AnimatedBuilder(
        animation: _controller,
        child: widget.child,
        builder: (BuildContext context, Widget? child) => _RushShimmer(
          gradient: widget.showGradient
              ? widget.gradient
              : LinearGradient(
                  begin: Alignment.topLeft,
                  colors: <Color>[
                    widget.primaryColor,
                    widget.primaryColor,
                    widget.secondaryColor ?? Rush.gray200,
                    widget.primaryColor,
                    widget.primaryColor,
                  ],
                  stops: const <double>[
                    0,
                    0.3,
                    0.5,
                    0.7,
                    1,
                  ],
                ),
          controllerValue: _controller.value,
          showShimmerEffect: widget.showAnimation,
          child: child,
        ),
      );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

@immutable
class _RushShimmer extends SingleChildRenderObjectWidget {
  const _RushShimmer({
    super.child,
    this.controllerValue,
    this.gradient,
    this.showShimmerEffect,
  });

  /// value that controls the animation controller
  final double? controllerValue;

  /// Controls the [child]'s shades of color.
  final Gradient? gradient;

  /// Controls animation effect, defaults true state
  /// that makes animation active.
  final bool? showShimmerEffect;

  @override
  _RushShimmerFilter createRenderObject(BuildContext context) =>
      _RushShimmerFilter(
        value: controllerValue,
        gradient: gradient,
        showAnimation: showShimmerEffect,
      );

  @override
  void updateRenderObject(BuildContext context, _RushShimmerFilter shimmer) {
    shimmer
      ..controllerValue = controllerValue
      ..showAnimation = showShimmerEffect;
  }
}

class _RushShimmerFilter extends RenderProxyBox {
  _RushShimmerFilter({this.value, this.gradient, this.showAnimation})
      : gradientPaint = Paint()..blendMode = BlendMode.srcIn;

  /// Constructs an empty [Paint] object with all fields
  /// initialized to their defaults.
  final Paint initialPaint = Paint();

  /// Shader that paints a color gradient.
  final Paint gradientPaint;

  /// Controls the [child]'s shades of color.
  final Gradient? gradient;

  /// Controls animation effect, defaults true state
  /// that makes animation active.
  bool? showAnimation;

  /// value that controls the animation controller.
  double? value;

  /// Construct a rectangle from its left, top, right, and bottom edges.
  Rect? _rect;

  @override
  bool get alwaysNeedsCompositing => child != null;

  double? get controllerValue => value;

  set controllerValue(double? newValue) {
    if (newValue == value) {
      return;
    }
    value = newValue;
    markNeedsPaint();
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (child == null) {
      return;
    }
    assert(needsCompositing, 'Needs compositing is required.');

    context.canvas.saveLayer(offset & child!.size, initialPaint);
    context.paintChild(child!, offset);
    Rect rect;
    double dx;
    double dy;
    final width = child!.size.width;
    final height = child!.size.height;
    dx = _offset(-width, width, value!);
    dy = 0.0;
    rect = Rect.fromLTWH(offset.dx - width, offset.dy, 3 * width, height);

    if (_rect != rect) {
      gradientPaint.shader = gradient!.createShader(rect);
      _rect = rect;
    }
    context.canvas.translate(dx, dy);
    context.canvas.drawRect(rect, gradientPaint);
    context.canvas.restore();
  }

  double _offset(double start, double end, double controllerValue) =>
      start + (end - start) * controllerValue;
}

/// Extension method to directly access [RushShimmer] with any widget
/// without wrapping or with dot operator.
extension RushShimmerExtension on Widget {
  ///
  /// Extension method to directly access [RushShimmer] with any widget
  /// without wrapping or with dot operator.
  ///
  /// show shimmer extension
  Widget shimmer({
    Key? key,
    Gradient? gradient,
    Duration duration = const Duration(seconds: 1),
    int count = 10000,
    bool showAnimation = true,
    bool showGradient = false,
    Color primaryColor = Colors.grey,
    Color? secondaryColor,
  }) =>
      RushShimmer(
        key: key,
        count: count,
        duration: duration,
        gradient: gradient,
        primaryColor: primaryColor,
        secondaryColor: secondaryColor,
        showAnimation: showAnimation,
        showGradient: showGradient,
        child: this,
      );
}
