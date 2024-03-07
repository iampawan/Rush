import 'package:flutter/material.dart';
import 'package:rush/rush.dart';
import 'package:rush/src/flutter/mixins/neu.dart';

/// A customizable neubrutalist-style button.
///
/// The button has a customizable background color, border color,
/// and drop shadow. The button's shape can also be customized with a rounded
/// border radius. The button's behavior is specified with an `onPressed`
/// callback function.
///
/// This button is built using Flutter's `Material` widget, and is designed to
/// follow the Neubrutalism UI style guidelines.
///
/// Example:
/// ```dart
/// RushNeubrutal(
///   enableAnimation: true,
///   child: Text('Button'),
///   onPressed: () {
///     // Handle button press
///   },
/// )
/// ```
class RushNeubrutal extends StatefulWidget {
  /// RushNeubrutal Constructor
  const RushNeubrutal({
    required this.child,
    this.enableAnimation = true,
    super.key,
    this.buttonColor = RushNeuMixin.neuBrutDefault,
    this.shadowColor = RushNeuMixin.neuBrutShadow,
    this.borderColor = RushNeuMixin.neuBrutBlack,
    this.onPressed,
    this.borderRadius = RushNeuMixin.neuBrutBorderRadius,
    this.offset = RushNeuMixin.neuBrutOffset,
    this.buttonHeight = 50,
    this.buttonWidth = 50,
    this.shadowBlurRadius = RushNeuMixin.neuBrutShadowBlurRadius,
    this.borderWidth = RushNeuMixin.neuBrutBorder,
    this.animationDuration = 100,
  });

  /// - child: The child widget inside of the button
  ///
  final Widget? child;

  /// - buttonColor (optional) : A Color that defines the color of the button.
  ///
  /// By default, it is set to Colors.black.
  final Color buttonColor;

  /// shadowColor (optional) : A Color that defines the color of the
  /// button's shadow.
  ///
  /// By default, it is set to Color(0xFF080808).
  ///
  final Color shadowColor;

  /// - borderColor (optional) : A Color that defines the color of the
  /// button's border.
  ///
  /// By default, it is set to Colors.black;.

  final Color borderColor;

  /// - onPressed (optional) : A callback function that is called
  /// when the button is pressed.
  ///
  final GestureTapCallback? onPressed;

  /// - borderRadius (optional) : A BorderRadiusGeometry
  /// that defines the border radius of the button.
  /// If not specified,
  /// the button will use BorderRadius.all(Radius.circular(12)).
  final BorderRadius borderRadius;

  /// - offset : An Offset that defines the amount and direction of the blur
  /// applied to the shadow of the card.
  /// Offset(4, 4) is the default value.
  final Offset offset;

  /// - buttonHeight (optional) : A double value that defines
  /// the height of the button.
  ///
  final double buttonHeight;

  /// - buttonWidth (optional) : A double value that defines the width
  /// of the button.
  ///
  final double buttonWidth;

  /// - shadowBlurRadius (optional) : A double that defines the radius of the
  /// blur applied to the shadow of the card.
  ///
  /// By default, it is set to 0.0.
  ///
  final double shadowBlurRadius;

  /// - borderWidth (optional) : A double value that defines the width
  /// of the button's border.
  ///
  /// By default, it is set to 3.0.
  ///
  final double borderWidth;

  /// animate (required) : Boolean Property to toggle the Animation property
  /// of the Button Widget.
  ///
  /// Creates a smooth pressing animation beginning from Offset(0,0)
  /// to the defined [`offset`] property. (Default offset value is (4,4))
  final bool enableAnimation;

  ///animationDuration (optional) : An Int. defining the Animation
  ///Duration in milliseconds.
  ///
  ///Default value is 100ms
  final int animationDuration;

  @override
  State<RushNeubrutal> createState() => _RushNeubrutalState();
}

class _RushNeubrutalState extends State<RushNeubrutal>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.animationDuration),
    )..addListener(() {
        setState(() {});
      });
    _animation = Tween<Offset>(begin: Offset.zero, end: widget.offset).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.bounceInOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Set<Set<void>> doOnPressedAction() => {
              if (widget.onPressed != null) {widget.onPressed!()},
            };

        if (widget.enableAnimation) {
          // do the on pressed action after the
          // first part of animation
          _controller.forward().then((value) {
            doOnPressedAction();
            _controller.reverse();
          });
        } else {
          // do on pressed action without any
          // animation
          doOnPressedAction();
        }
      },
      child: AnimatedBuilder(
        animation: _animation,
        child: Container(
          width: widget.buttonWidth,
          height: widget.buttonHeight,
          color: widget.buttonColor,
          child: Center(child: widget.child),
        )
            .rush
            .neuBrutalism(
              borderRadius: widget.borderRadius,
              borderColor: widget.borderColor,
              borderWidth: widget.borderWidth,
              shadowColor: widget.shadowColor,
              shadowBlurRadius: widget.shadowBlurRadius,
              offset: widget.offset - _animation.value,
              color: widget.buttonColor,
            )
            .apply(),
        builder: (context, child) {
          return Transform.translate(
            offset: _animation.value,
            child: child,
          );
        },
      ),
    );
  }
}

/// A class that represents a RushNeubrutalIcon.
///
/// This class extends the RushNeubrutal class and provides an icon widget.
///
/// Example:
/// ```dart
/// RushNeubrutalIcon(
///   enableAnimation: true,
///   icon: Icon(Icons.add),
///   // other properties
/// )
/// ```
class RushNeubrutalIcon extends RushNeubrutal {
  /// RushNeubrutalIcon Constructor
  const RushNeubrutalIcon({
    required this.icon,
    super.enableAnimation = true,
    super.key,
    super.animationDuration = 100,
    super.borderColor = RushNeuMixin.neuBrutBlack,
    super.borderRadius = RushNeuMixin.neuBrutBorderRadius,
    super.borderWidth = RushNeuMixin.neuBrutBorder,
    super.buttonColor = RushNeuMixin.neuBrutDefault,
    super.buttonHeight = 50,
    super.buttonWidth = 100,
    super.offset = RushNeuMixin.neuBrutOffset,
    super.onPressed,
    super.shadowBlurRadius = RushNeuMixin.neuBrutShadowBlurRadius,
    super.shadowColor = RushNeuMixin.neuBrutShadow,
  }) : super(
          child: icon,
        );

  /// - icon (required) : A Icon Widget to help you add icons.
  ///
  final Icon icon;
}

/// A class that represents a RushNeubrutalText.
///
/// This class extends the RushNeubrutal class and provides a text widget.
///
/// Example:
/// ```dart
/// RushNeubrutalText(
///   text: Text('Hello'),
///   // other properties
/// )
/// ```
class RushNeubrutalText extends RushNeubrutal {
  /// RushNeubrutalText Constructor
  const RushNeubrutalText({
    required this.text,
    super.enableAnimation = true,
    super.key,
    super.animationDuration = 100,
    super.borderColor = RushNeuMixin.neuBrutBlack,
    super.borderRadius,
    super.borderWidth = RushNeuMixin.neuBrutBorder,
    super.buttonColor = RushNeuMixin.neuBrutDefault,
    super.buttonHeight = 50,
    super.buttonWidth = 100,
    super.offset = RushNeuMixin.neuBrutOffset,
    super.onPressed,
    super.shadowBlurRadius = RushNeuMixin.neuBrutShadowBlurRadius,
    super.shadowColor = RushNeuMixin.neuBrutShadow,
  }) : super(
          child: text,
        );

  ///
  /// This Property helps to insert a Text Widget and
  /// customize it according to your need
  final Text text;
}
