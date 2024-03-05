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

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

/*

The RushFlip widget is a stateful widget that represents a flip card. 
It has several properties:

initialFront:Determines whether the card initially shows the front or back side.
front: Widget to be displayed on the front side of the card.
back: Widget to be displayed on the back side of the card.
duration: Duration of the flip animation.
direction: Direction of the flip animation (horizontal or vertical).
touchFlip: Enables or disables flipping the card on touch.
fill: Specifies the filling behavior of the card (none, front, back).
onFlip: Callback function that is called when the flip animation starts.
onFlipDone: Callback function that is called when the flip animation completes.
onRushFlipState: Callback function that is called to get the 
RushFlipState object representing the state of the RushFlip.
The RushFlip widget is built using the RushFlipState class, which extends State 
and implements SingleTickerProviderStateMixin. 
It manages the animation and state of the flip card.

The RushFlipState class provides methods to control the flip animation 
and interact with the card:

animateToggle(): Flips the card with an animation. It calls the onFlip callback 
and updates the state of the card when the animation completes.
toggle(): Flips the card without playing an animation. 
It immediately updates the state of the card.
skew(double amount, {Duration? duration, Curve? curve}): 
Skews the card by the specified amount percentage. 
This can be used to indicate that the card can be flipped.
hint({Duration duration = const Duration(milliseconds: 150), Duration? total}): 
Triggers a flip animation that reverses after the specified duration. 
It can be used to provide a hint or visual feedback to the user.
The RushFlip widget builds the card using the _buildContent method, 
which creates a stack with the front and back sides of the card. 
The animation for flipping the card is handled by the _animationCard method, 
which applies a rotation transformation to the card 
based on the animation values.

The RushFlip widget also provides touch interaction support for 
flipping the card when touchFlip is set to true. It wraps the card with a 
GestureDetector that 
triggers the animateToggle method when the card is tapped.

Overall, the RushFlip widget allows you to create a visually appealing 
flip card UI element in your Flutter application, which can be used for various 
purposes such as displaying information on both sides of the card or 
creating interactive interfaces.

*/

/// A widget that represents a flip card.
enum RushFill {
  /// No filling behavior.
  none,

  /// Fill the front side of the card.
  front,

  /// Fill the back side of the card.
  back
}

/// Callback function called when the flip animation starts.
typedef RushFlipOnFlipCallback = void Function({required bool isFront});

/// Callback function called to get the RushFlipState.
typedef RushFlipCallback = void Function({required RushFlipState rushFlip});

/// A widget that represents a flip card.
class RushFlip extends StatefulWidget {
  /// Constructs an instance of [RushFlip] with the given parameters.
  const RushFlip({
    required this.front,
    required this.back,
    super.key,
    this.duration = const Duration(milliseconds: 300),
    this.onFlip,
    this.onFlipDone,
    this.direction = Axis.horizontal,
    this.onRushFlipState,
    this.touchFlip = true,
    this.initialFront = true,
    this.alignment = Alignment.center,
    this.fill = RushFill.front,
  });

  /// Initial side of the card (front or back)
  final bool initialFront;

  /// Widget to be displayed on the front side of the card
  final Widget front;

  /// Widget to be displayed on the back side of the card
  final Widget back;

  /// Duration of the flip animation
  final Duration duration;

  /// Direction of the flip animation (horizontal or vertical)
  final Axis direction;

  /// Enables or disables flip on touch
  final bool touchFlip;

  /// Filling behavior of the card (none, front, back)
  final RushFill fill;

  /// Callback function called when the flip animation starts
  final VoidCallback? onFlip;

  /// Callback function called when the flip animation completes
  final RushFlipOnFlipCallback? onFlipDone;

  /// Callback function called to get the RushFlipState
  final RushFlipCallback? onRushFlipState;

  /// Alignment of the card
  final Alignment? alignment;

  @override
  State<StatefulWidget> createState() => RushFlipState();
}

