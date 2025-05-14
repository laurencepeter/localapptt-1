import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/internalservices.dart';

class HomePage extends StatelessWidget {

  final String device;
  const HomePage({
    super.key,
    required this.device,
    
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Image.asset(
                'lib/assets/images/RDLG2.1.png',
                width: 350,
                height: 400,
                fit: BoxFit.cover, 
              ),
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