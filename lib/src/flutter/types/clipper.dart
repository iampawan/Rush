// ignore_for_file: cascade_invocations

import 'package:flutter/widgets.dart';

/// Enum representing the edge positions.
///
/// The possible values are `top`, `right`, `bottom`, and `left`.
enum RushEdge {
  /// The top edge.
  top,

  /// The right edge.
  right,

  /// The bottom edge.
  bottom,

  /// The left edge.
  left,
}

/// Enum representing the type of arc.
///
/// The possible values are `concave` and `convex`.
enum RushArcType {
  /// The arc type that is concave.
  concave,

  /// The arc type that is convex.
  convex,
}

/// A custom clipper that creates an arc-shaped clip.
///
/// Example usage:
/// ```dart
/// RushArcClipper(100, RushEdge.bottom, RushArcType.convex);
/// ```
class RushArcClipper extends CustomClipper<Path> {
  /// Creates a new [RushArcClipper] instance.
  RushArcClipper(this.height, this.edge, this.arcType);

  ///The height of the arc
  final double height;

  ///The edge of the widget which clipped as arc
  final RushEdge edge;

  ///The type of arc which can be [RushArcType.convex] or [RushArcType.concave]
  final RushArcType arcType;

  @override
  Path getClip(Size size) {
    switch (edge) {
      case RushEdge.top:
        return _getTopPath(size);
      case RushEdge.right:
        return _getRightPath(size);
      case RushEdge.bottom:
        return _getBottomPath(size);
      case RushEdge.left:
        return _getLeftPath(size);
    }
  }

  Path _getBottomPath(Size size) {
    final path = Path();
    if (arcType == RushArcType.convex) {
      path.lineTo(0, size.height - height);
      //Adds a quadratic bezier segment that curves from the current point
      //to the given point (x2,y2), using the control point (x1,y1).
      path.quadraticBezierTo(
        size.width / 4,
        size.height,
        size.width / 2,
        size.height,
      );
      path.quadraticBezierTo(
        size.width * 3 / 4,
        size.height,
        size.width,
        size.height - height,
      );

      path.lineTo(size.width, 0);
    } else {
      path.moveTo(0, size.height);
      path.quadraticBezierTo(
        size.width / 4,
        size.height - height,
        size.width / 2,
        size.height - height,
      );
      path.quadraticBezierTo(
        size.width * 3 / 4,
        size.height - height,
        size.width,
        size.height,
      );
      path.lineTo(size.width, 0);
      path.lineTo(0, 0);
    }
    path.close();

    return path;
  }

  Path _getTopPath(Size size) {
    final path = Path();
    if (arcType == RushArcType.convex) {
      path.moveTo(0, height);

      path.quadraticBezierTo(size.width / 4, 0, size.width / 2, 0);
      path.quadraticBezierTo(size.width * 3 / 4, 0, size.width, height);

      path.lineTo(size.width, size.height);
      path.lineTo(0, size.height);
    } else {
      path.quadraticBezierTo(size.width / 4, height, size.width / 2, height);
      path.quadraticBezierTo(size.width * 3 / 4, height, size.width, 0);
      path.lineTo(size.width, size.height);
      path.lineTo(0, size.height);
    }
    path.close();

    return path;
  }

  Path _getLeftPath(Size size) {
    final path = Path();
    if (arcType == RushArcType.convex) {
      path.moveTo(height, 0);

      path.quadraticBezierTo(0, size.height / 4, 0, size.height / 2);
      path.quadraticBezierTo(0, size.height * 3 / 4, height, size.height);

      path.lineTo(size.width, size.height);
      path.lineTo(size.width, 0);
    } else {
      path.quadraticBezierTo(height, size.height / 4, height, size.height / 2);
      path.quadraticBezierTo(height, size.height * 3 / 4, 0, size.height);
      path.lineTo(size.width, size.height);
      path.lineTo(size.width, 0);
    }
    path.close();

    return path;
  }

