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

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rush/rush.dart';

const double _kDefaultButtonSize = 32;
const double _kDefaultSpace = 8;
const double _kDefaultTextFontSize = 16;

/// A stepper widget that allows users to increment or decrement a value.
///
/// Example:
/// ```dart
/// RushStepper(
///   defaultValue: 0,
///   min: 0,
///   max: 10,
///   step: 1,
///   disableInput: false,
///   onChange: (value) {
///     print('Selected value: $value');
///   },
///   inputBoxColor: Colors.white,
///   inputTextColor: Colors.black,
///   actionButtonColor: Colors.blue,
///   actionIconColor: Colors.white,
/// )
/// ```
class RushStepper extends StatefulWidget {
  /// Creates a new [RushStepper] instance.
  const RushStepper({
    super.key,
    this.defaultValue = 0,
    this.min = 0,
    this.max = 999,
    this.step = 1,
    this.disableInput = false,
    this.onChange,
    this.inputBoxColor,
    this.inputTextColor,
    this.actionButtonColor,
    this.actionIconColor,
  })  : assert(max >= min, 'max must be greater than or equal to min'),
        assert(step >= 1, 'step must be greater than or equal to 1');

  /// The default value for the stepper.
  final num defaultValue;

  /// The minimum value for the stepper.
  final int min;

  /// The maximum value for the stepper.
  final int max;

  /// The step value for the stepper.
  final int step;

  /// Whether the input is disabled or not.
  final bool disableInput;

  /// Callback function when the value of the stepper changes.
  final ValueChanged<int>? onChange;

  /// The color of the input box.
  final Color? inputBoxColor;

  /// The color of the input text.
  final Color? inputTextColor;

  /// The color of the action button.
  final Color? actionButtonColor;

  /// The color of the action icon.
  final Color? actionIconColor;

  @override
  RushStepperState createState() => RushStepperState();
}

/// The state for the [RushStepper] widget.
class RushStepperState extends State<RushStepper> {
  /// The controller for the input field.
  TextEditingController? controller;

  /// The current value of the stepper.
  num recordNumber = 0;

  /// Whether the minimum value is enabled.
  late bool enableMin;

  /// Whether the maximum value is enabled.
  late bool enableMax;

  @override
  void initState() {
    super.initState();
    recordNumber =
        math.min(widget.max, math.max(widget.defaultValue, widget.min));
    controller = TextEditingController(text: '$recordNumber');
    controller!.addListener(_valueChange);

    _valueChange();
  }

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[
      SizedBox(
        height: _kDefaultButtonSize,
        width: _kDefaultButtonSize,
        child: FilledButton(
          style: FilledButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: widget.actionButtonColor,
            padding: EdgeInsets.zero,
          ),
          onPressed: enableMin ? _onRemove : null,
          child: Icon(
            Icons.remove,
            color: widget.actionIconColor,
            size: _kDefaultTextFontSize,
          ),
        ),
      ),
      const SizedBox(width: _kDefaultSpace),
      TextField(
        controller: controller,
        textAlign: TextAlign.center,
        enabled: !widget.disableInput,
        style: TextStyle(color: widget.inputTextColor),
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp('[-0-9]')),
          LengthLimitingTextInputFormatter(3),
        ],
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
        onEditingComplete: _inputComplete,
      ).wh(_kDefaultButtonSize, _kDefaultButtonSize * 1.7),
      const SizedBox(width: _kDefaultSpace),
      SizedBox(
        height: _kDefaultButtonSize,
        width: _kDefaultButtonSize,
        child: FilledButton(
          style: FilledButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: widget.actionButtonColor,
            padding: EdgeInsets.zero,
          ),
          onPressed: enableMax ? _onAdd : null,
          child: Icon(
            Icons.add,
            color: widget.actionIconColor,
            size: _kDefaultTextFontSize,
          ),
        ),
      ),
    ];

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: children,
    );
  }

  void _unFocus() {
    if (FocusScope.of(context).hasFocus) {
      FocusScope.of(context).unfocus();
    }
  }

  void _onRemove() {
    _unFocus();
    var number = _getNumber();
    number = math.max(
      widget.min,
      number - widget.step,
    );
    if (number != recordNumber) {
      _updateControllerValue(number);
    }
  }

  void _onAdd() {
    _unFocus();
    var number = _getNumber();
    number = math.min(
      widget.max,
      number + widget.step,
    );
    if (number != recordNumber) {
      _updateControllerValue(number);
    }
  }

  int _getNumber() {
    final temp = controller!.text;
    if (temp.isEmpty) {
      return widget.min;
    } else {
      return math.min(widget.max, num.parse(temp) as int);
    }
  }

  void _updateControllerValue(num number) {
    controller!.text = '$number';
    recordNumber = number;
    setState(() {});
  }

  void _valueChange() {
    final num number = _getNumber();
    enableMin = number != widget.min;
    enableMax = number != widget.max;
    if (number != recordNumber) {
      if (enableMax || enableMin) {
        recordNumber = number;
        setState(() {});
        _callBackNumber();
      }
    }
  }

  void _inputComplete() {
    _unFocus();
    final temp = _getNumber();
    controller!.text = '$temp';
    recordNumber = temp;
  }

  void _callBackNumber() {
    if (widget.onChange != null) {
      final temp = _getNumber();
      widget.onChange!(temp);
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
