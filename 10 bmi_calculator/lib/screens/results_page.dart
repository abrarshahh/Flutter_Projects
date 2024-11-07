import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import '../components/reusablecard.dart';

class Resultpage extends StatelessWidget {
  Resultpage(@required this.bmiresult, @required this.getResult,
      @required this.Interpretation);
  final String bmiresult;
  final String getResult;
  final String Interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0D22),
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                bmiresult,
                style: kYour,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: reusedcont(
              kActivecolor,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    getResult.toUpperCase(),
                    style: kResultstyle,
                  ),
                  Text(
                    '22',
                    style: kNumber,
                  ),
                  Text(
                    Interpretation,
                    textAlign: TextAlign.center,
                    style: kBody,
                  ),
                ],
              ),
              () {},
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: kBottomcolor,
              margin: EdgeInsets.only(top: 10.0),
              height: kBottomContainerheight,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Re-Calculate',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
