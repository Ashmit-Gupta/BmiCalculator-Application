import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundedIconButton extends StatelessWidget {
  final FaIcon icon;
  final Function onPressed;
  RoundedIconButton({required this.icon, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        onPressed();
      },
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      elevation: 200,
      fillColor: Color(0xFF4C4F56),
      child: icon,
    );
  }
}
