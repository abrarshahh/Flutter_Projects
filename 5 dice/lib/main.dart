import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int abr = 1;
  int ar = 1;

  void Diceface() {
    setState(() {
      abr = Random().nextInt(6) + 1;
      ar = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                Diceface();
              },
              child: Image.asset('images/dice$abr.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                Diceface();
              },
              child: Image.asset('images/dice$ar.png'),
            ),
          ),
        ],
      ),
    );
  }
}
