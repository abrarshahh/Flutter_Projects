import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void sound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded call(Color color, int note) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          sound(note);
        },
        style: TextButton.styleFrom(backgroundColor: color),
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              call(Colors.red, 1),
              call(Colors.orange, 2),
              call(Colors.yellow, 3),
              call(Colors.green, 4),
              call(Colors.teal, 5),
              call(Colors.blue, 6),
              call(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
