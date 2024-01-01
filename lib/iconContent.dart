import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.icontext, required this.icon});
  final String icontext;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 50,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          icontext,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
