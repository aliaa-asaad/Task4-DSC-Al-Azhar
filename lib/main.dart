import 'package:flutter/material.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: 'BottomAppBar with FAB',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  int _incrementCounter(int index) {
    setState(() {
      index = _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'TAB: $_counter',
              style: TextStyle(color: Colors.black, fontSize: 40.0),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
              color: Colors.grey,
            ),
            title: Text(
              'This',
              style: TextStyle(color: Colors.grey, fontSize: 15.0),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.layers,
              color: Colors.grey,
            ),
            title: Text(
              'Is',
              style: TextStyle(color: Colors.grey, fontSize: 15.0),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.info,
              color: Colors.white,
            ),
            title: Text(
              'A',
              style: TextStyle(color: Colors.grey, fontSize: 15.0),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard,
              color: Colors.grey,
            ),
            title: Text(
              'Bottom',
              style: TextStyle(color: Colors.grey, fontSize: 15.0),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.info,
              color: Colors.grey,
            ),
            title: Text(
              'Bar',
              style: TextStyle(color: Colors.grey, fontSize: 15.0),
            ),
          ),
        ],
        onTap: _incrementCounter,
      ),
    );
  }
}