/// State of the [RushFlip] widget.
class RushFlipState extends State<RushFlip>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _frontRotation;
  late Animation<double> _backRotation;

  late bool _isFront;

  @override
  void initState() {
    _isFront = widget.initialFront;
    super.initState();
    widget.onRushFlipState?.call(rushFlip: this);
    _initController();
  }

  void _initController() {
    _controller = AnimationController(
      value: _isFront ? 0.0 : 1.0,
      duration: widget.duration,
      vsync: this,
    );
    _frontRotation = TweenSequence([
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 0, end: pi / 2)
            .chain(CurveTween(curve: Curves.easeIn)),
        weight: 50,
      ),
      TweenSequenceItem<double>(
        tween: ConstantTween<double>(pi / 2),
        weight: 50,
      ),
    ]).animate(_controller);
    _backRotation = TweenSequence([
      TweenSequenceItem<double>(
        tween: ConstantTween<double>(pi / 2),
        weight: 50,
      ),
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: -pi / 2, end: 0)
            .chain(CurveTween(curve: Curves.easeOut)),
        weight: 50,
      ),
    ]).animate(_controller);
  }

  @override
  void didUpdateWidget(RushFlip oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.duration != oldWidget.duration) {
      _controller.duration = widget.duration;
    }
    _isFront = widget.initialFront;
    widget.onRushFlipState?.call(rushFlip: this);
  }

  /// Flip the card
  /// If awaited, returns after animation completes.
  void animateToggle() {
    if (!mounted) return;
    widget.onFlip?.call();
    _controller.duration = widget.duration;
    _isFront
        ? _controller.forward()
        : _controller.reverse().whenComplete(() {
            setState(() => _isFront = !_isFront);
            widget.onFlipDone?.call(isFront: _isFront);
          });
  }

  /// Flip the card without playing an animation.
  /// This cancels any ongoing animation.
  void toggle() {
    _controller.stop();
    widget.onFlip?.call();
    _isFront = !_isFront;
    _controller.value = _isFront ? 0.0 : 1.0;
    setState(() {});
    widget.onFlipDone?.call(isFront: _isFront);
  }

  @override
  Widget build(BuildContext context) {
    final child = Stack(
      alignment: widget.alignment!,
      fit: StackFit.passthrough,
      children: [
        _buildContent(true, widget.fill == RushFill.front),
        _buildContent(false, widget.fill == RushFill.back),
      ],
    );
    if (widget.touchFlip) {
      return GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: animateToggle,
        child: child,
      );
    }
    return child;
  }

  Widget _buildContent(bool front, bool isFill) {
    final card = IgnorePointer(
      ignoring: front ? !_isFront : _isFront,
      child: _animationCard(
        front ? widget.front : widget.back,
        front ? _frontRotation : _backRotation,
      ),
    );
    if (isFill) return Positioned.fill(child: card);
    return card;
  }

  Widget _animationCard(Widget child, Animation<double> animation) =>
      AnimatedBuilder(
        animation: animation,
        builder: (_, Widget? child) {
          final transform = Matrix4.identity()..setEntry(3, 2, 0.001);
          if (widget.direction == Axis.vertical) {
            transform.rotateX(animation.value);
          } else {
            transform.rotateY(animation.value);
          }
          return Transform(
            transform: transform,
            filterQuality: FilterQuality.none,
            alignment: FractionalOffset.center,
            child: child,
          );
        },
        child: child,
      );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// Skew by amount percentage (0 - 1.0)
  /// This can be used with a MouseRegion to indicate that the card can
  /// be flipped. skew(0) to go back to original.
  /// If awaited, returns after animation completes.
  Future<void> skew(double amount, {Duration? duration, Curve? curve}) async {
    assert(0 <= amount && amount <= 1, 'Amount must be between 0 and 1.');
    final target = _isFront ? amount : 1 - amount;
    await _controller
        .animateTo(target, duration: duration, curve: curve ?? Curves.linear)
        .asStream()
        .first;
  }

  /// Triggers a flip animation that reverses after the duration
  /// and will run for `total`
  /// If awaited, returns after animation completes.
  Future<void> hint({
    Duration duration = const Duration(milliseconds: 150),
    Duration? total,
  }) async {
    if (_controller.isAnimating || _controller.value != 0) return;
    final durationTotal = total ?? _controller.duration;
    // ignore: inference_failure_on_instance_creation
    final completer = Completer();
    final original = _controller.duration;
    _controller.duration = durationTotal;
    await _controller.forward();
    Timer(duration, () {
      _controller.reverse().whenComplete(completer.complete);
      _controller.duration = original;
    });
    await completer.future;
  }
}
