import 'package:flutter/material.dart';
import 'package:rush/rush.dart';

/// Represents a flow for changing the theme mode in Rush.
///
/// Example usage:
/// ```dart
/// RushChangeThemeFlow(themeMode: ThemeMode.dark);
/// ```
class RushChangeThemeFlow extends RushFlow {
  /// Creates a RushChangeThemeFlow.
  RushChangeThemeFlow({required this.themeMode});

  /// The theme mode to change to.
  final ThemeMode themeMode;
  @override
  void execute() {
    Rush.themeMode = themeMode;
  }
}

/// A builder widget for managing the theme mode in Rush.
/// Usually used as the root widget of a Flutter app.
/// Material App can be wrapped with this widget.
///
/// Example usage:
/// ```dart
/// RushThemeBuilder(
///   builder: (context, themeTank) {
///     // Your widget tree here
///   },
/// )
/// ```
class RushThemeBuilder extends StatelessWidget {
  /// Creates a RushThemeBuilder widget.
  const RushThemeBuilder({
    required this.builder,
    super.key,
  });

  /// The builder for this widget.
  final Widget Function(BuildContext context, ThemeMode theme)? builder;

  @override
  Widget build(BuildContext context) {
    return RushSync<RushTank>(
      actions: const {RushChangeThemeFlow},
      builder: (context, tank, status) {
        return builder?.call(context, Rush.themeMode) ?? const SizedBox();
      },
    );
  }
}
