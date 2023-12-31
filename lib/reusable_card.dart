import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.color, this.cardchild});
  final Color? color;
  final Widget? cardchild; //make it null
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      height: 110,
      width: 200,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class sliderContainer extends StatelessWidget {
  sliderContainer({this.cardchild, this.color});
  final Widget? cardchild;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      height: 200,
      width: 400,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
