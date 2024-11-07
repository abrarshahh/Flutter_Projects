import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('I am poor'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image:
                AssetImage('images/vecteezy_ignition-mineral-coal_6039680.jpg'),
          ),
        ),
      ),
    ),
  );
}
