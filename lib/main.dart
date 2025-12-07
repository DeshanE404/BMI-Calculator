import 'package:flutter/material.dart';
import 'screens/input_page.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        primaryColor: const Color(0xFF2E7D8F),
        scaffoldBackgroundColor: const Color(0xFF0D1B2A),  // Deep dark blue background
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1A4A56),
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF2E7D8F),
          secondary: Color(0xFF4CAF50),
          surface: Color(0xFF1A4A56),
        ),
      ),
      home: InputPage(),
    );
  }
}


