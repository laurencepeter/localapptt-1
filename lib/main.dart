import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
  //MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  // Toggle theme method
  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;  // This will toggle the theme
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Local TT',
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,  // Change theme based on _isDarkMode
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: HomePage(
        isDarkMode: _isDarkMode,  // Pass the current theme state
        onToggleTheme: _toggleTheme,  // Pass the toggle function
      ),
    );
  }

  
}

// mobile_home.dart
class MobileHome extends StatelessWidget {
  const MobileHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mobile Home")),
      body: Center(child: Text("This is Mobile")),
    );
  }
}

// tablet_home.dart
class TabletHome extends StatelessWidget {
  const TabletHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tablet Home")),
      body: Center(child: Text("This is Tablet")),
    );
  }
}

// desktop_home.dart
class DesktopHome extends StatelessWidget {
  const DesktopHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Desktop Home")),
      body: Center(child: Text("This is Desktop")),
    );
  }
}