import 'package:flutter/material.dart';

class ColumnScroll
 extends StatelessWidget {
  const ColumnScroll
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
               
                child: Container(
                   height:200,
                  child:SingleChildScrollView(
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
        )
                ),
              )
             ,
              Container(
                color: Colors.blue,
                height: 250,
                width: double.infinity,
                child: Center(child: Image.asset("Downloads/img1.jpg",height: 100,width: 100,),),
              ),
              Container(
                color: Colors.blue,
                height: 250,
                width: double.infinity,
              ),Container(
                color: Color.fromRGBO(33, 219, 243, 1),
                height: 250,
                width: double.infinity,
              ),Container(
                color: Colors.blue,
                height: 250,
                width: double.infinity,
              ),Container(
                color: Color.fromARGB(255, 231, 9, 46),
                height: 250,
                width: double.infinity,
              ),Container(
                color: Colors.blue,
                height: 250,
                width: double.infinity,
              ),Container(
                color: Color.fromARGB(255, 0, 112, 9),
                height: 250,
                width: double.infinity,
              ),Container(
                color: Colors.blue,
                height: 250,
                width: double.infinity,
              ),Container(
                color: Color.fromARGB(255, 139, 13, 243),
                height: 250,
                width: double.infinity,
              ),Container(
                color: Colors.blue,
                height: 250,
                width: double.infinity,
              ),Container(
                color: Color.fromARGB(255, 96, 235, 15),
                height: 250,
                width: double.infinity,
              ),Container(
                color: Color.fromARGB(255, 157, 165, 172),
                height: 250,
                width: double.infinity,
              ),Container(
                color: const Color.fromARGB(255, 33, 47, 243),
                height: 250,
                width: double.infinity,
              ),Container(
                color: Colors.blue,
                height: 250,
                width: double.infinity,
              ),Container(
                color: Color.fromARGB(255, 224, 11, 93),
                height: 250,
                width: double.infinity,
              ),
               
            ],
          ),
        ),
      );
  }
}