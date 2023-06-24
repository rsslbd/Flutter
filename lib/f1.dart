import 'package:flutter/material.dart';

class F1
 extends StatelessWidget {
  const F1
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Icon!", style: TextStyle(fontSize: 50),),

              SizedBox(width: 5),
              const Icon(
                Icons.access_alarm,
                size: 50.0,
                color: Colors.red,
              ),
              SizedBox(width: 5),
              Text("Icon!", style: TextStyle(fontSize: 50),),
            ],
          ),
        ),
      ),
    ); 
  }
}