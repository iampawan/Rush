import 'package:flutter/widgets.dart';
import 'package:rush/src/flutter/builder.dart';

@protected

/// A builder class for creating flexible layouts using the Rush framework.
///
/// The `RushFlexBuilder` class provides a convenient way
/// to create flexible layouts using the Rush framework.
/// It allows you to easily specify the direction, alignment,
/// and sizing of the flex container, as well as add child widgets with various
/// configurations.

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

  /// Adds a child widget to the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.add(Text('Child 1')).add(Text('Child 2')).apply();
  /// Row().rush.add(Text('Child 1')).add(Text('Child 2')).apply();
  /// ```
  RushFlexBuilder add(Widget child) {
    _allChildren.add(child);
    return this;
  }

  /// Adds multiple child widgets to the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.addMany([
  ///   Text('Child 1'),
  ///   Text('Child 2'),
  /// ]).apply();
  ///
  /// Row().rush.addMany([
  ///   Text('Child 1'),
  ///   Text('Child 2'),
  /// ]).apply();
  /// ```
  RushFlexBuilder addMany(List<Widget> children) {
    _allChildren.addAll(children);
    return this;
  }

  /// Adds an empty widget to the flex container with optional width and height.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.addEmpty(height: 20).add(Text('Child 1')).apply();
  /// Row().rush.addEmpty(width: 50).add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder addEmpty({double? width, double? height}) =>
      (width == null && height == null)
          ? add(const SizedBox())
          : add(
              SizedBox(
                width: width,
                height: height,
              ),
            );

  /// Adds a spacer widget to the flex container with an optional flex value.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.addSpacer().add(Text('Child 1')).apply();
  /// Row().rush.addSpacer(flex: 2).add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder addSpacer({int? flex}) => flex == null
      ? add(const Spacer())
      : add(
          Spacer(
            flex: flex,
          ),
        );

  /// Sets the main axis size to `MainAxisSize.min` for the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.min.add(Text('Child 1')).apply();
  /// Row().rush.min.add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder get min {
    _mainAxisSize = MainAxisSize.min;
    return this;
  }

  /// Sets the main axis size to `MainAxisSize.max` for the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.max.add(Text('Child 1')).apply();
  /// Row().rush.max.add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder get max {
    _mainAxisSize = MainAxisSize.max;
    return this;
  }

  /// Sets the main axis alignment to `MainAxisAlignment.start`
  /// for the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.start.add(Text('Child 1')).apply();
  /// Row().rush.start.add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder get start {
    _mainAxisAlignment = MainAxisAlignment.start;
    return this;
  }

  /// Sets the main axis alignment to `MainAxisAlignment.end`
  /// for the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.end.add(Text('Child 1')).apply();
  /// Row().rush.end.add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder get end {
    _mainAxisAlignment = MainAxisAlignment.end;
    return this;
  }

  /// Sets the main axis alignment to `MainAxisAlignment.center`
  /// for the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.center.add(Text('Child 1')).apply();
  /// Row().rush.center.add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder get center {
    _mainAxisAlignment = MainAxisAlignment.center;
    return this;
  }

  /// Sets the main axis alignment to `MainAxisAlignment.spaceBetween`
  /// for the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.spaceBetween.add(Text('Child 1')).apply();
  /// Row().rush.spaceBetween.add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder get spaceBetween {
    _mainAxisAlignment = MainAxisAlignment.spaceBetween;
    return this;
  }

  /// Sets the main axis alignment to `MainAxisAlignment.spaceAround`
  /// for the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.spaceAround.add(Text('Child 1')).apply();
  /// Row().rush.spaceAround.add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder get spaceAround {
    _mainAxisAlignment = MainAxisAlignment.spaceAround;
    return this;
  }

  /// Sets the main axis alignment to `MainAxisAlignment.spaceEvenly`
  /// for the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.spaceEvenly.add(Text('Child 1')).apply();
  /// Row().rush.spaceEvenly.add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder get spaceEvenly {
    _mainAxisAlignment = MainAxisAlignment.spaceEvenly;
    return this;
  }

  /// Sets the cross axis alignment to `CrossAxisAlignment.start`
  /// for the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.crossStart.add(Text('Child 1')).apply();
  /// Row().rush.crossStart.add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder get crossStart {
    _crossAxisAlignment = CrossAxisAlignment.start;
    return this;
  }

  /// Sets the cross axis alignment to `CrossAxisAlignment.end`
  /// for the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.crossEnd.add(Text('Child 1')).apply();
  /// Row().rush.crossEnd.add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder get crossEnd {
    _crossAxisAlignment = CrossAxisAlignment.end;
    return this;
  }

  /// Sets the cross axis alignment to `CrossAxisAlignment.center`
  /// for the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.crossCenter.add(Text('Child 1')).apply();
  /// Row().rush.crossCenter.add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder get crossCenter {
    _crossAxisAlignment = CrossAxisAlignment.center;
    return this;
  }

  /// Sets the cross axis alignment to `CrossAxisAlignment.stretch`
  /// for the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.crossStretch.add(Text('Child 1')).apply();
  /// Row().rush.crossStretch.add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder get crossStretch {
    _crossAxisAlignment = CrossAxisAlignment.stretch;
    return this;
  }

  /// Sets the cross axis alignment to `CrossAxisAlignment.baseline`
  /// for the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.baseline.add(Text('Child 1')).apply();
  /// Row().rush.baseline.add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder get baseline {
    _crossAxisAlignment = CrossAxisAlignment.baseline;
    return this;
  }

  /// Sets the main and cross axis alignment to `MainAxisAlignment.start`
  /// and `CrossAxisAlignment.start` respectively for the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.startStart.add(Text('Child 1')).apply();
  /// Row().rush.startStart.add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder get startStart {
    _mainAxisAlignment = MainAxisAlignment.start;
    _crossAxisAlignment = CrossAxisAlignment.start;
    return this;
  }

  /// Sets the main axis alignment to `MainAxisAlignment.start` and
  /// cross axis alignment to `CrossAxisAlignment.center`
  /// for the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.startCenter.add(Text('Child 1')).apply();
  /// Row().rush.startCenter.add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder get startCenter {
    _mainAxisAlignment = MainAxisAlignment.start;
    _crossAxisAlignment = CrossAxisAlignment.center;
    return this;
  }

  /// Sets the main axis alignment to `MainAxisAlignment.start` and
  /// cross axis alignment to `CrossAxisAlignment.end` for the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.startEnd.add(Text('Child 1')).apply();
  /// Row().rush.startEnd.add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder get startEnd {
    _mainAxisAlignment = MainAxisAlignment.start;
    _crossAxisAlignment = CrossAxisAlignment.end;
    return this;
  }

  /// Sets the main axis alignment to `MainAxisAlignment.center` and
  /// cross axis alignment to `CrossAxisAlignment.start` for the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.centerStart.add(Text('Child 1')).apply();
  /// Row().rush.centerStart.add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder get centerStart {
    _mainAxisAlignment = MainAxisAlignment.center;
    _crossAxisAlignment = CrossAxisAlignment.start;
    return this;
  }

  /// Sets the main and cross axis alignment to `MainAxisAlignment.center`
  /// and `CrossAxisAlignment.center` respectively for the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.centerCenter.add(Text('Child 1')).apply();
  /// Row().rush.centerCenter.add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder get centerCenter {
    _mainAxisAlignment = MainAxisAlignment.center;
    _crossAxisAlignment = CrossAxisAlignment.center;
    return this;
  }

  /// Sets the main axis alignment to `MainAxisAlignment.center` and
  /// cross axis alignment to `CrossAxisAlignment.end` for the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.centerEnd.add(Text('Child 1')).apply();
  /// Row().rush.centerEnd.add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder get centerEnd {
    _mainAxisAlignment = MainAxisAlignment.center;
    _crossAxisAlignment = CrossAxisAlignment.end;
    return this;
  }

  /// Sets the main axis alignment to `MainAxisAlignment.end` and
  /// cross axis alignment to `CrossAxisAlignment.start` for the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.endStart.add(Text('Child 1')).apply();
  /// Row().rush.endStart.add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder get endStart {
    _mainAxisAlignment = MainAxisAlignment.end;
    _crossAxisAlignment = CrossAxisAlignment.start;
    return this;
  }

  /// Sets the main axis alignment to `MainAxisAlignment.end` and
  /// cross axis alignment to `CrossAxisAlignment.center`
  /// for the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.endCenter.add(Text('Child 1')).apply();
  /// Row().rush.endCenter.add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder get endCenter {
    _mainAxisAlignment = MainAxisAlignment.end;
    _crossAxisAlignment = CrossAxisAlignment.center;
    return this;
  }

  /// Sets the main and cross axis alignment to `MainAxisAlignment.end`
  /// and `CrossAxisAlignment.end` respectively for the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.endEnd.add(Text('Child 1')).apply();
  /// Row().rush.endEnd.add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder get endEnd {
    _mainAxisAlignment = MainAxisAlignment.end;
    _crossAxisAlignment = CrossAxisAlignment.end;
    return this;
  }

  /// Sets the direction of the flex container to vertical.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.vertical.add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder get vertical {
    _direction = Axis.vertical;
    return this;
  }

  /// Sets the direction of the flex container to horizontal.
  ///
  /// Example usage:
  /// ```dart
  /// Row().rush.horizontal.add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder get horizontal {
    _direction = Axis.horizontal;
    return this;
  }



  /// Sets the direction of the flex container to the specified axis.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.axis(Axis.vertical).add(Text('Child 1')).apply();
  /// Row().rush.axis(Axis.horizontal).add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder axis(Axis value) {
    _direction = value;
    return this;
  }

  /// Sets the vertical direction of the flex container to up.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.up.add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder get up {
    _verticalDirection = VerticalDirection.up;
    return this;
  }

  /// Sets the vertical direction of the flex container to down.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.down.add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder get down {
    _verticalDirection = VerticalDirection.down;
    return this;
  }

  /// Sets the main axis alignment for the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.mainAxisAlignment(MainAxisAlignment.start)
  ///              .add(Text('Child 1')).apply();
  /// Row().rush.mainAxisAlignment(MainAxisAlignment.center)
  ///           .add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder mainAxisAlignment(MainAxisAlignment value) {
    _mainAxisAlignment = value;
    return this;
  }

  /// Sets the cross axis alignment for the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.crossAxisAlignment(CrossAxisAlignment.start)
  ///              .add(Text('Child 1')).apply();
  /// Row().rush.crossAxisAlignment(CrossAxisAlignment.center)
  ///           .add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder crossAxisAlignment(CrossAxisAlignment value) {
    _crossAxisAlignment = value;
    return this;
  }

  /// Sets the main axis size for the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.mainAxisSize(MainAxisSize.max).add(Text('Child 1')).apply();
  /// Row().rush.mainAxisSize(MainAxisSize.min).add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder mainAxisSize(MainAxisSize value) {
    _mainAxisSize = value;
    return this;
  }

  /// Sets the vertical direction for the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.verticalDirection(VerticalDirection.up)
  ///              .add(Text('Child 1')).apply();
  /// Row().rush.verticalDirection(VerticalDirection.down)
  ///           .add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder verticalDirection(VerticalDirection value) {
    _verticalDirection = value;
    return this;
  }

  /// Sets the text direction for the flex container.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.textDirection(TextDirection.ltr)
  ///              .add(Text('Child 1')).apply();
  /// Row().rush.textDirection(TextDirection.rtl).add(Text('Child 1')).apply();
  /// ```
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

/// Extension that provides a convenient way to create a [RushFlexBuilder]
/// instance from a [Flex] widget.
extension RushFlexBuilderExtension on Flex {
  /// Creates a new [RushFlexBuilder] instance.
  ///
  /// Example usage:
  /// ```dart
  /// Column().rush.add(Text('Child 1')).apply();
  /// Row().rush.add(Text('Child 1')).apply();
  /// ```
  RushFlexBuilder get rush => RushFlexBuilder.existing(
        this,
      );
}
