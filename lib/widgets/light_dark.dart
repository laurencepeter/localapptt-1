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
    return SwitchListTile(
      title: Text('Dark Mode'),
      value: isDarkMode,
      onChanged: onToggle,  // When toggled, the onToggle function is called
      secondary: Icon(isDarkMode ? Icons.nightlight_round : Icons.wb_sunny),
    );
  }
}
