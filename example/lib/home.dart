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
          .add(const Text(
            "Hello World1 asaffdfsfddfsdfdgfggdgddfssfddfsadaad",
          ).rush.xl6.red500.apply())
          .apply(),
    );
  }
}
