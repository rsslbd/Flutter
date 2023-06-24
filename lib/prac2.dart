import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:my_app/page1.dart';
import 'package:my_app/page2.dart';
import 'package:my_app/page3.dart';




class pracN12 extends StatelessWidget {
  const pracN12({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              text: 'Tab 1',
              icon: Icon(Icons.yard),
            ),
            Tab(
              text: 'Tab 3',
              icon: Icon(Icons.adb_rounded),
            ),
            Tab(
              text: 'Tab 3',
              icon: Icon(Icons.account_circle_outlined),
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            Page1(),
            Page2(),
            Page3(),
          ],
        ),
      ),
    );
  }
}

//BottomNavigationBar  With State full
class PracN12 extends StatefulWidget {
  const PracN12({super.key});

  @override
  State<PracN12> createState() => _nameState();
}

class _nameState extends State<PracN12> {
  var _currentState = 0;
  final pages = [
    Page1(),
    Page2(),
    Page3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentState,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(87, 204, 175, 44),
              label: "Message",
              icon: Icon(Icons.account_box_outlined)),
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(87, 204, 175, 44),
              label: "Call",
              icon: Icon(Icons.call)),
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(87, 204, 175, 44),
              label: "Pan Tool",
              icon: Icon(Icons.pan_tool)),
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

// Hero Icon
class PracticeN11 extends StatelessWidget {
  const PracticeN11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: CircleAvatar(
            radius: 50,
            child: GestureDetector(
              child: Hero(
                tag: "Add",
                child: Icon(
                  Icons.work_off,
                ),
              ),
              onTap: () {},
            ),
          ),
        ));
  }
}

///First stf weget you need to call it from main method

///void main() {
// runApp(MyFirstStateFullW());
// }

class MyFirstStateFullW extends StatefulWidget {
  const MyFirstStateFullW({Key? key}) : super(key: key);

  @override
  State<MyFirstStateFullW> createState() => _MyFirstStateFullWState();
}

class _MyFirstStateFullWState extends State<MyFirstStateFullW> {
  PageController _controller = PageController(initialPage: 0);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: PageView(
            scrollDirection: Axis.vertical,
            controller: _controller,
            children: [
              Page1(),
              Page2(),
              Page3(),
            ],
          )),
    );
  }
}

//Grid View
class PcticeN10 extends StatelessWidget {
  const PcticeN10({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 2,
              children: [
                Container(
                  color: Colors.amberAccent,
                  height: 250,
                  width: 250,
                ),
                Container(
                  color: Colors.cyan,
                  height: 250,
                  width: 250,
                ),
                Container(
                  color: Colors.teal,
                  height: 250,
                  width: 250,
                ),
                Container(
                  color: Colors.amberAccent,
                  height: 250,
                  width: 250,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Card View
class PracticeN9 extends StatefulWidget {
  const PracticeN9({super.key});

  @override
  State<PracticeN9> createState() => _PracticeN9State();
}

class _PracticeN9State extends State<PracticeN9> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            body: Center(
              child: Card(
                elevation: 50,
                shape: RoundedRectangleBorder(
                  // borderRadius: BorderRadius.all(
                  //   Radius.circular(20),
                  // ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}

// LiquidSwipe--- Page change style
class PracticeN8 extends StatelessWidget {
  const PracticeN8({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = [
      Container(
        color: Colors.amberAccent,
        height: 250,
        width: 250,
      ),
      Container(
        color: Colors.cyan,
        height: 250,
        width: 250,
      ),
      Container(
        color: Colors.teal,
        height: 250,
        width: 250,
      ),
      Container(
        color: Colors.amberAccent,
        height: 250,
        width: 250,
      ),
      Container(
        color: Colors.cyan,
        height: 250,
        width: 250,
      ),
      Container(
        color: Colors.teal,
        height: 250,
        width: 250,
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: LiquidSwipe(pages: pages),
        ),
      ),
    );
  }
}

//Show Image

class PracticeN7 extends StatelessWidget {
  const PracticeN7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(body: Center(child: Image.asset("images/test.jpg"))),
      ),
    );
  }
}

//Stack  It used to create weget up above another weget.
class PracticeN6 extends StatelessWidget {
  const PracticeN6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            body: Center(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width / 3,
                    color: Colors.yellow,
                  ),
                  Positioned(
                      bottom: -50,
                      child: CircleAvatar(
                        radius: 30,
                      ))
                ],
              ),
            )),
      ),
    );
  }
}

