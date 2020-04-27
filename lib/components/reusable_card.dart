import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({this.color, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(10.0),
//          boxShadow: [
//            BoxShadow(
//              color: Color(0xFF222021),
//              offset: Offset(5.0, 5.0),
//              blurRadius: 15.0,
//              spreadRadius: 1.0
//            ),
//            BoxShadow(
//                color: Color(0xFF363636),
//                offset: Offset(-5.0, -5.0),
//                blurRadius: 15.0,
//                spreadRadius: 1.0
//            )
//          ]
        ),
        child: cardChild,
      ),
    );
  }
}
