import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/app_drawer.dart';


class HomePage extends StatelessWidget {
  final bool isDarkMode;
  final VoidCallback onToggleTheme;

  const HomePage({
    super.key,
    required this.isDarkMode,
    required this.onToggleTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      drawer: AppDrawer(
        isDarkMode: isDarkMode,  // Pass the current dark mode state
        onToggleTheme: onToggleTheme,  // Pass the toggle function
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to the Home Page!'),
            Image.asset('lib/assets/images/RDLG3.png'),
          ],
        ),
      ),
    );
  }
}
