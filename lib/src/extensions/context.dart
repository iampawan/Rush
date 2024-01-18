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

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Extension methods for the [BuildContext] class.
extension RushContextExtensions on BuildContext {
  /// Extension for getting [MediaQueryData]
  /// Check if the window size is extra small.
  ///
  /// Returns `true` if the window width is less than 600 pixels,
  /// `false` otherwise.
  bool get isExtraSmallSize => screenWidth < 600;

  /// Check if the window size is small.
  ///
  /// Returns `true` if the window width is between 600 and 1023 pixels,
  ///  `false` otherwise.
  bool get isSmallSize => screenWidth >= 600 && screenWidth < 1024;

  /// Check if the window size is medium.
  ///
  /// Returns `true` if the window width is between 1024 and 1439 pixels,
  ///  `false` otherwise.
  bool get isMediumSize => screenWidth >= 1024 && screenWidth < 1440;

  /// Check if the window size is large.
  ///
  /// Returns `true` if the window width is between 1440 and 1919 pixels,
  ///  `false` otherwise.
  bool get isLargeSize => screenWidth >= 1440 && screenWidth < 1920;

  /// Check if the window size is extra large.
  ///
  /// Returns `true` if the window width is 1920 pixels or greater,
  ///  `false` otherwise.
  bool get isExtraLargeSize => screenWidth >= 1920;

  ///
  /// Example usage:
  /// ```dart
  /// MediaQueryData mediaQueryData = context.mq;
  /// ```
  MediaQueryData get mq => MediaQuery.of(this);

  /// Returns the size of the screen in logical pixels.
  ///
  /// Example usage:
  /// ```dart
  /// Size screenSize = context.screenSize;
  /// ```
  Size get screenSize => MediaQuery.sizeOf(this);

  /// Returns the density of the screen.
  ///
  /// Example usage:
  /// ```dart
  /// double screenDensity = context.screenDensity;
  /// ```
  double get screenDensity => MediaQuery.devicePixelRatioOf(this);

  /// Returns the device pixel ratio of the screen.
  ///
  /// Example usage:
  /// ```dart
  /// double devicePixelRatio = context.devicePixelRatio;
  /// ```
  double get devicePixelRatio => mq.devicePixelRatio;

  /// Returns the padding of the screen.
  ///
  /// Example usage:
  /// ```dart
  /// EdgeInsets screenPadding = context.screenPadding;
  /// ```
  EdgeInsets get screenPadding => MediaQuery.paddingOf(this);

  /// Returns the width of the screen in logical pixels.
  ///
  /// Example usage:
  /// ```dart
  /// double screenWidth = context.screenWidth;
  /// ```
  double get screenWidth => screenSize.width;

  /// Returns the height of the screen in logical pixels.
  ///
  /// Example usage:
  /// ```dart
  /// double screenHeight = context.screenHeight;
  /// ```
  double get screenHeight => screenSize.height;

  /// Get the screen width in percentage based on the device's screen width.
  ///
  /// Example:
  /// ```dart
  /// double screenWidthInPercentage = context.screenWidthInPercentage;
  /// ```
  double get screenWidthInPercentage => screenWidth / 100;

  /// Get the screen height in percentage based on the device's screen height.
  ///
  /// Example:
  /// ```dart
  /// double screenHeightInPercentage = context.screenHeightInPercentage;
  /// ```
  double get screenHeightInPercentage => screenHeight / 100;

  /// Get the horizontal safe area padding of the device's screen.
  ///
  /// Example:
  /// ```dart
  /// double safeAreaHorizontal = context._safeAreaHorizontal;
  /// ```

  double get _safeAreaHorizontal => screenPadding.left + screenPadding.right;

  /// Get the vertical safe area padding of the device's screen.
  ///
  /// Example:
  /// ```dart
  /// double safeAreaVertical = context._safeAreaVertical;
  /// ```
  double get _safeAreaVertical => screenPadding.top + screenPadding.bottom;

