import 'package:flutter/material.dart';
import 'package:rush/rush.dart';

/// Represents a tank for managing the theme mode in Rush.
///
/// Example usage:
/// ```dart
/// RushThemeTank themeTank = RushEngine.getTank<RushThemeTank>();
/// ```
class RushThemeTank extends RushTank {
  ThemeMode _themeMode = ThemeMode.system;

  /// The current theme mode.
  ThemeMode get themeMode => _themeMode;

  /// Whether the current theme mode is dark.
  bool get isDark => _themeMode == ThemeMode.dark;

  /// Whether the current theme mode is light.
  bool get isLight => _themeMode == ThemeMode.light;

  /// Whether the current theme mode is system.
  bool get isSystem => _themeMode == ThemeMode.system;
}

/// Represents a flow for changing the theme mode in Rush.
///
/// Example usage:
/// ```dart
/// RushChangeThemeFlow(themeMode: ThemeMode.dark);
/// ```
class RushChangeThemeFlow extends RushFlow<RushThemeTank> {
  /// Creates a RushChangeThemeFlow.
  RushChangeThemeFlow({required this.themeMode});

  /// The theme mode to change to.
  final ThemeMode themeMode;
  @override
  void execute() {
    tank._themeMode = themeMode;
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
  final Widget Function(BuildContext context, RushThemeTank themeTank)? builder;

  @override
  Widget build(BuildContext context) {
    RushEngine.registerTank(RushThemeTank());
    return RushSync<RushThemeTank>(
      actions: const {RushChangeThemeFlow},
      builder: (context, tank) {
        return builder?.call(context, tank) ?? const SizedBox();
      },
    );
  }
}
