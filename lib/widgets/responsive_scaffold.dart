import 'package:flutter/material.dart';
import 'app_drawer.dart';

class ResponsiveScaffold extends StatelessWidget {
  final bool isDarkMode;
  final void Function(bool) onThemeToggle;
  final Widget Function(String device) childBuilder;

  const ResponsiveScaffold({
    super.key,
    required this.isDarkMode,
    required this.onThemeToggle,
    required this.childBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double width = constraints.maxWidth;

        String deviceType = 'Mobile';
        if (width >= 1200) {
          deviceType = 'Desktop';
        } else if (width >= 600) {
          deviceType = 'Tablet';
        }

        return Scaffold(
          appBar: AppBar(title: Text('$deviceType Layout')),
          drawer: AppDrawer(
            isDarkMode: isDarkMode,
            onThemeToggle: onThemeToggle,
          ),
          body: childBuilder(deviceType),
        );
      },
    );
  }
}
