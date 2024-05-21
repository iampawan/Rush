// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rush/src/extensions/context.dart';

void main() {
  group('RushContextExtensions Screen Size Tests', () {
    testWidgets('isExtraSmallSize returns true for width less than 600',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MediaQuery(
            data: const MediaQueryData(
              size: Size(500, 800),
            ), // Mocking MediaQueryData
            child: Builder(
              builder: (BuildContext context) {
                expect(context.isExtraSmallSize, true);
                return const Placeholder();
              },
            ),
          ),
        ),
      );
    });

    testWidgets('isSmallSize returns true for width between 600 and 1023',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MediaQuery(
            data: const MediaQueryData(
              size: Size(800, 800),
            ), // Mocking MediaQueryData
            child: Builder(
              builder: (BuildContext context) {
                expect(context.isSmallSize, true);
                return const Placeholder();
              },
            ),
          ),
        ),
      );
    });

    testWidgets('isMediumSize returns true for width between 1024 and 1439',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MediaQuery(
            data: const MediaQueryData(
              size: Size(1200, 800),
            ), // Mocking MediaQueryData
            child: Builder(
              builder: (BuildContext context) {
                expect(context.isMediumSize, true);
                return const Placeholder();
              },
            ),
          ),
        ),
      );
    });

    testWidgets('isLargeSize returns true for width between 1440 and 1919',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MediaQuery(
            data: const MediaQueryData(
              size: Size(1600, 800),
            ), // Mocking MediaQueryData
            child: Builder(
              builder: (BuildContext context) {
                expect(context.isLargeSize, true);
                return const Placeholder();
              },
            ),
          ),
        ),
      );
    });

    testWidgets('isExtraLargeSize returns true for width greater than 1920',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MediaQuery(
            data: const MediaQueryData(
              size: Size(2000, 800),
            ), // Mocking MediaQueryData
            child: Builder(
              builder: (BuildContext context) {
                expect(context.isExtraLargeSize, true);
                return const Placeholder();
              },
            ),
          ),
        ),
      );
    });
    testWidgets('mq returns the correct MediaQueryData',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              final mediaQueryData = context.mq;
              expect(mediaQueryData, equals(MediaQuery.of(context)));
              return const Placeholder();
            },
          ),
        ),
      );
    });

    testWidgets('screenSize returns the correct screen size',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              final screenSize = context.screenSize;
              expect(screenSize, equals(MediaQuery.sizeOf(context)));
              return const Placeholder();
            },
          ),
        ),
      );
    });

    testWidgets('screenDensity returns the correct screen density',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              final screenDensity = context.screenDensity;
              expect(
                screenDensity,
                equals(MediaQuery.devicePixelRatioOf(context)),
              );
              return const Placeholder();
            },
          ),
        ),
      );
    });

    testWidgets('devicePixelRatio returns the correct device pixel ratio',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              final devicePixelRatio = context.devicePixelRatio;
              expect(devicePixelRatio, equals(context.mq.devicePixelRatio));
              return const Placeholder();
            },
          ),
        ),
      );
    });

    testWidgets('screenPadding returns the correct screen padding',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              final screenPadding = context.screenPadding;
              expect(screenPadding, equals(MediaQuery.paddingOf(context)));
              return const Placeholder();
            },
          ),
        ),
      );
    });

    testWidgets('screenWidth returns the correct screen width',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              final screenWidth = context.screenWidth;
              expect(screenWidth, equals(context.screenSize.width));
              return const Placeholder();
            },
          ),
        ),
      );
    });

    testWidgets('screenHeight returns the correct screen height',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              final screenHeight = context.screenHeight;
              expect(screenHeight, equals(context.screenSize.height));
              return const Placeholder();
            },
          ),
        ),
      );
    });

    testWidgets(
        'screenWidthInPercentage returns the correct screen width in percentage',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              final screenWidthInPercentage = context.screenWidthInPercentage;
              expect(
                screenWidthInPercentage,
                equals(context.screenWidth / 100),
              );
              return const Placeholder();
            },
          ),
        ),
      );
    });

    testWidgets(
        'screenHeightInPercentage returns the correct screen height in percentage',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              final screenHeightInPercentage = context.screenHeightInPercentage;
              expect(
                screenHeightInPercentage,
                equals(context.screenHeight / 100),
              );
              return const Placeholder();
            },
          ),
        ),
      );
    });

    testWidgets(
        'safeScreenWidthInPercentage returns the correct safe screen width in percentage',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              final safeScreenWidthInPercentage =
                  context.safeScreenWidthInPercentage;
              expect(
                safeScreenWidthInPercentage,
                equals(
                  (context.screenWidth -
                          (context.screenPadding.left +
                              context.screenPadding.right)) /
                      100,
                ),
              );
              return const Placeholder();
            },
          ),
        ),
      );
    });

    testWidgets(
        'safeScreenHeightInPercentage returns the correct safe screen height in percentage',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              final safeScreenHeightInPercentage =
                  context.safeScreenHeightInPercentage;
              expect(
                safeScreenHeightInPercentage,
                equals(
                  (context.screenHeight -
                          (context.screenPadding.top +
                              context.screenPadding.bottom)) /
                      100,
                ),
              );
              return const Placeholder();
            },
          ),
        ),
      );
    });

    testWidgets('Test heightTransformer method', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MediaQuery(
            data: const MediaQueryData(
              size: Size(500, 800),
            ),
            child: Builder(
              builder: (context) {
                // Test heightTransformer method
                final height =
                    context.heightTransformer(dividedBy: 4, reducedBy: 10);
                expect(height, 180);

                // Return an empty container to satisfy the builder's return type
                return Container();
              },
            ),
          ),
        ),
      );
    });

    testWidgets('Test widthTransformer method', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MediaQuery(
            data: const MediaQueryData(
              size: Size(500, 800),
            ),
            child: Builder(
              builder: (context) {
                // Test widthTransformer method
                final width =
                    context.widthTransformer(dividedBy: 2, reducedBy: 10);
                expect(width, 225);

                // Return an empty container to satisfy the builder's return type
                return Container();
              },
            ),
          ),
        ),
      );
    });

    testWidgets('Test ratio method', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MediaQuery(
            data: const MediaQueryData(
              size: Size(500, 800),
            ),
            child: Builder(
              builder: (context) {
                // Test ratio method
                final ratio =
                    context.ratio(dividedBy: 2, reducedByW: 10, reducedByH: 20);
                expect(ratio.roundToDouble(), 1.42222.roundToDouble());

                // Return an empty container to satisfy the builder's return type
                return Container();
              },
            ),
          ),
        ),
      );
    });
    testWidgets('Test view method', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MediaQuery(
            data: const MediaQueryData(
              size: Size(500, 800),
              devicePixelRatio: 2,
            ),
            child: Builder(
              builder: (context) {
                // Test view method
                final view = context.view;
                expect(view, isNotNull);

                // Return an empty container to satisfy the builder's return type
                return Container();
              },
            ),
          ),
        ),
      );
    });

    testWidgets('Test orientation method', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              // Test orientation method
              final isLandscape = context.isLandscape;
              expect(isLandscape, true);

              // Return an empty container to satisfy the builder's return type
              return Container();
            },
          ),
        ),
      );
    });

    testWidgets('Can Show Navigation Rail', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MediaQuery(
            data: const MediaQueryData(
              size: Size(1000, 800),
            ),
            child: Builder(
              builder: (context) {
                // Test nav rail visibility
                final isNavRailVisible = context.canShowNavRail;
                expect(isNavRailVisible, true);

                // Return an empty container to satisfy the builder's return type
                return Container();
              },
            ),
          ),
        ),
      );
    });

    testWidgets('Test invokeAction method', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Actions(
            actions: <Type, Action<Intent>>{
              // Add the TestAction to the Actions widget so it can be invoked
              TestIntent: TestAction(),
            },
            child: Builder(
              builder: (context) {
                // Test invokeAction method
                final result = context.invokeAction(TestIntent());
                expect(result, true);

                // Return an empty container to satisfy the builder's return type
                return Container();
              },
            ),
          ),
        ),
      );
    });

    testWidgets('Test addOverlay method', (WidgetTester tester) async {
      // Define a unique key for the widget in the OverlayEntry
      final Key key = UniqueKey();
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              // Schedule the addOverlay method to be called after the current frame has been rendered
              WidgetsBinding.instance.addPostFrameCallback((_) {
                // Test addOverlay method
                context.addOverlay(
                  Container(
                    key: key,
                  ),
                );
              });

              // Return an empty container to satisfy the builder's return type
              return Container();
            },
          ),
        ),
      );
      // Pump the widget tree to add the overlay entry to the overlay
      await tester.pumpAndSettle();

      // Check if the widget in the overlay entry was added to the widget tree
      expect(find.byKey(key), findsOneWidget);
    });

    testWidgets('Test hideKeyboard method', (WidgetTester tester) async {
      // Create a dummy widget to get a BuildContext
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              // Create a focus node and request focus
              final focusNode = FocusNode();
              FocusScope.of(context).requestFocus(focusNode);

              // Test hideKeyboard method
              context.hideKeyboard();

              // Check if the focus node has lost focus
              expect(focusNode.hasFocus, isFalse);

              // Return an empty container to satisfy the builder's return type
              return Container();
            },
          ),
        ),
      );
    });
  });
  group('RushContextExtensions Theme Tests', () {
    testWidgets('Test theme data', (WidgetTester tester) async {
      // Define the expected values
      const Color expectedPrimaryColor = Colors.blue;
      const Color expectedAccentColor = Colors.amber;
      const expectedBgColor = Colors.white;
      final expectedCanvasColor = Colors.grey.shade50;
      final expectedCardColor = Colors.grey.shade100;

      const expectedBrightness = Brightness.light;
      const expectedFontFamily = 'Roboto';
      const expectedCaptionFontSize = 12.0;

      // Create a dummy widget to get a BuildContext
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData(
            fontFamily: expectedFontFamily,
            primaryColor: expectedPrimaryColor,
            brightness: expectedBrightness,
            cardColor: expectedCardColor,
            canvasColor: expectedCanvasColor,
            textTheme: const TextTheme(
              bodySmall: TextStyle(fontSize: expectedCaptionFontSize),
            ),
            colorScheme: ColorScheme.fromSwatch().copyWith(
              secondary: expectedAccentColor,
              surface: expectedBgColor,
            ),
          ),
          home: Builder(
            builder: (context) {
              // Test theme data
              final theme = context.theme;
              expect(theme.primaryColor, expectedPrimaryColor);
              expect(theme.colorScheme.secondary, expectedAccentColor);
              expect(theme.brightness, expectedBrightness);

              // Test primary color
              final primaryColor = context.primaryColor;
              expect(primaryColor, expectedPrimaryColor);

              // Test accent color
              final accentColor = context.accentColor;
              expect(accentColor, expectedAccentColor);

              // Test background color
              final bgColor = context.backgroundColor;
              expect(bgColor, expectedBgColor);

              // Test canvas color
              final canvasColor = context.canvasColor;
              expect(canvasColor, expectedCanvasColor);

              // Test card color
              final cardColor = context.cardColor;
              expect(cardColor, expectedCardColor);

              // Test brightness
              final brightness = context.brightness;
              expect(brightness, expectedBrightness);

              // Test isDarkMode
              final isDarkMode = context.isDarkMode;
              expect(isDarkMode, expectedBrightness == Brightness.dark);

              // Test textTheme
              expect(
                context.textTheme.bodyLarge?.fontFamily,
                expectedFontFamily,
              );

              // Test cupertinoTheme
              expect(context.cupertinoTheme.primaryColor, expectedPrimaryColor);

              // Test captionStyle
              expect(context.captionStyle?.fontSize, expectedCaptionFontSize);

              // Test colors
              expect(context.colors.primary, expectedPrimaryColor);

              // Return an empty container to satisfy the builder's return type
              return Container();
            },
          ),
        ),
      );
    });
    testWidgets('Test text styles', (WidgetTester tester) async {
      // Define the expected values
      const expectedDisplayLargeFontSize = 60.0;
      const expectedDisplayMediumFontSize = 48.0;
      const expectedDisplaySmallFontSize = 34.0;
      const expectedHeadlineLargeFontSize = 34.0;
      const expectedHeadlineMediumFontSize = 24.0;
      const expectedHeadlineSmallFontSize = 16.0;
      const expectedTitleLargeFontSize = 20.0;
      const expectedTitleMediumFontSize = 18.0;
      const expectedTitleSmallFontSize = 16.0;
      const expectedLabelLargeFontSize = 16.0;
      const expectedLabelMediumFontSize = 14.0;
      const expectedLabelSmallFontSize = 12.0;
      const expectedBodyLargeFontSize = 12.0;
      const expectedBodyMediumFontSize = 10.0;
      const expectedBodySmallFontSize = 8.0;

      // Create a dummy widget to get a BuildContext
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData(
            textTheme: const TextTheme(
              displayLarge: TextStyle(fontSize: expectedDisplayLargeFontSize),
              displayMedium: TextStyle(fontSize: expectedDisplayMediumFontSize),
              displaySmall: TextStyle(fontSize: expectedDisplaySmallFontSize),
              headlineLarge: TextStyle(fontSize: expectedHeadlineLargeFontSize),
              headlineMedium:
                  TextStyle(fontSize: expectedHeadlineMediumFontSize),
              headlineSmall: TextStyle(fontSize: expectedHeadlineSmallFontSize),
              titleLarge: TextStyle(fontSize: expectedTitleLargeFontSize),
              titleMedium: TextStyle(fontSize: expectedTitleMediumFontSize),
              titleSmall: TextStyle(fontSize: expectedTitleSmallFontSize),
              labelLarge: TextStyle(fontSize: expectedLabelLargeFontSize),
              labelMedium: TextStyle(fontSize: expectedLabelMediumFontSize),
              labelSmall: TextStyle(fontSize: expectedLabelSmallFontSize),
              bodyLarge: TextStyle(fontSize: expectedBodyLargeFontSize),
              bodyMedium: TextStyle(fontSize: expectedBodyMediumFontSize),
              bodySmall: TextStyle(fontSize: expectedBodySmallFontSize),
            ),
          ),
          home: Builder(
            builder: (context) {
              // Test text styles
              expect(
                context.displayLarge?.fontSize,
                expectedDisplayLargeFontSize,
              );
              expect(
                context.displayMedium?.fontSize,
                expectedDisplayMediumFontSize,
              );
              expect(
                context.displaySmall?.fontSize,
                expectedDisplaySmallFontSize,
              );
              expect(
                context.headlineLarge?.fontSize,
                expectedHeadlineLargeFontSize,
              );
              expect(
                context.headlineMedium?.fontSize,
                expectedHeadlineMediumFontSize,
              );
              expect(
                context.headlineSmall?.fontSize,
                expectedHeadlineSmallFontSize,
              );
              expect(
                context.titleLarge?.fontSize,
                expectedTitleLargeFontSize,
              );
              expect(
                context.titleMedium?.fontSize,
                expectedTitleMediumFontSize,
              );
              expect(
                context.titleSmall?.fontSize,
                expectedTitleSmallFontSize,
              );
              expect(
                context.labelLarge?.fontSize,
                expectedLabelLargeFontSize,
              );
              expect(
                context.labelMedium?.fontSize,
                expectedLabelMediumFontSize,
              );
              expect(
                context.labelSmall?.fontSize,
                expectedLabelSmallFontSize,
              );
              expect(
                context.bodyLarge?.fontSize,
                expectedBodyLargeFontSize,
              );
              expect(
                context.bodyMedium?.fontSize,
                expectedBodyMediumFontSize,
              );
              expect(
                context.bodySmall?.fontSize,
                expectedBodySmallFontSize,
              );

              // Return an empty container to satisfy the builder's return type
              return Container();
            },
          ),
        ),
      );
    });
  });

  group('RushDialogSnackbarExtensions Tests', () {
    testWidgets('rushShowDialog shows a dialog', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              Future.delayed(Duration.zero, () {
                context.rushShowDialog(
                  const AlertDialog(
                    title: Text('Test Dialog'),
                  ),
                );
              });
              return const Placeholder();
            },
          ),
        ),
      );

      await tester.pumpAndSettle(); // Trigger a frame

      // Check if the dialog is shown
      expect(find.text('Test Dialog'), findsOneWidget);
    });

    testWidgets('rushShowSnackbar shows a snackbar',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (BuildContext context) {
                Future.delayed(Duration.zero, () {
                  context.rushShowSnackbar(
                    const SnackBar(content: Text('Test Snackbar')),
                  );
                });
                return const Placeholder();
              },
            ),
          ),
        ),
      );

      await tester.pumpAndSettle(); // Trigger a frame

      // Check if the snackbar is shown
      expect(find.text('Test Snackbar'), findsOneWidget);
    });
  });

  group('RushNavigationExtensions Tests', () {
    testWidgets('rushPush pushes a new route', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              return ElevatedButton(
                onPressed: () => context.rushPush(
                  MaterialPageRoute<String>(
                    builder: (_) => const Text('New Page'),
                  ),
                ),
                child: const Text('Push'),
              );
            },
          ),
        ),
      );

      await tester.tap(find.text('Push'));
      await tester
          .pumpAndSettle(); // Wait for the navigation animation to finish

      // Check if the new route is pushed
      expect(find.text('New Page'), findsOneWidget);
    });

    testWidgets('rushPop pops the current route', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              return ElevatedButton(
                onPressed: () {
                  context.rushPush(
                    CupertinoPageRoute<String>(
                      builder: (_) => CupertinoPageScaffold(
                        navigationBar: CupertinoNavigationBar(
                          leading: CupertinoNavigationBarBackButton(
                            onPressed: () => context.rushPop(),
                          ),
                        ),
                        child: const Text('New Page'),
                      ),
                    ),
                  );
                },
                child: const Text('Push'),
              );
            },
          ),
        ),
      );

      await tester.tap(find.text('Push'));
      await tester
          .pumpAndSettle(); // Wait for the navigation animation to finish

      // Check if the new route is pushed
      expect(find.text('New Page'), findsOneWidget);

      await tester.tap(find.byType(CupertinoNavigationBarBackButton));
      await tester
          .pumpAndSettle(); // Wait for the navigation animation to finish

      // Check if the current route is popped
      expect(find.text('New Page'), findsNothing);
    });
  });
}

class TestIntent extends Intent {}

class TestAction extends Action<TestIntent> {
  @override
  bool invoke(covariant TestIntent intent) {
    // This is where the action's logic would go
    return true;
  }
}
