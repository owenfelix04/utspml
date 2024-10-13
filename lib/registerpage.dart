import 'package:flutter/material.dart';
import 'main.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue, // Set theme color to blue
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _newIdController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Register Page', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue, // Set title color to white
      ),
      body: Container(
        color: Colors.lightBlue[50], // Optional: Set background color
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Text("Welcome", style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),

            // TextFormField for New ID
            TextFormField(
              controller: _newIdController,
              decoration: InputDecoration(
                labelText: 'New ID',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 20), // Spacing between fields

            // TextFormField for New Password
            TextFormField(
              controller: _newPasswordController,
              decoration: InputDecoration(
                labelText: 'New Password',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
              obscureText: true, // Hides password input
            ),
            SizedBox(height: 20), // Spacing between fields

            // TextFormField for Confirm Password
            TextFormField(
              controller: _confirmPasswordController,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
              obscureText: true, // Hides password input
            ),
            SizedBox(height: 20), // Spacing between fields

            ElevatedButton(
              onPressed: () {
                // Implement registration logic here
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MyApp();
                }));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Button background color
                foregroundColor: Colors.black, // Text color
              ),
              child: Text("REGISTER"),
            ),
          ],
        ),
      ),
    );
  }
}
