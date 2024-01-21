import 'package:flutter/material.dart';
import 'package:rush/rush.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rush'),
      ),
      body: const Column()
          .rush
          .addMany([1, 2, 3, 5]
              .map((e) => const Text("Child 1").rush.red700.apply())
              .toList())
          .add(const Text("Child 1").rush.xl6.red700.apply())
          .add(const Text("Child 2").rush.xl6.red700.apply())
          .add(const Text("Child 3").rush.xl6.red500.apply())
          .add(const Text("Child 4").rush.xl6.red500.apply())
          .add(const Text("Child 5").rush.xl6.red500.apply())
          .center
          .apply(),
    );
  }
}
