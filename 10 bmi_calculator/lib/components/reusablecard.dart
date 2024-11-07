import 'package:flutter/material.dart';

class reusedcont extends StatelessWidget {
  reusedcont(@required this.col, this.cards, this.onPress);
  final Color col;
  final Widget cards;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cards,
        margin: EdgeInsetsDirectional.all(15.0),
        decoration: BoxDecoration(
          color: col,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
