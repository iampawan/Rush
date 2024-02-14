import 'package:example/home.dart';
import 'package:example/middlewares.dart';
import 'package:example/models.dart';
import 'package:flutter/material.dart';
import 'package:rush/rush.dart';

void main() {
  RushEngine.init<UserTank>(UserTank(), middlewares: [LoggingMiddleware()]);
  RushEngine.registerTank<CounterTank>(CounterTank());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RushThemeBuilder(builder: (context, tankTheme) {
      print(tankTheme.isDark);
      return MaterialApp(
        title: 'Flutter Demo',
        themeMode: tankTheme.themeMode,
        theme: tankTheme.isDark
            ? ThemeData.dark(useMaterial3: true)
            : ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
        home: const HomePage(),
      );
    });
  }
}
