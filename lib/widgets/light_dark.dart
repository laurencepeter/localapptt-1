import 'package:flutter/material.dart';

class LightDarkToggle extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onToggle;

  const LightDarkToggle({
    super.key,
    required this.isDarkMode,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode),
      title: Text(isDarkMode ? 'Dark Mode' : 'Light Mode'),
      trailing: Switch(
        value: isDarkMode,
        onChanged: onToggle,
      ),
      onTap: () => onToggle(!isDarkMode),
    );
  }
}