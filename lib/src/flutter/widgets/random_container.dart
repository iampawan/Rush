import 'dart:math';

import 'package:flutter/material.dart';

mixin _RandomColor {
  static final Random _random = Random();

  /// Returns a random color.
  static Color next() {
    return Color(0xFF000000 + _random.nextInt(0x00FFFFFF));
  }
}

/// A container widget that takes up a given [width] and [height] 
/// and paints itself with a random color.
///
/// Example:
/// ```dart
/// RushRandomContainer(
///   width: 200,
///   height: 200,
///   child: Text('Hello, World!'),
/// )
/// ```
class RushRandomContainer extends StatefulWidget {
  /// Creates a RushRandom widget.
  const RushRandomContainer({
    super.key,
    this.width,
    this.height,
    this.child,
    this.changeOnRedraw = true,
  });

  /// The width of the container.
  final double? width;

  /// The height of the container.
  final double? height;

  /// The child widget to display.
  final Widget? child;

  /// Whether to change the color on redraw.
  final bool changeOnRedraw;

  @override
  RushRandomState createState() => RushRandomState();
}

/// The state for the RushRandom widget.
class RushRandomState extends State<RushRandomContainer> {
  Color? _randomColor;

  @override
  void initState() {
    super.initState();
    _randomColor = _RandomColor.next();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      color: widget.changeOnRedraw == true ? _RandomColor.next() : _randomColor,
      child: widget.child,
    );
  }
}
