import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/cardicon.dart';
import '../components/reusablecard.dart';
import 'package:bmi_calculator/constants.dart';
import 'results_page.dart';
import '../components/roundicon.dart';
import 'package:bmi_calculator/brain.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selected;
  int height = 180;
  int weight = 60;
  int age = 20;
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusedcont(
                      selected == Gender.male ? kActivecolor : kInactivecolor,
                      cardWidget(FontAwesomeIcons.mars, 'MALE'), () {
                    setState(() {
                      selected = Gender.male;
                    });
                  }),
                ),
                Expanded(
                  child: reusedcont(
                      selected == Gender.female ? kActivecolor : kInactivecolor,
                      cardWidget(FontAwesomeIcons.venus, 'FEMALE'), () {
                    setState(() {
                      selected = Gender.female;
                    });
                  }),
                ),
              ],
            ),
          ),
          Expanded(
            child: reusedcont(
                kActivecolor,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: kLabelTextstyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kPaneltextstyle,
                        ),
                        Text(
                          'cm',
                          style: kLabelTextstyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 10.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 20.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
                () {}),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusedcont(
                      kActivecolor,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: kLabelTextstyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kPaneltextstyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              roundIconButton(FontAwesomeIcons.minus, () {
                                setState(() {
                                  weight--;
                                });
                              }),
                              SizedBox(
                                width: 20.0,
                              ),
                              roundIconButton(FontAwesomeIcons.plus, () {
                                setState(() {
                                  weight++;
                                });
                              }),
                            ],
                          ),
                        ],
                      ),
                      () {}),
                ),
                Expanded(
                  child: reusedcont(
                      kActivecolor,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: kLabelTextstyle,
                          ),
                          Text(
                            age.toString(),
                            style: kPaneltextstyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              roundIconButton(FontAwesomeIcons.minus, () {
                                setState(() {
                                  age--;
                                });
                              }),
                              SizedBox(
                                width: 20.0,
                              ),
                              roundIconButton(FontAwesomeIcons.plus, () {
                                setState(() {
                                  age++;
                                });
                              }),
                            ],
                          )
                        ],
                      ),
                      () {}),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              CalBrain cal = CalBrain(height, weight);

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Resultpage(cal.calculateBMI(), cal.getResult(),
                    cal.getInterpretation());
              }));
            },
            child: Container(
              color: kBottomcolor,
              margin: EdgeInsets.only(top: 10.0),
              height: kBottomContainerheight,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Calculate Your BMI',
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
