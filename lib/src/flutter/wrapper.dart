import 'package:flutter/widgets.dart';
import 'package:rush/src/flutter/builder.dart';
import 'package:rush/src/rush.dart';

/// Extension to provide Center functionality for widgets.

extension CenterExtension on Widget {
  ///
  /// Extension method to directly access [Center] with any widget
  /// without wrapping or with dot operator.
  /// Pass the [key] to the [Center] widget.
  /// Example:
  /// ```dart
  /// const Text("Hello World").rush.red700.center.apply().center();
  /// ```
  Widget center({Key? key}) => Center(key: key, child: this);
}

/// Extension to provide Center builder functionality for Rush widgets.

extension RushCenterBuilderExtension on RushWidgetBuilder<Widget> {
  ///
  /// Extension method to directly access [Center] with any Rush widget
  /// without wrapping or with dot operator.
  /// Pass the [key] to the [Center] widget.
  /// Example:
  /// ```dart
  /// const Text("Hello World").rush.red700.center.applyWithCenter();
  /// ```
  Widget applyWithCenter({Key? key}) => Center(key: key, child: apply());
}

/// Extension to provide Expanded builder functionality for Rush widgets.

extension RushExpandedBuilderExtension on RushWidgetBuilder<Widget> {
  ///
  /// Extension method to directly access [Expanded] with any Rush widget
  /// without wrapping or with dot operator.
  /// Pass the [key] and [flex] to the [Expanded] widget.
  /// Example:
  /// ```dart
  /// const Text("Hello World").rush.red700.applyWithExpanded();
  /// ```
  Widget applyWithExpanded({Key? key, int flex = 1}) =>
      Expanded(key: key, flex: flex, child: apply());
}

/// Extension to provide Flexible builder functionality for Rush widgets.
extension RushFlexibleBuilderExtension on RushWidgetBuilder<Widget> {
  ///
  /// Extension method to directly access [Flexible] with any Rush widget
  /// without wrapping or with dot operator.
  /// Pass the [key], [flex] and [fit] to the [Flexible] widget.
  /// Example:
  /// ```dart
  /// const Text("Hello World").rush.red700.applyWithFlexible();
  /// ```
  Widget applyWithFlexible({
    Key? key,
    int flex = 1,
    FlexFit fit = FlexFit.loose,
  }) =>
      Flexible(key: key, flex: flex, fit: fit, child: apply());
}

/// Extension to provide Padding builder functionality for Rush widgets.
extension RushPaddingBuilderExtension on RushWidgetBuilder<Widget> {
  ///
  /// Extension method to directly access [Padding] with any Rush widget
  /// without wrapping or with dot operator.
  /// Pass the [key] and [padding] to the [Padding] widget.
  /// Example:
  /// ```dart
  /// const Text("Hello World").rush.red700.applyWithPadding();
  /// ```
  Widget applyWithPadding({
    Key? key,
    EdgeInsets? padding,
  }) =>
      Padding(key: key, padding: padding ?? Rush.e16, child: apply());
}

/// Extension to provide SizedBox builder functionality for Rush widgets.
extension RushSizedBoxBuilderExtension on RushWidgetBuilder<Widget> {
  ///
  /// Extension method to directly access [SizedBox] with any Rush widget
  /// without wrapping or with dot operator.
  /// Pass the [key], [height] and [width] to the [SizedBox] widget.
  /// Example:
  /// ```dart
  /// const Text("Hello World").rush.red700.applyWithSizedBox();
  /// ```

  Widget applyWithSizedBox({
    Key? key,
    double? height,
    double? width,
  }) =>
      SizedBox(key: key, height: height, width: width, child: apply());
}
