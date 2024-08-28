import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({required this.onTab, required this.ButtonTitle});

  final onTab;
  final String ButtonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        child: Center(
          child: Text(ButtonTitle,
            style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.w700),),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}