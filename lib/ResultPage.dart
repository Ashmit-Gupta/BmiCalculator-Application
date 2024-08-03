import 'package:bmi_cal/ShowBMI.dart';
import 'package:bmi_cal/constants.dart';
import 'package:bmi_cal/reusable_card.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  final int age;
  final int weight;
  final double height;

  ResultPage({required this.age, required this.weight, required this.height});

  double calBmi() {
    return (weight / (height * height));
  }

  Widget checkBmi(double bmi) {
    if (bmi < 18.5) {
      return ShowBMI(
          category: 'UnderWeight', bmi: bmi, status: 'You are underWeight');
    } else if (bmi > 18.5 && bmi <= 25) {
      return ShowBMI(
          category: 'Normal Weight',
          bmi: bmi,
          status: 'Congratulation You have a normal Body Weight ');
    } else {
      return ShowBMI(
          category: ' Over Weight', bmi: bmi, status: 'You are Over Weight ');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Your Result',
            style: kNumberTextStyle.copyWith(fontSize: 50),
          ),
          Expanded(
            child: ReusableCard(
              onPress: () {},
              colour: kActiveCardColor,
              cardChild: checkBmi(
                calBmi(),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 80,
            color: kBottomContainerColor,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Center(
                child: Text(
                  'RECALCULATE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
