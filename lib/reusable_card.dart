import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.color, this.cardchild});
  final Color color;
  final Widget? cardchild; //make it null
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      height: 150,
      width: 400,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
