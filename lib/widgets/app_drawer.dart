import 'package:flutter/material.dart';
import 'light_dark.dart'; // Assuming the LightDarkToggle widget is imported here

class AppDrawer extends StatelessWidget {
  final bool isDarkMode;
  final VoidCallback onToggleTheme;

  const AppDrawer({
    super.key,
    required this.isDarkMode,
    required this.onToggleTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Local TT',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About'),
            onTap: () {
              Navigator.pushNamed(context, '/about');
            },
          ),
          const Divider(),
          LightDarkToggle(
            isDarkMode: isDarkMode,  // Pass the current theme mode state
            onToggle: (_) => onToggleTheme(),  // Call the onToggleTheme function when toggled
          ),
        ],
      ),
    );
  }
}
