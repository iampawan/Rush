import 'package:flutter/widgets.dart';
import 'package:rush/src/flutter/builder.dart';

@protected
class RushFlexBuilder extends RushWidgetBuilder<Widget> {
  /// Creates a new [RushFlexBuilder] instance.
  RushFlexBuilder.existing(
    this._child,
  ) {
    if (_child.children.isNotEmpty) {
      _allChildren.addAll(_child.children);
    }
  }

  final Flex _child;

  Axis? _direction;
  MainAxisAlignment? _mainAxisAlignment;
  CrossAxisAlignment? _crossAxisAlignment;
  MainAxisSize? _mainAxisSize;
  VerticalDirection? _verticalDirection;
  TextDirection? _textDirection;

  final List<Widget> _allChildren = [];

  RushFlexBuilder add(Widget child) {
    _allChildren.add(child);
    return this;
  }

  RushFlexBuilder addEmpty({double? width, double? height}) =>
      (width == null && height == null)
          ? add(const SizedBox())
          : add(
              SizedBox(
                width: width,
                height: height,
              ),
            );
  RushFlexBuilder addSpacer({int? flex}) => flex == null
      ? add(const Spacer())
      : add(
          Spacer(
            flex: flex,
          ),
        );

  RushFlexBuilder get min {
    _mainAxisSize = MainAxisSize.min;
    return this;
  }

  RushFlexBuilder get max {
    _mainAxisSize = MainAxisSize.max;
    return this;
  }

  RushFlexBuilder get start {
    _mainAxisAlignment = MainAxisAlignment.start;
    return this;
  }

  RushFlexBuilder get end {
    _mainAxisAlignment = MainAxisAlignment.end;
    return this;
  }

  RushFlexBuilder get center {
    _mainAxisAlignment = MainAxisAlignment.center;
    return this;
  }

  RushFlexBuilder get spaceBetween {
    _mainAxisAlignment = MainAxisAlignment.spaceBetween;
    return this;
  }

  RushFlexBuilder get spaceAround {
    _mainAxisAlignment = MainAxisAlignment.spaceAround;
    return this;
  }

  RushFlexBuilder get spaceEvenly {
    _mainAxisAlignment = MainAxisAlignment.spaceEvenly;
    return this;
  }

  RushFlexBuilder get crossStart {
    _crossAxisAlignment = CrossAxisAlignment.start;
    return this;
  }

  RushFlexBuilder get crossEnd {
    _crossAxisAlignment = CrossAxisAlignment.end;
    return this;
  }

  RushFlexBuilder get crossCenter {
    _crossAxisAlignment = CrossAxisAlignment.center;
    return this;
  }

  RushFlexBuilder get crossStretch {
    _crossAxisAlignment = CrossAxisAlignment.stretch;
    return this;
  }

  RushFlexBuilder get baseline {
    _crossAxisAlignment = CrossAxisAlignment.baseline;
    return this;
  }

  RushFlexBuilder get startStart {
    _mainAxisAlignment = MainAxisAlignment.start;
    _crossAxisAlignment = CrossAxisAlignment.start;
    return this;
  }

  RushFlexBuilder get startCenter {
    _mainAxisAlignment = MainAxisAlignment.start;
    _crossAxisAlignment = CrossAxisAlignment.center;
    return this;
  }

  RushFlexBuilder get startEnd {
    _mainAxisAlignment = MainAxisAlignment.start;
    _crossAxisAlignment = CrossAxisAlignment.end;
    return this;
  }

  RushFlexBuilder get centerStart {
    _mainAxisAlignment = MainAxisAlignment.center;
    _crossAxisAlignment = CrossAxisAlignment.start;
    return this;
  }

  RushFlexBuilder get centerCenter {
    _mainAxisAlignment = MainAxisAlignment.center;
    _crossAxisAlignment = CrossAxisAlignment.center;
    return this;
  }

  RushFlexBuilder get centerEnd {
    _mainAxisAlignment = MainAxisAlignment.center;
    _crossAxisAlignment = CrossAxisAlignment.end;
    return this;
  }

  RushFlexBuilder get endStart {
    _mainAxisAlignment = MainAxisAlignment.end;
    _crossAxisAlignment = CrossAxisAlignment.start;
    return this;
  }

  RushFlexBuilder get endCenter {
    _mainAxisAlignment = MainAxisAlignment.end;
    _crossAxisAlignment = CrossAxisAlignment.center;
    return this;
  }

  RushFlexBuilder get endEnd {
    _mainAxisAlignment = MainAxisAlignment.end;
    _crossAxisAlignment = CrossAxisAlignment.end;
    return this;
  }

  RushFlexBuilder get vertical {
    _direction = Axis.vertical;
    return this;
  }

  RushFlexBuilder get horizontal {
    _direction = Axis.horizontal;
    return this;
  }

  RushFlexBuilder get up {
    _verticalDirection = VerticalDirection.up;
    return this;
  }

  RushFlexBuilder get down {
    _verticalDirection = VerticalDirection.down;
    return this;
  }

  RushFlexBuilder mainAxisAlignment(MainAxisAlignment value) {
    _mainAxisAlignment = value;
    return this;
  }

  RushFlexBuilder crossAxisAlignment(CrossAxisAlignment value) {
    _crossAxisAlignment = value;
    return this;
  }

  RushFlexBuilder mainAxisSize(MainAxisSize value) {
    _mainAxisSize = value;
    return this;
  }

  RushFlexBuilder verticalDirection(VerticalDirection value) {
    _verticalDirection = value;
    return this;
  }

  RushFlexBuilder textDirection(TextDirection value) {
    _textDirection = value;
    return this;
  }

  @override
  Widget apply() {
    return Flex(
      key: _child.key,
      direction: _direction ?? _child.direction,
      textDirection: _textDirection ?? _child.textDirection,
      mainAxisAlignment: _mainAxisAlignment ?? _child.mainAxisAlignment,
      crossAxisAlignment: _crossAxisAlignment ?? _child.crossAxisAlignment,
      mainAxisSize: _mainAxisSize ?? _child.mainAxisSize,
      clipBehavior: _child.clipBehavior,
      textBaseline: _child.textBaseline,
      verticalDirection: _verticalDirection ?? _child.verticalDirection,
      children: _allChildren.map((child) => child).toList(),
    );
  }
}

extension RushFlexBuilderExtension on Flex {
  /// Creates a new [RushFlexBuilder] instance.
  RushFlexBuilder get rush => RushFlexBuilder.existing(
        this,
      );
}
