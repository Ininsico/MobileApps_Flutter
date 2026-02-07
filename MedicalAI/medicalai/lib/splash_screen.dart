import 'dart:async';
import 'package:flutter/material.dart';
import 'auth_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to Home Page after 3 seconds
    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const AuthScreen(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // ... (rest of the build method is the same)
    return Scaffold(
      backgroundColor: Colors.white, // You can change this to match your brand color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the logo
            Image.asset(
              'images/Ininsicologo.png',
              width: 200, // Adjust size as needed
              height: 200,
            ),
            const SizedBox(height: 20),
            // Optional: Loading indicator
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
