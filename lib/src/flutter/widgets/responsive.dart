import 'package:flutter/material.dart';
import 'package:rush/rush.dart';

/// A responsive layout widget that adapts its child based on the screen size.
///
/// Example usage:
/// ```dart
/// RushResponsiveLayout(
///   mobileLayout: MobileLayout(),
///   tabletLayout: TabletLayout(),
///   desktopLayout: DesktopLayout(),
/// )
/// ```
class RushResponsiveLayout extends StatelessWidget {
  /// Creates a new [RushResponsiveLayout] instance.
  const RushResponsiveLayout({
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
    super.key,
  });

  /// The layout widget for mobile devices.
  final Widget mobileLayout;

  /// The layout widget for tablet devices.
  final Widget tabletLayout;

  /// The layout widget for desktop devices.
  final Widget desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      key: key,
      builder: (context, constraints) {
        if (context.isDesktopSized) {
          return desktopLayout;
        } else if (context.isTabletSized) {
          return tabletLayout;
        } else {
          return mobileLayout;
        }
      },
    );
  }
}

/// A layout switcher widget that adapts its child based on the screen size.
///
/// Example usage:
/// ```dart
/// RushLayoutSwitcher(
///   smallScreenLayout: SmallScreenLayout(),
///   largeScreenLayout: LargeScreenLayout(),
/// )
/// ```
class RushLayoutSwitcher extends StatelessWidget {
  /// Creates a new [RushLayoutSwitcher] instance.
  const RushLayoutSwitcher({
    required this.smallScreenLayout,
    required this.largeScreenLayout,
    super.key,
  });

  /// The layout widget for small screens.
  final Widget smallScreenLayout;

  /// The layout widget for large screens.
  final Widget largeScreenLayout;

  @override
  Widget build(BuildContext context) {
    return RushConditional(
      key: key,
      condition: context.isMobileSized,
      builder: (context) => smallScreenLayout,
      fallback: (context) => largeScreenLayout,
    );
  }
}

/// A responsive sized box widget that adapts its size based on the screen size.
///
/// Example usage:
/// ```dart
/// RushResponsiveSizedBox(
///   mobile: 8.0,
///   tablet: 16.0,
///   desktop: 32.0,
///   multiplier: 1,
/// )
/// ```
class RushResponsiveSizedBox extends StatelessWidget {
  /// Creates a new [RushResponsiveSizedBox] instance.
  const RushResponsiveSizedBox({
    super.key,
    this.mobile = 8.0,
    this.tablet,
    this.desktop,
    this.multiplier = 1,
  });

  /// The size of the box for mobile devices.
  final double mobile;

  /// The size of the box for tablet devices.
  final double? tablet;

  /// The size of the box for desktop devices.
  final double? desktop;

  /// The multiplier to adjust the size.
  final double multiplier;

  @override
  Widget build(BuildContext context) {
    double size;
    if (context.isMobileSized) {
      size = mobile * multiplier;
    } else if (context.isTabletSized) {
      if (tablet == null) {
        size = tablet! * multiplier;
      } else {
        size = mobile * multiplier * 2;
      }
    } else {
      size = desktop ?? mobile * multiplier;
    }
    return RushSquareBox(
      size,
      key: key,
    );
  }
}

/// A typedef representing a callback function used to build the UI
/// based on the current screen adaptation settings.
typedef RushAdaptiveChildBuilder = Widget Function(
  BuildContext context,
  // ignore: avoid_positional_boolean_parameters
  bool scaled,
);

/// Defines the different scaling options for screen adaptation.
enum RushAdaptiveScaleType {
  /// No scaling is applied.
  none,

  /// Scale based on the screen's orientation and aspect ratio.
  auto,

  /// Scale based on the screen width.
  width,
}

/// A widget that enables screen adaptation and scaling in Flutter applications.
class RushAdaptive extends StatefulWidget {
  /// Creates a `RushAdaptive` widget.
  const RushAdaptive({
    required this.designWidth,
    required this.builder,
    super.key,
    this.scaleType = RushAdaptiveScaleType.auto,
  });

  /// The width (in pixels) used as the reference for screen adaptation.
  final double designWidth;

  /// The callback function used to build the UI
  /// based on the current screen adaptation settings.
  final RushAdaptiveChildBuilder builder;

  /// The scaling type to be used for screen adaptation.
  /// Defaults to `RushAdaptiveScaleType.auto`.
  final RushAdaptiveScaleType scaleType;

  @override
  State<RushAdaptive> createState() => _RushAdaptiveState();
}

class _RushAdaptiveState extends State<RushAdaptive>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    if (context.view.physicalSize.isEmpty) {
      // Fallback case when the view's size is not available
      return RushAdaptiveScope._(
        designWidth: widget.designWidth,
        scaleType: widget.scaleType,
        scaleRatio: 1,
        child: const SizedBox(),
      );
    }

    final sceneSize = context.view.physicalSize / context.view.devicePixelRatio;
    if (widget.scaleType == RushAdaptiveScaleType.none ||
        (widget.scaleType == RushAdaptiveScaleType.auto &&
            sceneSize.width >= sceneSize.height * 1.1)) {
      // No scaling or scaling based on aspect ratio
      return RushAdaptiveScope._(
        designWidth: widget.designWidth,
        scaleType: widget.scaleType,
        scaleRatio: 1,
        child: Builder(
          builder: (BuildContext context) => widget.builder(context, false),
        ),
      );
    }

    final scale = sceneSize.width / widget.designWidth;

    // Apply scaling to the UI based on the scale factor
    return FractionallySizedBox(
      widthFactor: 1 / scale,
      heightFactor: 1 / scale,
      child: Transform.scale(
        scale: scale,
        child: RushAdaptiveScope._(
          designWidth: widget.designWidth,
          scaleType: widget.scaleType,
          scaleRatio: scale,
          child: widget.builder(context, true),
        ),
      ),
    );
  }
}