  /// Get the screen width in percentage based on the device's screen width,
  /// taking into account the safe area padding horizontally.
  ///
  /// Example:
  /// ```dart
  /// double safeScreenWidthInPercentage = context.safeScreenWidthInPercentage;
  /// ```
  double get safeScreenWidthInPercentage =>
      (screenWidth - _safeAreaHorizontal) / 100;

  /// Get the screen height in percentage based on the device's screen height,
  /// taking into account the safe area padding vertically.
  ///
  /// Example:
  /// ```dart
  ///double safeScreenHeightInPercentage = context.safeScreenHeightInPercentage;
  /// ```
  double get safeScreenHeightInPercentage =>
      (screenHeight - _safeAreaVertical) / 100;

  /// Gives you the power to get a portion of the height.
  /// Useful for responsive applications.
  ///
  /// [dividedBy] is for when you want to have a portion of the value you
  /// would get like for example: if you want a value that represents a third
  /// of the screen you can set it to 3, and you will get a third of the height
  ///
  /// [reducedBy] is a percentage value of how much of the height you want
  /// if you for example want 44% of the height, then you reduce it by 56%.
  ///
  /// Example:
  /// ```dart
  /// double portionOfHeight = heightTransformer(dividedBy: 3, reducedBy: 56);
  /// ```
  double heightTransformer({double dividedBy = 1, double reducedBy = 0.0}) =>
      (screenSize.height - ((screenSize.height / 100) * reducedBy)) / dividedBy;

  /// Gives you the power to get a portion of the width.
  /// Useful for responsive applications.
  ///
  /// [dividedBy] is for when you want to have a portion of the value you
  /// would get like for example: if you want a value that represents a third
  /// of the screen you can set it to 3, and you will get a third of the width
  ///
  /// [reducedBy] is a percentage value of how much of the width you want
  /// if you for example want 44% of the width, then you reduce it by 56%.
  ///
  /// Example:
  /// ```dart
  /// double width = widthTransformer(dividedBy: 2, reducedBy: 10);
  /// print(width); // Output: half of the width with 10% reduction
  /// ```
  double widthTransformer({double dividedBy = 1, double reducedBy = 0.0}) =>
      (screenSize.width - ((screenSize.width / 100) * reducedBy)) / dividedBy;

  /// Divide the height proportionally by the given value
  ///
  /// [dividedBy] is for when you want to divide the height by a specific value.
  /// [reducedByW] is a percentage value of how much of the width
  /// you want to reduce.
  /// [reducedByH] is a percentage value of how much of the height
  /// you want to reduce.
  ///
  /// Example:
  /// ```dart
  /// double ratio = ratio(dividedBy: 2, reducedByW: 10, reducedByH: 20);
  /// print(ratio); // Output: ratio of height divided by width with
  /// 10% width reduction and 20% height reduction
  /// ```
  double ratio({
    double dividedBy = 1,
    double reducedByW = 0.0,
    double reducedByH = 0.0,
  }) =>
      heightTransformer(dividedBy: dividedBy, reducedBy: reducedByH) /
      widthTransformer(dividedBy: dividedBy, reducedBy: reducedByW);

  /// Returns the [FlutterView] that the provided `context` will render into.
  ///
  /// Example:
  /// ```dart
  /// FlutterView view = context.view;
  /// ```
  FlutterView get view => View.of(this);

  /// Returns the [FlutterView] that the provided `context` will render into.
  ///
  /// Example:
  /// ```dart
  /// FlutterView? maybeView = context.maybeView;
  /// ```
  FlutterView? get maybeView => View.maybeOf(this);

  /// Returns the orientation of the device using [MediaQuery].
  ///
  /// Example:
  /// ```dart
  /// Orientation orientation = context.orientation;
  /// ```
  Orientation get orientation => MediaQuery.orientationOf(this);

  /// Returns `true` if the orientation of the device is landscape.
  ///
  /// Example:
  /// ```dart
  /// bool isLandscape = context.isLandscape;
  /// ```
  bool get isLandscape => orientation == Orientation.landscape;

  /// Returns `true` if the width of the device is larger than 800.
  ///
  /// Example:
  /// ```dart
  /// bool canShowNavRail = context.canShowNavRail;
  /// ```
  bool get canShowNavRail => screenWidth > 800;

