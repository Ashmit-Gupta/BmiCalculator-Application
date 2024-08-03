import 'package:flutter/material.dart';

//constants must be init outside the class , or like global
//k stands for constants
const Color kBottomContainerColor = Color(0XFFEB1555);
const Color kActiveCardColor = Color(0xFF1D1E33);
const Color kInactiveCardColor = Color(0xFF111328);

const TextStyle kTextStyle = TextStyle(
  fontSize: 18,
  color: Color(0xFF8D8E98),
);

const TextStyle kNumberTextStyle = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.w900,
);

//enums
enum Gender { male, female }
