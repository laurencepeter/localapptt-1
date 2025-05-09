import 'package:flutter/material.dart';

class TestApp extends StatefulWidget {
  const TestApp({super.key});

  @override
  State<TestApp> createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  ThemeMode _themeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: _themeMode,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
      ),
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: HomeScreen(
        onThemeToggle: () {
          setState(() {
            _themeMode = _themeMode == ThemeMode.light
                ? ThemeMode.dark
                : ThemeMode.light;
          });
        },
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final VoidCallback onThemeToggle;

  const HomeScreen({super.key, required this.onThemeToggle});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: Column(
        children: [
          // Top fixed gradient
          Container(
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.grey, Colors.transparent],
              ),
            ),
            alignment: Alignment.center,
            child: const Text(
              'Top Gradient',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          // Main content uses theme background
          Expanded(
            child: Container(
              width: double.infinity,
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Current Theme: ${isDark ? "Dark" : "Light"}',
                      style: TextStyle(fontSize: 18),
                    ),
                    Switch(
                      value: isDark,
                      onChanged: (_) => onThemeToggle(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



           // Image.asset('lib/assets/images/RDLG3.png'),