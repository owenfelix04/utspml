import 'package:flutter/material.dart';
import 'main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue, // Change theme color from purple to blue
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
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login Page',
          style: TextStyle(color: Colors.white), // Set title color to white
        ),
        backgroundColor: Colors.blue, // Ensure the AppBar color is blue
      ),
      body: Container(
        color: Colors.lightBlue[50], // Set background color to light blue
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Text("Welcome", style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),

            // TextFormField for ID
            TextFormField(
              controller: _idController,
              decoration: InputDecoration(
                labelText: 'ID',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 20), // Spacing between fields

            // TextFormField for Password
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
              obscureText: true, // Hides password input
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MyApp();
                }));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Button background color
                foregroundColor: Colors.black, // Text color
              ),
              child: Text("LOGIN"),
            ),
          ],
        ),
      ),
    );
  }
}
