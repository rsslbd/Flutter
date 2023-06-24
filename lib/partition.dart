import 'package:flutter/material.dart';

class partition extends StatelessWidget {
  const partition({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              color: Colors.blue,
              height: 250,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}