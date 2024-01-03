import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.buttonTitle, required this.onTap});

  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kBodyTextStyle,
          ),
        ),
        width: double.infinity,
        height: kBottomheightcontainer,
        margin: EdgeInsets.only(top: 5),
        color: kBottomContainerColor,
      ),
    );
  }
}
