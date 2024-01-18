import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rush/src/extensions/context.dart';
import 'package:rush/src/flutter/text.dart';

void main() {
  testWidgets('RushTextBuilder creates a Text widget with correct properties',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Text('Old World')
              .rush
              .text('New World')
              .textStyle(const TextStyle(color: Colors.red))
              .hexColor('#FF0000')
              .red600
              .color(Colors.red)
              .textBaseLine(TextBaseline.alphabetic)
              .wordSpacing(2)
              .overflow(TextOverflow.clip)
              .fontWeight(FontWeight.bold)
              .align(TextAlign.start)
              .strutStyle(StrutStyle.disabled)
              .fontFamily('Roboto')
              .center
              .maxLines(2)
              .xl2
              .softWrap(false)
              .ellipsis
              .when(true)
              .apply(),
        ),
      ),
    );

    // Verify that our Text widget is present.
    final finder = find.text('New World');
    expect(finder, findsOneWidget);

    // Verify that our Text widget has the correct color.
    final textWidget = tester.widget(finder) as Text;
    expect(textWidget.style?.color, Colors.red);

    // Verify that our Text widget has the correct maxLines.
    expect(textWidget.maxLines, 2);

    // Verify that our Text widget has the correct textAlign.
    expect(textWidget.textAlign, TextAlign.center);

    // Verify that our Text widget has the correct textScaleFactor.
    expect(textWidget.textScaler, const TextScaler.linear(1.5));

    // Verify that our Text widget has the correct softWrap.
    expect(textWidget.softWrap, false);

    // Verify that our Text widget has the correct overflow.
    expect(textWidget.overflow, TextOverflow.ellipsis);
  });

  group('Group of all individual text tests', () {
    testWidgets('RushTextBuilder sets text alignment to start',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.start.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct textAlign.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.textAlign, TextAlign.start);
    });

    testWidgets('RushTextBuilder sets text alignment to end',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.end.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct textAlign.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.textAlign, TextAlign.end);
    });

    testWidgets('RushTextBuilder sets text alignment to justify',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.justify.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct textAlign.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.textAlign, TextAlign.justify);
    });

    testWidgets('RushTextBuilder sets text overflow to fade',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.fade.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct overflow.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.overflow, TextOverflow.fade);
    });

    testWidgets('RushTextBuilder sets text overflow to ellipsis',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.ellipsis.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct overflow.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.overflow, TextOverflow.ellipsis);
    });

    testWidgets('RushTextBuilder sets text overflow to visible',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.visible.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct overflow.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.overflow, TextOverflow.visible);
    });

    testWidgets('RushTextBuilder sets font size for the text',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.size(16).apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct font size.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.fontSize, 16);
    });

    testWidgets('RushTextBuilder sets themed style for displaying large text',
        (WidgetTester tester) async {
      BuildContext? buildContext;
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              buildContext = context;
              return Scaffold(
                body: const Text('Hello World')
                    .rush
                    .displayLarge(context)
                    .apply(),
              );
            },
          ),
        ),
      );

      // Verify that our Text widget has the correct themed style.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style, buildContext!.displayLarge);
    });

    testWidgets('RushTextBuilder sets themed style for displaying medium text',
        (WidgetTester tester) async {
      BuildContext? buildContext;
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) {
                buildContext = context;
                return const Text('Hello World')
                    .rush
                    .displayMedium(context)
                    .apply();
              },
            ),
          ),
        ),
      );

      // Verify that our Text widget has the correct themed style.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style, buildContext!.displayMedium);
    });

    testWidgets('RushTextBuilder sets themed style for displaying small text',
        (WidgetTester tester) async {
      BuildContext? buildContext;
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) {
                buildContext = context;
                return const Text('Hello World')
                    .rush
                    .displaySmall(context)
                    .apply();
              },
            ),
          ),
        ),
      );

      // Verify that our Text widget has the correct themed style.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style, buildContext!.displaySmall);
    });

    testWidgets('RushTextBuilder sets themed style for large headlines',
        (WidgetTester tester) async {
      BuildContext? buildContext;
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) {
                buildContext = context;
                return const Text('Hello World')
                    .rush
                    .headlineLarge(context)
                    .apply();
              },
            ),
          ),
        ),
      );

      // Verify that our Text widget has the correct themed style.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style, buildContext!.headlineLarge);
    });

    testWidgets('RushTextBuilder sets themed style for medium headlines',
        (WidgetTester tester) async {
      BuildContext? buildContext;
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) {
                buildContext = context;
                return const Text('Hello World')
                    .rush
                    .headlineMedium(context)
                    .apply();
              },
            ),
          ),
        ),
      );

      // Verify that our Text widget has the correct themed style.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style, buildContext!.headlineMedium);
    });

    testWidgets('RushTextBuilder sets themed style for small headlines',
        (WidgetTester tester) async {
      BuildContext? buildContext;
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) {
                buildContext = context;
                return const Text('Hello World')
                    .rush
                    .headlineSmall(context)
                    .apply();
              },
            ),
          ),
        ),
      );

      // Verify that our Text widget has the correct themed style.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style, buildContext!.headlineSmall);
    });

    testWidgets('RushTextBuilder sets themed style for large titles',
        (WidgetTester tester) async {
      BuildContext? buildContext;
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) {
                buildContext = context;
                return const Text('Hello World')
                    .rush
                    .titleLarge(context)
                    .apply();
              },
            ),
          ),
        ),
      );

      // Verify that our Text widget has the correct themed style.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style, buildContext!.titleLarge);
    });

    testWidgets('RushTextBuilder sets themed style for medium titles',
        (WidgetTester tester) async {
      BuildContext? buildContext;
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) {
                buildContext = context;
                return const Text('Hello World')
                    .rush
                    .titleMedium(context)
                    .apply();
              },
            ),
          ),
        ),
      );

      // Verify that our Text widget has the correct themed style.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style, buildContext!.titleMedium);
    });

    testWidgets('RushTextBuilder sets themed style for small titles',
        (WidgetTester tester) async {
      BuildContext? buildContext;
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) {
                buildContext = context;
                return const Text('Hello World')
                    .rush
                    .titleSmall(context)
                    .apply();
              },
            ),
          ),
        ),
      );

      // Verify that our Text widget has the correct themed style.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style, buildContext!.titleSmall);
    });

    testWidgets('RushTextBuilder sets themed style for large body text',
        (WidgetTester tester) async {
      BuildContext? buildContext;
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) {
                buildContext = context;
                return const Text('Hello World')
                    .rush
                    .bodyLarge(context)
                    .apply();
              },
            ),
          ),
        ),
      );

      // Verify that our Text widget has the correct themed style.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style, buildContext!.bodyLarge);
    });

    testWidgets('RushTextBuilder sets themed style for medium body text',
        (WidgetTester tester) async {
      BuildContext? buildContext;
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) {
                buildContext = context;
                return const Text('Hello World')
                    .rush
                    .bodyMedium(context)
                    .apply();
              },
            ),
          ),
        ),
      );

      // Verify that our Text widget has the correct themed style.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style, buildContext!.bodyMedium);
    });

    testWidgets('RushTextBuilder sets themed style for small body text',
        (WidgetTester tester) async {
      BuildContext? buildContext;
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) {
                buildContext = context;
                return const Text('Hello World')
                    .rush
                    .bodySmall(context)
                    .apply();
              },
            ),
          ),
        ),
      );

      // Verify that our Text widget has the correct themed style.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style, buildContext!.bodySmall);
    });

    testWidgets('RushTextBuilder sets themed style for large labels',
        (WidgetTester tester) async {
      BuildContext? buildContext;
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) {
                buildContext = context;
                return const Text('Hello World')
                    .rush
                    .labelLarge(context)
                    .apply();
              },
            ),
          ),
        ),
      );

      // Verify that our Text widget has the correct themed style.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style, buildContext!.labelLarge);
    });

    testWidgets('RushTextBuilder sets themed style for medium labels',
        (WidgetTester tester) async {
      BuildContext? buildContext;
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) {
                buildContext = context;
                return const Text('Hello World')
                    .rush
                    .labelMedium(context)
                    .apply();
              },
            ),
          ),
        ),
      );

      // Verify that our Text widget has the correct themed style.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style, buildContext!.labelMedium);
    });

    testWidgets('RushTextBuilder sets themed style for small labels',
        (WidgetTester tester) async {
      BuildContext? buildContext;
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) {
                buildContext = context;
                return const Text('Hello World')
                    .rush
                    .labelSmall(context)
                    .apply();
              },
            ),
          ),
        ),
      );

      // Verify that our Text widget has the correct themed style.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style, buildContext!.labelSmall);
    });

    testWidgets('RushTextBuilder sets themed style with extra small font size',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.xs.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct font size.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.textScaler, const TextScaler.linear(0.75));
    });

    testWidgets('RushTextBuilder sets themed style with small font size',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.sm.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct font size.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.textScaler, const TextScaler.linear(0.875));
    });

    testWidgets('RushTextBuilder sets themed style with no font scaling',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.noScale.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct font size.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.textScaler, TextScaler.noScaling);
    });

    testWidgets('RushTextBuilder sets themed style with large font size',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.lg.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct font size.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.textScaler, const TextScaler.linear(1.125));
    });

    testWidgets('RushTextBuilder sets themed style with extra large font size',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.xl.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct font size.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.textScaler, const TextScaler.linear(1.25));
    });

    testWidgets(
        'RushTextBuilder sets themed style with 2x extra large font size',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.xl2.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct font size.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.textScaler, const TextScaler.linear(1.5));
    });

    testWidgets(
        'RushTextBuilder sets themed style with 3x extra large font size',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.xl3.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct font size.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.textScaler, const TextScaler.linear(1.875));
    });

    testWidgets(
        'RushTextBuilder sets themed style with 4x extra large font size',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.xl4.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct font size.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.textScaler, const TextScaler.linear(2.25));
    });

    testWidgets(
        'RushTextBuilder sets themed style with 5x extra large font size',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.xl5.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct font size.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.textScaler, const TextScaler.linear(3));
    });

    testWidgets(
        'RushTextBuilder sets themed style with 6x extra large font size',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.xl6.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct font size.
      final textWidget = tester.widget(find.text('Hello World')) as Text;

      expect(textWidget.textScaler, const TextScaler.linear(4));
    });

    testWidgets(
        'RushTextBuilder scales the themed style with custom font size factor',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.scale(1.5).apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct font size.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.textScaler, const TextScaler.linear(1.5));
    });

    testWidgets('RushTextBuilder sets themed style with hairline font weight',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.hairLine.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct font weight.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.fontWeight, FontWeight.w100);
    });

    testWidgets('RushTextBuilder sets themed style with thin font weight',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.thin.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct font weight.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.fontWeight, FontWeight.w200);
    });

    testWidgets('RushTextBuilder sets themed style with light font weight',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.light.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct font weight.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.fontWeight, FontWeight.w300);
    });

    testWidgets('RushTextBuilder sets themed style with normal font weight',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.normal.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct font weight.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.fontWeight, FontWeight.w400);
    });

    testWidgets('RushTextBuilder sets themed style with medium font weight',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.medium.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct font weight.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.fontWeight, FontWeight.w500);
    });

    testWidgets('RushTextBuilder sets themed style with semi-bold font weight',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.semiBold.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct font weight.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.fontWeight, FontWeight.w600);
    });

    testWidgets('RushTextBuilder sets themed style with bold font weight',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.bold.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct font weight.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.fontWeight, FontWeight.w700);
    });

    testWidgets('RushTextBuilder sets themed style with extra bold font weight',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.extraBold.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct font weight.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.fontWeight, FontWeight.w800);
    });

    testWidgets(
        'RushTextBuilder sets themed style with extra black font weight',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.extraBlack.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct font weight.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.fontWeight, FontWeight.w900);
    });

    testWidgets('RushTextBuilder sets themed style with italic font',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.italic.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct font style.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.fontStyle, FontStyle.italic);
    });

    testWidgets(
        'RushTextBuilder sets themed style with tightest letter spacing',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.tightest.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct letter spacing.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.letterSpacing, -3.0);
    });

    testWidgets('RushTextBuilder sets themed style with tighter letter spacing',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.tighter.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct letter spacing.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.letterSpacing, -2.0);
    });

    testWidgets('RushTextBuilder sets themed style with tight letter spacing',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.tight.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct letter spacing.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.letterSpacing, -1.0);
    });

    testWidgets('RushTextBuilder sets themed style with wide letter spacing',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.wide.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct letter spacing.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.letterSpacing, 1.0);
    });

    testWidgets('RushTextBuilder sets themed style with wider letter spacing',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.wider.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct letter spacing.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.letterSpacing, 2.0);
    });

    testWidgets('RushTextBuilder sets themed style with widest letter spacing',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.widest.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct letter spacing.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.letterSpacing, 3.0);
    });

    testWidgets('RushTextBuilder sets themed style with underline decoration',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.underline.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct decoration.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.decoration, TextDecoration.underline);
    });

    testWidgets(
        'RushTextBuilder sets themed style with line through decoration',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.lineThrough.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct decoration.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.decoration, TextDecoration.lineThrough);
    });

    testWidgets('RushTextBuilder sets themed style with overline decoration',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.overline.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct decoration.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.decoration, TextDecoration.overline);
    });

    testWidgets('RushTextBuilder sets themed style with uppercase text',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.uppercase.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct text.
      final textWidget = tester.widget(find.text('HELLO WORLD')) as Text;
      expect(textWidget.data, 'HELLO WORLD');
    });

    testWidgets('RushTextBuilder sets themed style with lowercase text',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.lowercase.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct text.
      final textWidget = tester.widget(find.text('hello world')) as Text;
      expect(textWidget.data, 'hello world');
    });

    testWidgets('RushTextBuilder sets letter spacing for the text',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.letterSpacing(2).apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct letter spacing.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.letterSpacing, 2.0);
    });
    testWidgets('RushTextBuilder capitalizes the text',
        (WidgetTester tester) async {
      final key = UniqueKey();
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Text(key: key, 'hello world').rush.capitalize.apply(),
          ),
        ),
      );
      final finded = find.byKey(key);
      // Verify that our Text widget has the correct text.
      final textWidget = tester.widget(finded) as Text;
      expect(textWidget.data, 'Hello world');
    });

    testWidgets('RushTextBuilder hides partial text with ellipsis',
        (WidgetTester tester) async {
      final key = UniqueKey();
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Text(key: key, 'Hello World').rush.hidePartial.apply(),
          ),
        ),
      );

      final finded = find.byKey(key);
      // Verify that our Text widget has the correct text.
      final textWidget = tester.widget(finded) as Text;
      expect(textWidget.data, '******World');
    });

    testWidgets('RushTextBuilder sets tight line height',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.heightTight.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct style.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.height, 0.75);
    });

    testWidgets('RushTextBuilder sets snug line height',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.heightSnug.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct style.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.height, 0.875);
    });

    testWidgets('RushTextBuilder sets relaxed line height',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.heightRelaxed.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct style.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.height, 1.25);
    });

    testWidgets('RushTextBuilder sets loose line height',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.heightLoose.apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct style.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.height, 1.5);
    });

    testWidgets('RushTextBuilder sets custom line height',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.lineHeight(1.75).apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct style.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.height, 1.75);
    });

    testWidgets('RushTextBuilder sets shadow properties',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World')
                .rush
                .shadow(2, 2, 4, Colors.black)
                .apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct style.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.shadows, [
        const Shadow(
          offset: Offset(2, 2),
          blurRadius: 4,
        ),
      ]);
    });

    testWidgets('RushTextBuilder sets shadow blur radius',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.shadowBlur(4).apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct style.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.shadows, [
        const Shadow(
          blurRadius: 4,
        ),
      ]);
    });

    testWidgets('RushTextBuilder sets shadow color',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body:
                const Text('Hello World').rush.shadowColor(Colors.red).apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct style.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.shadows, [
        const Shadow(
          color: Colors.red,
        ),
      ]);
    });

    testWidgets('RushTextBuilder sets shadow offset',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Hello World').rush.shadowOffset(2, 2).apply(),
          ),
        ),
      );

      // Verify that our Text widget has the correct style.
      final textWidget = tester.widget(find.text('Hello World')) as Text;
      expect(textWidget.style?.shadows, [
        const Shadow(
          offset: Offset(2, 2),
        ),
      ]);
    });
  });
}
