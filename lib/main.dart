import 'package:custom_animation_ui/drawer_screen.dart';
import 'package:custom_animation_ui/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
      
        body: Stack(
          children: [
            DrawerScreen(), HomeScreen()],
        ),
      ),
    );
  }
}
