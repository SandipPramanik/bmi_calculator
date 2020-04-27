import 'package:flutter/material.dart';
import 'package:bmicalculator/constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  BottomButton({this.onTap, this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        height: kBottomContainerHeight,
        width: double.infinity,
        decoration: BoxDecoration(
            color: kBottomContainerColor,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(5.0), topLeft: Radius.circular(5.0))),
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.7),
          ),
        ),
      ),
    );
  }
}
