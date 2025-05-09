import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/internalservices.dart';
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
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Image.asset('lib/assets/images/RDLG3.png'),
            ),
            Text(
              'SERVICES',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                //color: theme.textTheme.bodyLarge?.color,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                //backgroundColor: theme.colorScheme.primary,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InternalServices()),
                );
              },
              child: Text('INTERNAL'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                //backgroundColor: theme.colorScheme.primary,
              ),
              onPressed: () {
                // Navigate to external services screen
              },
              child: Text('EXTERNAL'),
            ),
          ],
        ),
      ),
    );
  }
}