  Path _getRightPath(Size size) {
    final path = Path();
    if (arcType == RushArcType.convex) {
      path.moveTo(size.width - height, 0);

      path.quadraticBezierTo(
        size.width,
        size.height / 4,
        size.width,
        size.height / 2,
      );
      path.quadraticBezierTo(
        size.width,
        size.height * 3 / 4,
        size.width - height,
        size.height,
      );

      path.lineTo(0, size.height);
      path.lineTo(0, 0);
    } else {
      path.moveTo(size.width, 0);
      path.quadraticBezierTo(
        size.width - height,
        size.height / 4,
        size.width - height,
        size.height / 2,
      );
      path.quadraticBezierTo(
        size.width - height,
        size.height * 3 / 4,
        size.width,
        size.height,
      );
      path.lineTo(0, size.height);
      path.lineTo(0, 0);
    }
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    final oldie = oldClipper as RushArcClipper;
    return height != oldie.height ||
        arcType != oldie.arcType ||
        edge != oldie.edge;
  }
}

/// A widget that clips one of its edges as an arc.
///
/// Example usage:
/// ```dart
/// RushArc(
///   height: 100,
///   child: Container(
///     color: Colors.blue,
///     height: 200,
///   ),
/// )
/// ```
class RushArc extends StatelessWidget {
  /// Creates a new [RushArc] instance.
  const RushArc({
    required this.height,
    required this.child,
    super.key,
    this.edge = RushEdge.bottom,
    this.arcType = RushArcType.convex,
    this.clipShadows = const [],
  });

  /// The widget which one of [edge]s is going to be clippddddded as arc
  final Widget child;

  ///The height of the arc
  final double height;

  ///The edge of the widget which clipped as arc
  final RushEdge edge;

  ///The type of arc which can be [RushArcType.convex] or [RushArcType.concave]
  final RushArcType arcType;

  ///List of shadows to be cast on the border
  final List<RushClipShadow> clipShadows;

  @override
  Widget build(BuildContext context) {
    final clipper = RushArcClipper(height, edge, arcType);
    return CustomPaint(
      painter: _RushClipShadowPainter(clipper, clipShadows),
      child: ClipPath(
        clipper: clipper,
        child: child,
      ),
    );
  }
}

class _RushClipShadowPainter extends CustomPainter {
  _RushClipShadowPainter(this.clipper, this.clipShadows);
  final CustomClipper<Path> clipper;
  final List<RushClipShadow> clipShadows;

