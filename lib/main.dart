import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
