import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Extension to provide routes to [Widget]s.
extension RushRoutesWidgetsExtension on Widget {
  /// Generates a CupertinoPageRoute for the widget.
  ///
  /// [fullscreenDialog] determines whether the route should be
  /// displayed as a fullscreen dialog.
  /// Example:
  /// ```dart
  /// Navigator.push(
  ///   context,
  ///   widget.rushCupertinoRoute(fullscreenDialog: true),
  /// );
  /// ```
  CupertinoPageRoute<dynamic> rushCupertinoRoute({
    bool fullscreenDialog = false,
  }) {
    return CupertinoPageRoute(
      fullscreenDialog: fullscreenDialog,
      builder: (ctx) {
        return this;
      },
    );
  }

  /// Generates a MaterialPageRoute for the widget.
  ///
  /// [fullscreenDialog] determines whether the route should be
  /// displayed as a fullscreen dialog.
  /// Example:
  /// ```dart
  /// Navigator.push(
  ///   context,
  ///   widget.rushMaterialRoute(fullscreenDialog: true),
  /// );
  /// ```
  MaterialPageRoute<dynamic> rushMaterialRoute({
    bool fullscreenDialog = false,
  }) {
    return MaterialPageRoute(
      fullscreenDialog: fullscreenDialog,
      builder: (ctx) {
        return this;
      },
    );
  }

  /// Generates a preview route for the widget.
  ///
  /// [parentContext] is the context of the parent widget.
  /// Example:
  /// ```dart
  /// Navigator.push(
  ///   context,
  ///   widget.rushPreviewRoute(parentContext: context),
  /// );
  /// ```
  Route<dynamic> rushPreviewRoute({required BuildContext parentContext}) {
    return PageRouteBuilder<void>(
      pageBuilder: (context, animation, secondaryAnimation) {
        return this;
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final rectAnimation = _createTween(parentContext)
            .chain(CurveTween(curve: Curves.ease))
            .animate(animation);

        return Stack(
          children: [
            PositionedTransition(rect: rectAnimation, child: child),
          ],
        );
      },
    );
  }

  Tween<RelativeRect> _createTween(BuildContext context) {
    final windowSize = MediaQuery.sizeOf(context);
    final box = context.findRenderObject()! as RenderBox;
    final rect = box.localToGlobal(Offset.zero) & box.size;
    final relativeRect = RelativeRect.fromSize(rect, windowSize);

    return RelativeRectTween(
      begin: relativeRect,
      end: RelativeRect.fill,
    );
  }
}