  @override
  void paint(Canvas canvas, Size size) {
    // ignore: avoid_function_literals_in_foreach_calls
    clipShadows.forEach((RushClipShadow shadow) {
      canvas.drawShadow(
        clipper.getClip(size),
        shadow.color,
        shadow.elevation,
        true,
      );
    });
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

/// Represents a shadow to be applied to a clipped widget.
///
/// Example usage:
/// ```dart
/// RushClipShadow(
///   color: Colors.black,
///   elevation: 5,
/// )
/// ```
///
@protected
class RushClipShadow {
  /// Creates a new [RushClipShadow] instance.
  RushClipShadow({required this.color, this.elevation = 5});

  /// The color of the shadow.
  final Color color;

  /// The elevation of the shadow.
  final double elevation;
}

/// Represents the position of a diagonal clip.
///
/// Example usage:
/// ```dart
/// RushDiagonalPosition.topLeft
/// ```
enum RushDiagonalPosition {
  /// The top left position.
  topLeft,

  /// The top right position.
  topRight,

  /// The bottom left position.
  bottomLeft,

  /// The bottom right position.
  bottomRight
}

/// Represents a custom clipper for creating diagonal clips.
///
/// Example usage:
/// ```dart
/// RushDiagonalClipper(
///   clipHeight: 100,
///   position: RushDiagonalPosition.topLeft,
///   axis: Axis.horizontal,
/// )
/// ```
class RushDiagonalClipper extends CustomClipper<Path> {
  /// Creates a new [RushDiagonalClipper] instance.
  RushDiagonalClipper(this.clipHeight, this.position, this.axis);

  ///The height that the diagonal angle sees
  final double clipHeight;

  ///The corner of the child which is represented with [RushDiagonalPosition]
  final RushDiagonalPosition position;

  ///The direction of the diagonal
  final Axis axis;

  @override
  Path getClip(Size size) {
    switch (position) {
      case RushDiagonalPosition.topLeft:
        return _getTopLeftPath(size);
      case RushDiagonalPosition.topRight:
        return _getTopRightPath(size);
      case RushDiagonalPosition.bottomLeft:
        return _getBottomLeftPath(size);
      case RushDiagonalPosition.bottomRight:
        return _getBottomRightPath(size);
    }
  }

  Path _getTopLeftPath(Size size) {
    final path = Path();
    if (axis == Axis.horizontal) {
      path.lineTo(0, size.height);
      path.lineTo(size.width, size.height);
      path.lineTo(size.width, clipHeight);
    } else {
      path.lineTo(clipHeight, size.height);
      path.lineTo(size.width, size.height);
      path.lineTo(size.width, 0);
    }
    path.close();
    return path;
  }

  Path _getTopRightPath(Size size) {
    final path = Path();
    if (axis == Axis.horizontal) {
      path.moveTo(0, clipHeight);
      path.lineTo(0, size.height);
      path.lineTo(size.width, size.height);
      path.lineTo(size.width, 0);
    } else {
      path.lineTo(size.width, 0);
      path.lineTo(size.width - clipHeight, size.height);
      path.lineTo(0, size.height);
    }
    path.close();
    return path;
  }

  Path _getBottomLeftPath(Size size) {
    final path = Path();
    if (axis == Axis.horizontal) {
      path.lineTo(0, size.height);
      path.lineTo(size.width, size.height - clipHeight);
      path.lineTo(size.width, 0);
    } else {
      path.moveTo(0, size.height);
      path.lineTo(clipHeight, 0);
      path.lineTo(size.width, 0);
      path.lineTo(size.width, size.height);
    }
    path.close();
    return path;
  }

  Path _getBottomRightPath(Size size) {
    final path = Path();
    if (axis == Axis.horizontal) {
      path.lineTo(0, size.height - clipHeight);
      path.lineTo(size.width, size.height);
      path.lineTo(size.width, 0);
    } else {
      path.lineTo(size.width - clipHeight, 0);
      path.lineTo(size.width, size.height);
      path.lineTo(0, size.height);
    }
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    final oldie = oldClipper as RushDiagonalClipper;
    return position != oldie.position ||
        clipHeight != oldie.clipHeight ||
        axis != oldie.axis;
  }
}

/// A widget that applies a diagonal clip to its child.
///
/// The diagonal clip can be positioned at different corners of the child
/// and can have a specified height.
/// It can also have shadows cast on the border.
class RushDiagonal extends StatelessWidget {
  /// Creates a [RushDiagonal] widget.
  ///
  /// The [child] is the widget to apply the diagonal clip to.
  /// The [clipHeight] specifies the height of the diagonal angle.
  /// The [position] determines the corner of the child
  /// where the diagonal clip is applied.
  /// The [axis] specifies the direction of the diagonal.
  /// The [clipShadows] is a list of shadows to be cast on the border.
  const RushDiagonal({
    required this.child,
    required this.clipHeight,
    super.key,
    this.position = RushDiagonalPosition.bottomLeft,
    this.axis = Axis.horizontal,
    this.clipShadows = const [],
  });

  /// The widget to apply the diagonal clip to.
  final Widget child;

  /// The height that the diagonal angle sees.
  final double clipHeight;

  /// The corner of the child which is represented with [RushDiagonalPosition].
  final RushDiagonalPosition position;

  /// The direction of the diagonal.
  final Axis axis;

  /// List of shadows to be cast on the border.
  final List<RushClipShadow> clipShadows;

  @override
  Widget build(BuildContext context) {
    // Implementation of the build method.

    final clipper = RushDiagonalClipper(clipHeight, position, axis);
    return CustomPaint(
      painter: _RushClipShadowPainter(clipper, clipShadows),
      child: ClipPath(
        clipper: clipper,
        child: child,
      ),
    );
  }
}

/// A custom clipper that clips the child widget in half.
///
/// This clipper creates a path that clips the child widget
/// in half horizontally.
/// It can be used to create visually interesting effects.
class RushHalfClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, size.height / 2);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
