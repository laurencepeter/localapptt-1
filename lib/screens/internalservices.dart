import 'package:flutter/material.dart';

class InternalServices extends StatelessWidget {
  final List<String> services = [
    'Find File',
    'Scan File',
    'Forms',
    'Report an Issue',
    'Software Bugs',
  ];

  InternalServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internal Services'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () => Navigator.popUntil(context, (route) => route.isFirst),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: FlutterLogo(size: 80)),
            // Add any drawer items here
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.file_copy), label: 'Copy'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),          
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.close), label: 'Close'),
        ],
        currentIndex: 0,
        onTap: (index) {
          // Handle navigation or action based on index
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'INTERNAL SERVICES',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ...services.map((service) => Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: () {
                  // Add specific navigation logic here
                },
                child: Text(service.toUpperCase()),
              ),
            )),
          ],
        ),
      ),
    );
  }
}