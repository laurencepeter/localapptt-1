import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Controllers to capture input from text fields
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // This will hold the feedback text to show the entered username and password
  //String _feedbackText = '';

  // Function to handle login logic and show feedback
  void _onPressed() {
    final String username = _usernameController.text;
    final String password = _passwordController.text;

    // Update the feedback text with the entered username and password
    //setState(() {
    //  _feedbackText = 'Username: $username\nPassword: $password';
    //});

    // Optionally, show a Snackbar for feedback
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('$username Logged In Successfully!\n Protect your password $password',textAlign: TextAlign.center,))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              'lib/assets/images/RDLG3.png',
              height: 150,
            ),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true, // Hide password text
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _onPressed,
              child: Text('Submit'),
            ),
            SizedBox(height: 20),
            // Display feedback text (entered username and password)
            /*Text(
              _feedbackText,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),*/
          ],
        ),
      ),
    );
  }
}