  /// Invokes the specified `intent` action using [Actions].
  ///
  /// Example:
  /// ```dart
  /// bool? result = context.invokeAction(intent);
  /// ```
  bool? invokeAction(Intent intent) => Actions.invoke(this, intent) as bool?;

  ///
  /// Inserts the given `builder` widget into the overlay.
  /// The newly inserted widget will always be at the top.
  ///
  /// Example:
  /// ```dart
  /// OverlayEntry entry = context.addOverlay(builder);
  /// ```
  OverlayEntry addOverlay(Widget widget) {
    final entry = OverlayEntry(builder: (_) => widget);
    Overlay.of(this).insert(entry);
    return entry;
  }

  /// Hides the current keyboard.
  ///
  /// Example:
  /// ```dart
  /// context.hideKeyboard();
  /// ```
  void hideKeyboard() {
    final currentFocus = FocusScope.of(this);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}

/// Extension for theme related functionalities on BuildContext.
extension RushThemeExtensions on BuildContext {
  /// Shortcut to access the theme data.
  ///
  /// Example usage:
  /// ```dart
  /// ThemeData theme = context.theme;
  /// ```
  ThemeData get theme => Theme.of(this);

  /// Shortcut to access the text theme.
  ///
  /// Example usage:
  /// ```dart
  /// TextTheme textTheme = context.textTheme;
  /// ```
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// Extension for getting [CupertinoThemeData].
  ///
  /// Example usage:
  /// ```dart
  /// CupertinoThemeData cupertinoTheme = context.cupertinoTheme;
  /// ```
  CupertinoThemeData get cupertinoTheme => CupertinoTheme.of(this);

  /// Extension for getting the caption text style.
  ///
  /// Example usage:
  /// ```dart
  /// TextStyle? captionStyle = context.captionStyle;
  /// ```
  TextStyle? get captionStyle => bodySmall;

  /// Returns the color scheme used by the theme.
  ///
  /// Example usage:
  /// ```dart
  /// ColorScheme colorScheme = context.colors;
  /// ```
  ColorScheme get colors => theme.colorScheme;

  /// Returns a copy of the large display text style with the color set to
  /// the surface color.
  TextStyle? get displayLarge => textTheme.displayLarge?.copyWith(
        color: colors.onSurface,
      );

  /// Returns a copy of the medium display text style with the color set to
  /// the surface color.
  TextStyle? get displayMedium => textTheme.displayMedium?.copyWith(
        color: colors.onSurface,
      );

  /// Returns a copy of the small display text style with the color set to
  /// the surface color.
  TextStyle? get displaySmall => textTheme.displaySmall?.copyWith(
        color: colors.onSurface,
      );

  /// Returns a copy of the large headline text style with the color set to
  /// the surface color.
  TextStyle? get headlineLarge => textTheme.headlineLarge?.copyWith(
        color: colors.onSurface,
      );

  /// Returns a copy of the medium headline text style with the color set to
  /// the surface color.
  TextStyle? get headlineMedium => textTheme.headlineMedium?.copyWith(
        color: colors.onSurface,
      );

  /// Returns a copy of the small headline text style with the color set to
  /// the surface color.
  TextStyle? get headlineSmall => textTheme.headlineSmall?.copyWith(
        color: colors.onSurface,
      );

  /// Returns a copy of the large title text style with the color set to
  /// the surface color.
  TextStyle? get titleLarge => textTheme.titleLarge?.copyWith(
        color: colors.onSurface,
      );

  /// Returns a copy of the medium title text style with the color set to
  /// the surface color.
  TextStyle? get titleMedium => textTheme.titleMedium?.copyWith(
        color: colors.onSurface,
      );

  /// Returns a copy of the small title text style with the color set to
  /// the surface color.
  TextStyle? get titleSmall => textTheme.titleSmall?.copyWith(
        color: colors.onSurface,
      );

  /// Returns a copy of the large label text style with the color set to
  /// the surface color.
  TextStyle? get labelLarge => textTheme.labelLarge?.copyWith(
        color: colors.onSurface,
      );

