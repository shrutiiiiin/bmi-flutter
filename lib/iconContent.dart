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

// class RoundIconButton extends StatelessWidget {
//   RounndIconButton({this.icon}) {
//     // TODO: implement RounndIconButton
//     throw UnimplementedError();
//   }
//
//   late final IconData? icon;
//
//   @override
//   Widget build(BuildContext context) {
//     return RawMaterialButton(
//       onPressed: () {},
//       child: Icon(icon as IconData?),
//       shape: CircleBorder(),
//       fillColor: Color(0xFF4C4F5E),
//     );
//   }
// }

class Iconsmall extends StatelessWidget {
  Iconsmall({required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 30,
          color: Colors.white,
        ),
      ],
    );
  }
}
