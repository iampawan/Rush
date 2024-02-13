import 'package:example/home.dart';
import 'package:example/middlewares.dart';
import 'package:example/models.dart';
import 'package:flutter/material.dart';
import 'package:rush/rush.dart';

void main() {
  RushEngine.registerTank<UserTank>(UserTank());
  RushEngine.registerTank<CounterTank>(CounterTank());
  RushEngine.addMiddleware(LoggingMiddleware());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
