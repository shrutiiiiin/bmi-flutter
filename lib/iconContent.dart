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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 30,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          icontext,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}

class Iconsmall extends StatelessWidget {
  Iconsmall({required this.varicon, required this.onPressed, this.onPress});
  final IconData varicon;
  final Function onPressed;
  VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onPress,
          child: IconButton(
            iconSize: 30,
            icon: Icon(varicon),
            color: Colors.white,
            onPressed: () {
              onPressed;
            },
          ),
        ),
      ],
    );
  }
}
