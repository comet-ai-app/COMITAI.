import 'package:flutter/material.dart';
import '../home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3)); // Loading time
    Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo with Glow
            Image.asset('assets/images/logo.png', width: 150), 
            SizedBox(height: 20),
            Text("COMET", style: TextStyle(
              color: Colors.cyanAccent, 
              fontSize: 32, 
              fontWeight: FontWeight.bold,
              letterSpacing: 4
            )),
            Text("One AI. Infinite Power.", style: TextStyle(color: Colors.white54)),
            SizedBox(height: 50),
            CircularProgressIndicator(color: Colors.deepPurpleAccent),
          ],
        ),
      ),
    );
  }
}