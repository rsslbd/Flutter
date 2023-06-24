import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/crud/edit.dart';
import 'package:my_app/page1.dart';
import 'package:my_app/page2.dart';
import 'package:my_app/page3.dart';

import 'RegistrationForm.dart';
import 'list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.green),
      initialRoute: "/p5",
      routes: {
      //   "/p1":(context)=>Page1(),
          "/p2":(context)=>Edit(),
          "/p3":(context)=>GetList(),
          "/p5":(context)=>RegistrationForm(),

       },
      //  home:GetList(),
    );
  }
}

class _BtNavigationSState extends StatefulWidget {
  const _BtNavigationSState({super.key});

  @override
  State<_BtNavigationSState> createState() => __BtNavigationSStateState();
}

class __BtNavigationSStateState extends State<_BtNavigationSState> {
  var _currentState = 0;
  final pages = [Page1(), Page2(), Page3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentState,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined),
            label: "Russel",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit_rounded),
                        label: "Selim",
          ),
          BottomNavigationBarItem(
            icon: Icon( Icons.access_time_rounded ),
            label: "Tamal",
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentState = index;
          });
        },
      ),
      body: pages[_currentState],
    );
  }
}
