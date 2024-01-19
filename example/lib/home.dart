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
                    'Hello World sasdafddfdsffdssfdafdsfdsfdsdsffdsfdsfdsdfsfdssfdafddfsdfsda')
                .rush
                .xl6
                .quickStyle()
                .strikethrough
                .dotted
                .decorationColor(Colors.red)
                .apply()
                .p16(),
          ],
        ),
      ),
    );
  }
}
