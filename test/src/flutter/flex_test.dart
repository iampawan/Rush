import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rush/src/flutter/flex.dart';

void main() {
  testWidgets('RushColumnBuilder test', (WidgetTester tester) async {
    const testKey = Key('test');
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column(
            children: [Text('Hi')],
          ).rush.center.crossCenter.addMany([
            const Text('Hello', key: testKey),
            const Text('World'),
          ]).apply(),
        ),
      ),
    );

    final finder = find.byKey(testKey);
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.mainAxisAlignment, MainAxisAlignment.center);
    expect(columnWidget.crossAxisAlignment, CrossAxisAlignment.center);
  });

  testWidgets('RushRowBuilder test', (WidgetTester tester) async {
    const testKey = Key('test');
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Row().rush.center.crossCenter.addMany([
            const Text('Hello', key: testKey),
            const Text('World'),
          ]).apply(),
        ),
      ),
    );

    final finder = find.byKey(testKey);
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.mainAxisAlignment, MainAxisAlignment.center);
    expect(columnWidget.crossAxisAlignment, CrossAxisAlignment.center);
  });

  testWidgets('RushFlexBuilder add test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column().rush.add(const Text('Child 1')).apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);
  });

  testWidgets('RushFlexBuilder addMany test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column().rush.addEmpty().addMany([
            const Text('Child 1'),
            const Text('Child 2'),
          ]).apply(),
        ),
      ),
    );

    final finder1 = find.text('Child 1');
    expect(finder1, findsOneWidget);

    final finder2 = find.text('Child 2');
    expect(finder2, findsOneWidget);
  });

  testWidgets('RushFlexBuilder addEmpty test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column()
              .rush
              .addEmpty(height: 20)
              .add(const Text('Child 1'))
              .apply(),
        ),
      ),
    );

    final finder = find.byType(SizedBox);
    expect(finder, findsOneWidget);
  });

  testWidgets('RushFlexBuilder addSpacer test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column()
              .rush
              .addSpacer()
              .addSpacer(flex: 2)
              .add(const Text('Child 1'))
              .apply(),
        ),
      ),
    );

    final finder = find.byType(Spacer);
    expect(finder, findsNWidgets(2));
  });

  testWidgets('RushColumnBuilder min test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column().rush.min.add(const Text('Child 1')).apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.mainAxisSize, MainAxisSize.min);
  });

  testWidgets('RushRowBuilder max test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Row().rush.max.add(const Text('Child 1')).apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final rowWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(rowWidget.mainAxisSize, MainAxisSize.max);
  });

  testWidgets('RushColumnBuilder start test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column().rush.start.add(const Text('Child 1')).apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.mainAxisAlignment, MainAxisAlignment.start);
  });

  testWidgets('RushColumnBuilder end test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column().rush.end.add(const Text('Child 1')).apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.mainAxisAlignment, MainAxisAlignment.end);
  });

  testWidgets('RushColumnBuilder vertical test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column().rush.vertical.add(const Text('Child 1')).apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.direction, Axis.vertical);
  });

  testWidgets('RushFlexBuilder center test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column().rush.center.add(const Text('Child 1')).apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.mainAxisAlignment, MainAxisAlignment.center);
  });

  testWidgets('RushFlexBuilder spaceBetween test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column()
              .rush
              .spaceBetween
              .add(const Text('Child 1'))
              .apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.mainAxisAlignment, MainAxisAlignment.spaceBetween);
  });

  testWidgets('RushFlexBuilder spaceAround test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column()
              .rush
              .spaceAround
              .add(const Text('Child 1'))
              .apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.mainAxisAlignment, MainAxisAlignment.spaceAround);
  });

  testWidgets('RushFlexBuilder spaceEvenly test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column()
              .rush
              .spaceEvenly
              .add(const Text('Child 1'))
              .apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.mainAxisAlignment, MainAxisAlignment.spaceEvenly);
  });

  testWidgets('RushFlexBuilder crossStart test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body:
              const Column().rush.crossStart.add(const Text('Child 1')).apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.crossAxisAlignment, CrossAxisAlignment.start);
  });

  testWidgets('RushFlexBuilder crossEnd test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column().rush.crossEnd.add(const Text('Child 1')).apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.crossAxisAlignment, CrossAxisAlignment.end);
  });

  testWidgets('RushFlexBuilder crossCenter test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column()
              .rush
              .crossCenter
              .add(const Text('Child 1'))
              .apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.crossAxisAlignment, CrossAxisAlignment.center);
  });

  testWidgets('RushFlexBuilder crossStretch test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column()
              .rush
              .crossStretch
              .add(const Text('Child 1'))
              .apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.crossAxisAlignment, CrossAxisAlignment.stretch);
  });

  testWidgets('RushFlexBuilder baseline test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column(
            textBaseline: TextBaseline.alphabetic,
          ).rush.baseline.add(const Text('Child 1')).apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.crossAxisAlignment, CrossAxisAlignment.baseline);
  });

  testWidgets('RushFlexBuilder startStart test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body:
              const Column().rush.startStart.add(const Text('Child 1')).apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.mainAxisAlignment, MainAxisAlignment.start);
    expect(columnWidget.crossAxisAlignment, CrossAxisAlignment.start);
  });

  testWidgets('RushFlexBuilder startCenter test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column()
              .rush
              .startCenter
              .add(const Text('Child 1'))
              .apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.mainAxisAlignment, MainAxisAlignment.start);
    expect(columnWidget.crossAxisAlignment, CrossAxisAlignment.center);
  });

  testWidgets('RushFlexBuilder startEnd test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column().rush.startEnd.add(const Text('Child 1')).apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.mainAxisAlignment, MainAxisAlignment.start);
    expect(columnWidget.crossAxisAlignment, CrossAxisAlignment.end);
  });

  testWidgets('RushFlexBuilder centerStart test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column()
              .rush
              .centerStart
              .add(const Text('Child 1'))
              .apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.mainAxisAlignment, MainAxisAlignment.center);
    expect(columnWidget.crossAxisAlignment, CrossAxisAlignment.start);
  });

  testWidgets('RushFlexBuilder centerCenter test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column()
              .rush
              .centerCenter
              .add(const Text('Child 1'))
              .apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.mainAxisAlignment, MainAxisAlignment.center);
    expect(columnWidget.crossAxisAlignment, CrossAxisAlignment.center);
  });

  testWidgets('RushFlexBuilder centerEnd test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body:
              const Column().rush.centerEnd.add(const Text('Child 1')).apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.mainAxisAlignment, MainAxisAlignment.center);
    expect(columnWidget.crossAxisAlignment, CrossAxisAlignment.end);
  });

  testWidgets('RushFlexBuilder endStart test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column().rush.endStart.add(const Text('Child 1')).apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.mainAxisAlignment, MainAxisAlignment.end);
    expect(columnWidget.crossAxisAlignment, CrossAxisAlignment.start);
  });

  testWidgets('RushFlexBuilder endCenter test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body:
              const Column().rush.endCenter.add(const Text('Child 1')).apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.mainAxisAlignment, MainAxisAlignment.end);
    expect(columnWidget.crossAxisAlignment, CrossAxisAlignment.center);
  });

  testWidgets('RushFlexBuilder endEnd test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column().rush.endEnd.add(const Text('Child 1')).apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.mainAxisAlignment, MainAxisAlignment.end);
    expect(columnWidget.crossAxisAlignment, CrossAxisAlignment.end);
  });

  testWidgets('RushRowBuilder horizontal test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Row().rush.horizontal.add(const Text('Child 1')).apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final rowWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(rowWidget.direction, Axis.horizontal);
  });

  testWidgets('RushColumnBuilder up test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column().rush.up.add(const Text('Child 1')).apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.verticalDirection, VerticalDirection.up);
  });

  testWidgets('RushRowBuilder down test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Row().rush.down.add(const Text('Child 1')).apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final rowWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(rowWidget.verticalDirection, VerticalDirection.down);
  });
  testWidgets('RushFlexBuilder mainAxisAlignment test',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column()
              .rush
              .mainAxisAlignment(MainAxisAlignment.start)
              .add(const Text('Child 1'))
              .apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.mainAxisAlignment, MainAxisAlignment.start);
  });

  testWidgets('RushFlexBuilder crossAxisAlignment test',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column()
              .rush
              .crossAxisAlignment(CrossAxisAlignment.start)
              .add(const Text('Child 1'))
              .apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.crossAxisAlignment, CrossAxisAlignment.start);
  });

  testWidgets('RushFlexBuilder mainAxisSize test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column()
              .rush
              .mainAxisSize(MainAxisSize.max)
              .add(const Text('Child 1'))
              .apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.mainAxisSize, MainAxisSize.max);
  });

  testWidgets('RushFlexBuilder verticalDirection test',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column()
              .rush
              .verticalDirection(VerticalDirection.up)
              .add(const Text('Child 1'))
              .apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.verticalDirection, VerticalDirection.up);
  });

  testWidgets('RushFlexBuilder textDirection test',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Column()
              .rush
              .textDirection(TextDirection.ltr)
              .add(const Text('Child 1'))
              .apply(),
        ),
      ),
    );

    final finder = find.text('Child 1');
    expect(finder, findsOneWidget);

    final columnWidget = tester.widget<Flex>(
      find.ancestor(of: finder, matching: find.byType(Flex)),
    );
    expect(columnWidget.textDirection, TextDirection.ltr);
  });
}
