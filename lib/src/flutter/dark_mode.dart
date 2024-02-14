import 'package:flutter/material.dart';
import 'package:rush/rush.dart';

/// A button widget for toggling dark mode in a Rush theme.
///
/// Example usage:
/// ```dart
/// RushDarkModeButton(
///   showSelectedIcon: true,
///   showSingleIcon: false,
///   style: ButtonStyle(
///     backgroundColor: MaterialStateProperty.all(Colors.blue),
///     foregroundColor: MaterialStateProperty.all(Colors.white),
///   ),
/// )
/// ```
class RushDarkModeButton extends StatelessWidget {
  /// Creates a RushDarkModeButton widget.
  const RushDarkModeButton({
    super.key,
    this.style,
    this.showSelectedIcon = false,
    this.showSingleIcon = false,
  });

  /// The style to use for the button widget.
  final ButtonStyle? style;

  /// Whether to show the selected icon.
  final bool showSelectedIcon;

  /// Whether to show a single icon.
  final bool showSingleIcon;

  @override
  Widget build(BuildContext context) {
    return RushBuilder<RushThemeTank>(
      builder: (context, tankTheme) {
        var themeMode = tankTheme.isDark ? ThemeMode.dark : ThemeMode.light;
        return showSingleIcon
            ? IconButton(
                icon: Icon(
                  tankTheme.isDark ? Icons.light_mode : Icons.dark_mode,
                ),
                onPressed: () {
                  RushChangeThemeFlow(
                    themeMode:
                        tankTheme.isDark ? ThemeMode.light : ThemeMode.dark,
                  );
                },
              )
            : SegmentedButton(
                style: style,
                selected: <ThemeMode>{themeMode},
                onSelectionChanged: (themeSet) {
                  themeMode = themeSet.first;
                  RushChangeThemeFlow(
                    themeMode: themeMode,
                  );
                },
                showSelectedIcon: showSelectedIcon,
                segments: const [
                  ButtonSegment(
                    value: ThemeMode.light,
                    icon: Icon(Icons.light_mode),
                  ),
                  ButtonSegment(
                    value: ThemeMode.dark,
                    icon: Icon(Icons.dark_mode),
                  ),
                ],
              );
      },
      actions: const {
        RushChangeThemeFlow,
      },
    );
  }
}
