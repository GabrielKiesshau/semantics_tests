import 'package:flutter/material.dart';
import 'package:semantics_tests/hello.dart';
import 'package:semantics_tests/page_builder_test.dart';
import 'package:semantics_tests/page_test.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  
  static const List<Widget> _widgetOptions = <Widget>[
    ColoredBox(
      color: Colors.orange,
      child: PageViewExample(),
    ),
    ColoredBox(
      color: Colors.lime,
      child: PageViewBuilderExample(),
    ),
    ColoredBox(
      color: Colors.cyan,
      child: Hello(),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'PageView',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'PageView.builder',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Hello',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