/// A widget that provides adaptive scaling functionality.
///
/// This widget is used to wrap the part of the widget tree
/// that needs to be scaled based on the device's screen size and aspect ratio.
///
/// Example:
/// ```dart
/// RushAdaptiveScope(
///   designWidth: 375,
///   scaleType: RushAdaptiveScaleType.auto,
///   scaleRatio: 1.2,
///   child: MyAdaptiveWidget(),
/// )
/// ```
class RushAdaptiveScope extends InheritedWidget {
  RushAdaptiveScope._({
    required this.designWidth,
    required this.scaleType,
    required this.scaleRatio,
    required Widget child,
  }) : super(child: _MediaQueryDataProvider(child: child));

  /// The design width used for adaptive scaling.
  final double designWidth;

  /// The scale type used for adaptive scaling.
  final RushAdaptiveScaleType scaleType;

  /// The scale ratio used for adaptive scaling.
  final double scaleRatio;

  /// Retrieves the nearest ancestor [RushAdaptiveScope] widget
  /// from the given [BuildContext].
  static RushAdaptiveScope of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<RushAdaptiveScope>()!;

  /// Retrieves the nearest ancestor [RushAdaptiveScope] widget
  /// from the given [BuildContext], if available.
  static RushAdaptiveScope? maybeOf(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<RushAdaptiveScope>();

  @override
  bool updateShouldNotify(covariant RushAdaptiveScope oldWidget) =>
      oldWidget.designWidth != designWidth ||
      oldWidget.scaleType != scaleType ||
      oldWidget.scaleRatio != scaleRatio;
}

class _MediaQueryDataProvider extends StatelessWidget {
  const _MediaQueryDataProvider({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final data = RushAdaptiveScope.of(context);
    final parent = context.mq;
    return MediaQuery(
      data: parent.copyWith(
        size: parent.size / data.scaleRatio,
        devicePixelRatio: parent.devicePixelRatio * data.scaleRatio,
        padding: parent.padding / data.scaleRatio,
        viewPadding: parent.viewPadding / data.scaleRatio,
        viewInsets: parent.viewInsets / data.scaleRatio,
        systemGestureInsets: parent.systemGestureInsets / data.scaleRatio,
      ),
      child: child,
    );
  }
}

/// A widget that provides adaptive navigation functionality.
///
/// This widget is used to display a navigation bar with adaptive behavior,
/// allowing the user to select different destinations.
///
/// Example:
/// ```dart
/// RushAdaptiveNavigation(
///   destinations: [
///     NavigationDestination(
///       icon: Icons.home,
///       title: 'Home',
///     ),
///     NavigationDestination(
///       icon: Icons.settings,
///       title: 'Settings',
///     ),
///   ],
///   selectedIndex: _selectedIndex,
///   onDestinationSelected: (index) {
///     setState(() {
///       _selectedIndex = index;
///     });
///   },
///   child: MyAdaptiveWidget(),
/// )
/// ```
class RushAdaptiveNavigation extends StatelessWidget {
  /// Creates a new [RushAdaptiveNavigation] instance.
  const RushAdaptiveNavigation({
    required this.destinations,
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.child,
    super.key,
    this.backgroundColor,
    this.elevation,
    this.useIndicator,
    this.indicatorColor,
    this.indicatorShape,
  });

  /// List of navigation destinations.
  final List<NavigationDestination> destinations;

  /// The index of the currently selected destination.
  final int selectedIndex;

  /// Callback function when a destination is selected.
  final void Function(int index) onDestinationSelected;

  /// The child widget to display.
  final Widget child;

  /// The background color of the navigation bar.
  final Color? backgroundColor;

  /// The elevation of the navigation bar.
  final double? elevation;

  /// Whether to use an indicator for the selected destination.
  final bool? useIndicator;

  /// The color of the indicator.
  final Color? indicatorColor;

  /// The shape of the indicator.
  final ShapeBorder? indicatorShape;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, dimens) {
        // Tablet Layout
        if (dimens.maxWidth >= 600) {
          return Scaffold(
            body: Row(
              children: [
                NavigationRail(
                  key: key,
                  backgroundColor: backgroundColor,
                  indicatorShape: indicatorShape,
                  elevation: elevation,
                  useIndicator: useIndicator,
                  indicatorColor: indicatorColor,
                  extended: dimens.maxWidth >= 800,
                  minExtendedWidth: 180,
                  destinations: destinations
                      .map(
                        (e) => NavigationRailDestination(
                          icon: e.icon,
                          label: Text(e.label),
                        ),
                      )
                      .toList(),
                  selectedIndex: selectedIndex,
                  onDestinationSelected: onDestinationSelected,
                ),
                Expanded(child: child),
              ],
            ),
          );
        }
        // Mobile Layout
        return Scaffold(
          body: child,
          bottomNavigationBar: NavigationBar(
            key: key,
            backgroundColor: backgroundColor,
            indicatorColor: indicatorColor,
            indicatorShape: indicatorShape,
            elevation: elevation,
            destinations: destinations,
            selectedIndex: selectedIndex,
            onDestinationSelected: onDestinationSelected,
          ),
        );
      },
    );
  }
}
