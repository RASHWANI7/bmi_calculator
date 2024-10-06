import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BMI_Calculator());
}

class BMI_Calculator extends StatelessWidget {
  const BMI_Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0B0632),
        ),
        scaffoldBackgroundColor: Color(0xFF0B0623),
        textTheme: TextTheme(
          titleLarge: TextStyle(color: Colors.white, fontSize: 25),
          titleMedium: TextStyle(color: Colors.white, fontSize: 25),
          titleSmall: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      home: Input_Page(),
    );
  }
}
