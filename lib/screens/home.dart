import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/test.dart';
import 'package:flutter_application_1/widgets/login.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    // Add your different pages here
    LoginScreen(),
    TestApp(),
    TestApp(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => _pages[index]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(child: Text('Header')),
            ListTile(
              title: Text('Page 1'),
              tileColor: _selectedIndex == 0 ? Colors.blue : null,
              onTap: () => _onItemTapped(0),
            ),
            ListTile(
              title: Text('Page 2'),
              tileColor: _selectedIndex == 1 ? Colors.blue : null,
              onTap: () => _onItemTapped(1),
            ),
            ListTile(
              title: Text('Page 3'),
              tileColor: _selectedIndex == 2 ? Colors.blue : null,
              onTap: () => _onItemTapped(2),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
