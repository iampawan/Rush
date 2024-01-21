import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rush/rush.dart';

void main() {
  testWidgets('Padding p0 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().p0(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(paddingWidget.padding, EdgeInsets.zero);
  });

  testWidgets('Padding p1 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().p1(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(paddingWidget.padding, const EdgeInsets.all(Rush.dp1));
  });

  testWidgets('Padding p2 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().p2(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(paddingWidget.padding, const EdgeInsets.all(Rush.dp2));
  });

  testWidgets('Padding p4 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().p4(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(paddingWidget.padding, const EdgeInsets.all(Rush.dp4));
  });

  testWidgets('Padding p8 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().p8(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(paddingWidget.padding, const EdgeInsets.all(Rush.dp8));
  });

  testWidgets('Padding p12 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().p12(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(paddingWidget.padding, const EdgeInsets.all(Rush.dp12));
  });

  testWidgets('Padding p16 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().p16(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(paddingWidget.padding, const EdgeInsets.all(Rush.dp16));
  });

  testWidgets('Padding p20 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().p20(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(paddingWidget.padding, const EdgeInsets.all(Rush.dp20));
  });

  testWidgets('Padding p24 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().p24(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(paddingWidget.padding, const EdgeInsets.all(Rush.dp24));
  });

  testWidgets('Padding p32 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().p32(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(paddingWidget.padding, const EdgeInsets.all(Rush.dp32));
  });

  testWidgets('Padding p64 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().p64(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(paddingWidget.padding, const EdgeInsets.all(Rush.dp64));
  });

  testWidgets('Padding py test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().py(10),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(paddingWidget.padding, const EdgeInsets.symmetric(vertical: 10));
  });

  testWidgets('Padding py0 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().py0(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(paddingWidget.padding, EdgeInsets.zero);
  });

  testWidgets('Padding py1 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().py1(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(
      paddingWidget.padding,
      const EdgeInsets.symmetric(vertical: Rush.dp1),
    );
  });

  testWidgets('Padding py2 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().py2(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(
      paddingWidget.padding,
      const EdgeInsets.symmetric(vertical: Rush.dp2),
    );
  });

  testWidgets('Padding py4 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().py4(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(
      paddingWidget.padding,
      const EdgeInsets.symmetric(vertical: Rush.dp4),
    );
  });

  testWidgets('Padding py8 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().py8(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(
      paddingWidget.padding,
      const EdgeInsets.symmetric(vertical: Rush.dp8),
    );
  });

  testWidgets('Padding py12 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().py12(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(
      paddingWidget.padding,
      const EdgeInsets.symmetric(vertical: Rush.dp12),
    );
  });

  testWidgets('Padding py16 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().py16(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(
      paddingWidget.padding,
      const EdgeInsets.symmetric(vertical: Rush.dp16),
    );
  });

  testWidgets('Padding py20 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().py20(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(
      paddingWidget.padding,
      const EdgeInsets.symmetric(vertical: Rush.dp20),
    );
  });

  testWidgets('Padding py24 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().py24(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(
      paddingWidget.padding,
      const EdgeInsets.symmetric(vertical: Rush.dp24),
    );
  });

  testWidgets('Padding py32 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().py32(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(
      paddingWidget.padding,
      const EdgeInsets.symmetric(vertical: Rush.dp32),
    );
  });

  testWidgets('Padding py64 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().py64(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(
      paddingWidget.padding,
      const EdgeInsets.symmetric(vertical: Rush.dp64),
    );
  });

  testWidgets('Padding px test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().px(10),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(paddingWidget.padding, const EdgeInsets.symmetric(horizontal: 10));
  });

  testWidgets('Padding px0 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().px0(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(paddingWidget.padding, EdgeInsets.zero);
  });

  testWidgets('Padding px1 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().px1(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(
      paddingWidget.padding,
      const EdgeInsets.symmetric(horizontal: Rush.dp1),
    );
  });

  testWidgets('Padding px2 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().px2(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(
      paddingWidget.padding,
      const EdgeInsets.symmetric(horizontal: Rush.dp2),
    );
  });

  testWidgets('Padding px4 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().px4(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(
      paddingWidget.padding,
      const EdgeInsets.symmetric(horizontal: Rush.dp4),
    );
  });

  testWidgets('Padding px8 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().px8(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(
      paddingWidget.padding,
      const EdgeInsets.symmetric(horizontal: Rush.dp8),
    );
  });

  testWidgets('Padding px12 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().px12(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(
      paddingWidget.padding,
      const EdgeInsets.symmetric(horizontal: Rush.dp12),
    );
  });

  testWidgets('Padding px16 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().px16(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(
      paddingWidget.padding,
      const EdgeInsets.symmetric(horizontal: Rush.dp16),
    );
  });

  testWidgets('Padding px20 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().px20(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(
      paddingWidget.padding,
      const EdgeInsets.symmetric(horizontal: Rush.dp20),
    );
  });

  testWidgets('Padding px24 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().px24(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(
      paddingWidget.padding,
      const EdgeInsets.symmetric(horizontal: Rush.dp24),
    );
  });

  testWidgets('Padding px32 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().px32(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(
      paddingWidget.padding,
      const EdgeInsets.symmetric(horizontal: Rush.dp32),
    );
  });

  testWidgets('Padding px64 test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().px64(),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(
      paddingWidget.padding,
      const EdgeInsets.symmetric(horizontal: Rush.dp64),
    );
  });

  testWidgets('Padding p test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().p(10),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(paddingWidget.padding, const EdgeInsets.all(10));
  });

  testWidgets('Padding pLTRB test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().pLTRB(5, 10, 15, 20),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(paddingWidget.padding, const EdgeInsets.fromLTRB(5, 10, 15, 20));
  });

  testWidgets('Padding pSymmetric test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().pSymmetric(v: 10, h: 20),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(
      paddingWidget.padding,
      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    );
  });

  testWidgets('Padding pOnly test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container().pOnly(left: 5, right: 10, top: 15, bottom: 20),
        ),
      ),
    );

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(
      paddingWidget.padding,
      const EdgeInsets.only(left: 5, right: 10, top: 15, bottom: 20),
    );
  });
}
