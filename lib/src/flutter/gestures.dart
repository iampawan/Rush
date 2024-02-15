// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Extension to provide gestures to [Widget]s.
extension RushGestureExtensions on Widget {
  ///it is very much like onTap extension but when you put your finger on it,
  ///its color will change, and you can decide that whether it will have a
  ///touchFeedBack (vibration on your phone)
  ///

  Widget onFeedBackTap(
    VoidCallback? onTap, {
    Key? key,
    HitTestBehavior hitTestBehavior = HitTestBehavior.deferToChild,
    bool touchFeedBack = false,
  }) {
    return _CallbackButton(
      key: key,
      onTap: onTap,
      needHaptic: touchFeedBack,
      hitTestBehavior: hitTestBehavior,
      child: this,
    );
  }

  /// Mouse Region Hover
  MouseRegion onMouseHover(PointerHoverEventListener? onHover, {Key? key}) {
    return MouseRegion(
      key: key,
      onHover: onHover,
      child: this,
    );
  }

  /// Mouse Region Enter
  MouseRegion onMouseEnter(PointerEnterEventListener? onEnter, {Key? key}) {
    return MouseRegion(
      key: key,
      onEnter: onEnter,
      child: this,
    );
  }

  /// Mouse Region Exit
  MouseRegion onMouseExit(PointerExitEventListener? onExit, {Key? key}) {
    return MouseRegion(
      key: key,
      onExit: onExit,
      child: this,
    );
  }

  /// Mouse Region Enter & Exit
  MouseRegion onMouseEnterExit({
    Key? key,
    PointerEnterEventListener? onEnter,
    PointerExitEventListener? onExit,
  }) {
    return MouseRegion(
      key: key,
      onEnter: onEnter,
      onExit: onExit,
      child: this,
    );
  }

  /// [MouseRegion] Full Widget
  MouseRegion mouseRegion({
    Key? key,
    PointerHoverEventListener? onHover,
    PointerEnterEventListener? onEnter,
    PointerExitEventListener? onExit,
    MouseCursor mouseCursor = MouseCursor.defer,
    bool opaque = true,
  }) {
    return MouseRegion(
      key: key,
      onHover: onHover,
      cursor: mouseCursor,
      opaque: opaque,
      onEnter: onEnter,
      onExit: onExit,
      child: this,
    );
  }
}

class _CallbackButton extends StatefulWidget {
  const _CallbackButton({
    super.key,
    this.onTap,
    this.child,
    this.normalColor = Colors.transparent,
    this.pressedColor = Colors.black12,
    this.needHaptic = false,
    this.hitTestBehavior,
  });
  final VoidCallback? onTap;
  final Widget? child;
  final Color? normalColor;
  final Color? pressedColor;
  final bool needHaptic;
  final HitTestBehavior? hitTestBehavior;

  @override
  _CallbackButtonState createState() => _CallbackButtonState();
}

class _CallbackButtonState extends State<_CallbackButton> {
  Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        behavior: widget.hitTestBehavior,
        onTap: widget.onTap,
        onTapDown: handleTapDown,
        onTapUp: handleTapUp,
        onTapCancel: handleCancel,
        child: Container(
          color: bgColor,
          child: widget.child,
        ),
      ),
    );
  }

  void handleTapDown(TapDownDetails tapDownDetails) {
    setState(() {
      bgColor = widget.pressedColor;
    });
  }

  void handleCancel() {
    setState(() {
      bgColor = widget.normalColor;
    });
  }

  void handleTapUp(TapUpDetails tapDownDetails) {
    if (widget.needHaptic) {
      HapticFeedback.heavyImpact();
    }
    setState(() {
      bgColor = widget.normalColor;
    });
  }
}

//
// Transform widget enables the overlay to be updated dynamically
//
class _RushTransformWidget extends StatefulWidget {
  const _RushTransformWidget({
    required this.child,
    required this.matrix,
    super.key,
  });

  final Widget child;
  final Matrix4 matrix;

  @override
  _RushTransformWidgetState createState() => _RushTransformWidgetState();
}

class _RushTransformWidgetState extends State<_RushTransformWidget> {
  Matrix4? _matrix = Matrix4.identity();

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: widget.matrix * _matrix as Matrix4,
      child: widget.child,
    );
  }

  void setMatrix(Matrix4? matrix) {
    setState(() {
      _matrix = matrix;
    });
  }
}
