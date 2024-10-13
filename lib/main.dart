import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'registerpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue, // Change color from purple to blue
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Universitas Pelita Harapan",
          style: TextStyle(color: Colors.white), // Change text color to white
        ),
        backgroundColor: Colors.blue, // Explicitly set the color to blue
      ),
      body: Container(
        color: Colors.lightBlue[50], // Set background color to light blue
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Image.asset(
                'assets/GKL10_Universitas Pelita Harapan - Koleksilogo.com.jpg'),
            SizedBox(height: 10), // Reduced height for closer spacing
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Button background color
                foregroundColor: Colors.black, // Text color
              ),
              child: Text("LOGIN"),
            ),
            SizedBox(height: 10), // Reduced height for closer spacing
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RegisterPage();
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
