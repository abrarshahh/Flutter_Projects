import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class cardWidget extends StatelessWidget {
  cardWidget(this.icon, this.gender);
  final IconData icon;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: Color(0xFF8D8E98),
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: kLabelTextstyle,
        ),
      ],
    );
  }
}
