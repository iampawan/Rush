import 'package:flutter/material.dart';

/// A widget that toggles between two child widgets based on hover state.
///
/// Example:
/// ```dart
/// RushHoverToggle(
///   child: Text('Normal'),
///   hoverChild: Text('Hovered'),
///   size: Size(100, 50),
///   mode: RushHoverMode.replace,
/// )
/// ```
class RushHoverToggle extends StatefulWidget {
  /// Creates a new [RushHoverToggle] instance.
  const RushHoverToggle({
    required this.child,
    required this.hoverChild,
    required this.size,
    super.key,
    this.mode = RushHoverMode.replace,
  });

  /// The child widget to display when not hovered.
  final Widget child;

  /// The child widget to display when hovered.
  final Widget hoverChild;

  /// The mode to determine how the child widgets are displayed.
  final RushHoverMode mode;

  /// The size of the widget.
  final Size size;

  @override
  State<RushHoverToggle> createState() => _HoverToggleState();
}

class _HoverToggleState extends State<RushHoverToggle> with MaterialStateMixin {
  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: widget.size,
      child: MouseRegion(
        cursor: isHovered ? SystemMouseCursors.click : MouseCursor.defer,
        onEnter: (_) => setMaterialState(MaterialState.hovered, true),
        onExit: (_) => setMaterialState(MaterialState.hovered, false),
        child: widget.mode == RushHoverMode.replace
            ? _buildReplaceableChildren()
            : _buildChildrenStack(),
      ),
    );
  }

  Widget _buildChildrenStack() {
    final child =
        isHovered ? Opacity(opacity: 0.2, child: widget.child) : widget.child;
    return Stack(
      children: <Widget>[
        child,
        if (isHovered) widget.hoverChild,
      ],
    );
  }

  Widget _buildReplaceableChildren() =>
      isHovered ? widget.hoverChild : widget.child;
}

/// The mode to determine how the child widgets are displayed.
enum RushHoverMode {
  /// Replace the child widget when hovered.
  replace,

  /// Overlay the child widget when hovered.
  overlay
}