//ListTail It used to design a list of data
class PracticeN5 extends StatelessWidget {
  const PracticeN5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: ListView(
            children: [
              ListTile(
                title: Text("List Tile 1"),
                subtitle: Text("ListTile practice with saiful.."),
                leading: CircleAvatar(
                  child: Icon(Icons.add_call),
                ),
                trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("List Tile 1"),
                subtitle: Text("ListTile practice with saiful.."),
                leading: CircleAvatar(
                  child: Icon(Icons.add_call),
                ),
                trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("List Tile 1"),
                subtitle: Text("ListTile practice with saiful.."),
                leading: CircleAvatar(
                  child: Icon(Icons.add_call),
                ),
                trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("List Tile 1"),
                subtitle: Text("ListTile practice with saiful.."),
                leading: CircleAvatar(
                  child: Icon(Icons.add_call),
                ),
                trailing: Icon(Icons.account_circle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// MediaQuery use to make responsive UI
class PracticeN4 extends StatelessWidget {
  const PracticeN4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Container(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width / 3,
              color: Colors.yellow,
              child: const Center(
                child: Text(
                  "Hello",
                  style: TextStyle(
                      color: Colors.cyan,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//List View
class PracticeN3 extends StatelessWidget {
  const PracticeN3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(children: [
          Container(
            color: Colors.amberAccent,
            height: 250,
            width: 250,
          ),
          Container(
            color: Colors.cyan,
            height: 250,
            width: 250,
          ),
          Container(
            color: Colors.teal,
            height: 250,
            width: 250,
          ),
          Container(
            color: Colors.amberAccent,
            height: 250,
            width: 250,
          ),
          Container(
            color: Colors.cyan,
            height: 250,
            width: 250,
          ),
          Container(
            color: Colors.teal,
            height: 250,
            width: 250,
          ),
          Container(
            color: Colors.amberAccent,
            height: 250,
            width: 250,
          ),
          Container(
            color: Colors.cyan,
            height: 250,
            width: 250,
          ),
          Container(
            color: Colors.teal,
            height: 250,
            width: 250,
          ),
        ]),
      ),
    );
  }
}

//Row
class PracticeN2 extends StatelessWidget {
  const PracticeN2({Key? key}) : super(key: key);

  // get controller => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            Container(
              color: Colors.amberAccent,
              height: double.infinity,
              width: 100,
            ),
            Container(
              color: Colors.cyan,
              width: 100.0,
              height: double.infinity,
            ),
            Container(
              color: Colors.teal,
              width: 100.0,
              height: double.infinity,
            ),
            Container(
              color: Colors.amberAccent,
              width: 100.0,
              height: double.infinity,
            ),
            Container(
              color: Colors.cyan,
              width: 100.0,
              height: double.infinity,
            ),
            Container(
              color: Colors.teal,
              width: 100.0,
              height: double.infinity,
            ),
            Container(
              color: Colors.amberAccent,
              width: 100.0,
              height: double.infinity,
            ),
            Container(
              color: Colors.cyan,
              width: 100.0,
              height: double.infinity,
            ),
            Container(
              color: Colors.teal,
              width: 100.0,
              height: double.infinity,
            ),
          ]),
        ),
      ),
    );
  }
}

//Safe Area
class PracticeN1 extends StatelessWidget {
  const PracticeN1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            height: double.infinity,
            width: 200.0,
            color: Colors.yellow,
            child: const Center(
              child: Text(
                "Hello",
                style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
