import 'package:flutter/material.dart';

import 'constants.dart';

class ShowBMI extends StatelessWidget {
  // const ShowBMI({super.key});
  final String category;
  final double bmi;
  final String status;
  ShowBMI({required this.category, required this.bmi, required this.status});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            child: Text(
          category,
          style: TextStyle(
              color: Colors.green, fontSize: 30, fontWeight: FontWeight.bold),
        )),
        Text(
          bmi.toStringAsFixed(2),
          // Bmi.toString(),
          style: kNumberTextStyle.copyWith(fontSize: 100),
        ),
        Text(
          status,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
