import 'package:flutter/material.dart';
import 'ui/splash/splash_screen.dart';
import 'src/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Yahan Config load karne ka logic aayega
  runApp(CometAIApp());
}

class CometAIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COMET AI',
      debugShowCheckedModeBanner: false,
      theme: CometTheme.darkTheme, // Custom Theme
      home: SplashScreen(),
    );
  }
}