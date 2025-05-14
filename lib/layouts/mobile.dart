/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home.dart';
import '../widgets/app_drawer.dart';

class MobileHome extends StatelessWidget {
  final bool isDarkMode;
  final void Function(bool) onThemeToggle;

  const MobileHome({
    super.key,
    required this.isDarkMode,
    required this.onThemeToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mobile Layout")),
      drawer: AppDrawer(
      ),
      body: const HomePage(
        device: 'Mobile',        
        isDarkMode: isDarkMode,
        onThemeToggle: onThemeToggle,),
    );
  }
}*/
