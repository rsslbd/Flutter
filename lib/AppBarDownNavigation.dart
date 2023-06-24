import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/page1.dart';
import 'package:my_app/page2.dart';
import 'package:my_app/page3.dart';

class AppBarDownNav extends StatelessWidget {
  const AppBarDownNav({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Scaffold(
      appBar: AppBar(
        title: const Text("My App"),
        actions: [],
        bottom: TabBar(tabs: [Tab(
          text: "Tab 1",
          icon: Icon(Icons.yard),
        ),
        Tab(
          text: "Tab 2",
          icon: Icon(Icons.yard),
        ),
        Tab(
          text: "Tab 3",
          icon: Icon(Icons.yard),
        ),
        Tab(
          text: "Tab 4",
          icon: Icon(Icons.yard),
        ),
        ]),
      ),
      body: TabBarView(children: [
        Page1(),
        Page2(),
        Page3(),
        Page2(),


      ]),
    ));
  }
}