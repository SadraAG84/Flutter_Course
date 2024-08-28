import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({super.key, required this.the_color, this.childCard, this.onPress});

  final Color the_color;
  final childCard;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childCard,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: the_color,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
