import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  //constructor
  ReusableCard(
      {required this.colour, required this.cardChild, required this.onPress});

  final Color
      colour; // stateless widgets are immutable and therefore its properties also cant be changed ,therefore we give final with colour
  final Widget cardChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
        child: cardChild,
      ),
    );
  }
}
