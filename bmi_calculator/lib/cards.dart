import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  Cards({required this.the_color, this.childCard});

  final Color the_color;
  final childCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: the_color,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}