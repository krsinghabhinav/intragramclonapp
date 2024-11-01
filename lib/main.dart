import 'package:flutter/material.dart';
import 'package:intragramclonapp/view/screens/splace_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        brightness: Brightness.dark, // App ko dark mode mein set karta hai
        primaryColor: Colors.black, // Primary color ko black set karta hai
        scaffoldBackgroundColor:
            Colors.black, // Background color ko black set karta hai
        appBarTheme: const AppBarTheme(
          backgroundColor:
              Colors.black, // AppBar ka color black mein set karta hai
          elevation: 0, // AppBar shadow ko remove karta hai for a cleaner look
        ),
        colorScheme: ColorScheme.dark(
          primary: Colors
              .blueAccent, // Primary color dark theme ke sath contrast ke liye
          secondary: Colors.white, // Secondary color white mein set kiya
        ),
      ),
      home: SplaceScreen(),
    );
  }
}
