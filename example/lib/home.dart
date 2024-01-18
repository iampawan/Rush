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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hello",
            ).rush.bold.italic.xl4.brown500.apply(),
          ],
        ),
      ),
    );
  }
}
