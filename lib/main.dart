import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const BMICalculator());
}

//main contains theming , or designing
class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: InputPage(),
        theme: ThemeData.dark().copyWith(
            primaryColor: Color(0xFF0A0E21),
            scaffoldBackgroundColor: Color(0xFF0A0E21)));
  }
}
