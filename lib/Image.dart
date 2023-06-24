import 'package:flutter/material.dart';

class image
 extends StatelessWidget {
  const image
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.network("https://pixabay.com/photos/tree-sunset-clouds-sky-silhouette-736885/"),
            
          ),
        ),
      ),
    );
  }
}