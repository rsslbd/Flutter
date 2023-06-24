import 'package:flutter/material.dart';

class Scroll
 extends StatelessWidget {
  const Scroll
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                color: Colors.blue,
                height: double.infinity,
                width: 100,
              ),
               Container(
                color: Color.fromARGB(255, 33, 243, 208),
                height: double.infinity,
                width: 100,
              ), Container(
                color: Color.fromARGB(255, 96, 33, 243),
                height: double.infinity,
                width: 100,
              ), Container(
                color: Color.fromARGB(255, 243, 33, 233),
                height: double.infinity,
                width: 100,
              ),Container(
                color: Color.fromARGB(255, 243, 33, 33),
                height: double.infinity,
                width: 100,
              ),Container(
                color: Color.fromARGB(255, 109, 6, 168),
                height: double.infinity,
                width: 100,
              ),Container(
                color: Color.fromARGB(255, 243, 33, 33),
                height: double.infinity,
                width: 100,
              ),Container(
                color: Color.fromARGB(255, 33, 243, 226),
                height: double.infinity,
                width: 100,
              ),Container(
                color: Color.fromARGB(255, 243, 33, 33),
                height: double.infinity,
                width: 100,
              ),Container(
                color: Color.fromARGB(255, 33, 37, 243),
                height: double.infinity,
                width: 100,
              ),Container(
                color: Color.fromARGB(255, 243, 33, 33),
                height: double.infinity,
                width: 100,
              ),Container(
                color: Color.fromARGB(255, 155, 141, 141),
                height: double.infinity,
                width: 100,
              ),Container(
                color: Color.fromARGB(255, 243, 33, 33),
                height: double.infinity,
                width: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}