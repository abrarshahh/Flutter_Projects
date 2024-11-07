import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text('Ask Me Anything'),
          ),
        ),
        body: magicball(),
      ),
    ),
  );
}

class magicball extends StatefulWidget {
  const magicball({Key? key}) : super(key: key);

  @override
  State<magicball> createState() => _magicballState();
}

class _magicballState extends State<magicball> {
  int abr = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(
          onPressed: () {
            setState(() {
              abr = Random().nextInt(5) + 1;
            });
          },
          child: Image(
            image: AssetImage('images/ball$abr.png'),
          ),
        ),
      ),
    );
  }
}