  /// Returns a copy of the medium label text style with the color set to
  /// the surface color.
  TextStyle? get labelMedium => textTheme.labelMedium?.copyWith(
        color: colors.onSurface,
      );

  /// Returns a copy of the small label text style with the color set to
  /// the surface color.
  TextStyle? get labelSmall => textTheme.labelSmall?.copyWith(
        color: colors.onSurface,
      );

  /// Returns a copy of the large body text style with the color set to
  /// the surface color.
  TextStyle? get bodyLarge => textTheme.bodyLarge?.copyWith(
        color: colors.onSurface,
      );

  /// Returns a copy of the medium body text style with the color set to
  /// the surface color.
  TextStyle? get bodyMedium => textTheme.bodyMedium?.copyWith(
        color: colors.onSurface,
      );

  /// Returns a copy of the small body text style with the color set to
  /// the surface color.
  TextStyle? get bodySmall => textTheme.bodySmall?.copyWith(
        color: colors.onSurface,
      );

  ///
  ///The foreground color for widgets (knobs, text, overscroll edge effect etc).
  ///
  /// Accent color is also known as the secondary color.
  ///
  Color get accentColor => theme.colorScheme.secondary;

  ///
  /// The background color for major parts of the app (toolbars, tab bars, etc).
  ///
  Color get primaryColor => theme.primaryColor;

  ///
  /// A color that contrasts with the [primaryColor].
  ///
  Color get backgroundColor => theme.colorScheme.background;

  ///
  /// The default color of [MaterialType.canvas] [Material].
  ///
  Color get canvasColor => theme.canvasColor;

  ///
  /// The default color of [MaterialType.card] [Material].
  ///
  Color get cardColor => theme.cardColor;

  ///
  /// The default brightness of the [Theme].
  ///
  Brightness get brightness => theme.brightness;

  ///
  /// Checks if the [ThemeData] of the current [BuildContext] is dark.
  ///
  bool get isDarkMode => theme.brightness == Brightness.dark;
}

/// Extension for navigation related functionalities on BuildContext.
extension RushNavigationExtensions on BuildContext {
  /// Pushes a new route onto the navigator.
  ///
  /// This method is used to push a new route onto the navigator stack.
  /// It takes a [route] parameter
  /// of type [Route<T>] which represents the route to be
  /// pushed onto the navigator.
  ///
  /// Example usage:
  /// ```dart
  /// Navigator.of(context).rushPush(MyRoute());
  /// ```
  Future<T?> rushPush<T>(Route<T> route) => Navigator.of(this).push(route);

  /// Pops the topmost route off the navigator.
  ///
  /// This method is used to pop the topmost route off the navigator stack.
  /// It does not take any parameters.
  ///
  /// Example usage:
  /// ```dart
  /// Navigator.of(context).rushPop();
  /// ```
  void rushPop() => Navigator.of(this).pop();
}

/// Extension for dialog and snackbar related functionalities on BuildContext.
extension RushDialogSnackbarExtensions on BuildContext {
  /// Shows a dialog with the given widget.
  ///
  /// This method displays a dialog box on the screen using the current
  /// `BuildContext` and the provided `dialog` widget. The dialog widget
  /// is typically a `Dialog` or a custom widget that extends `Dialog`.
  ///
  /// Example:
  /// ```dart
  /// showDialog(
  ///   context: context,
  ///   builder: (_) => MyDialogWidget(),
  /// );
  /// ```
  Future<void> rushShowDialog(Widget dialog) {
    return showDialog(context: this, builder: (_) => dialog);
  }

  /// Shows a snackbar with the given snackbar widget.
  ///
  /// This method displays a snackbar at the bottom of the screen using the
  /// current `BuildContext` and the provided `snackbar` widget. The snackbar
  /// widget is typically a `SnackBar` or a custom widget
  /// that extends `SnackBar`.
  ///
  /// Example:
  /// ```dart
  /// ScaffoldMessenger.of(context).showSnackBar(
  ///   SnackBar(content: Text('Hello, World!')),
  /// );
  /// ```
  void rushShowSnackbar(SnackBar snackbar) {
    ScaffoldMessenger.of(this).showSnackBar(snackbar);
  }
}
