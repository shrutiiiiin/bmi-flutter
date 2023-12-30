import 'package:bmi_flutter/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconContent.dart';

const bottomheightcontainer = 70.0;
const bottomContainerColor = Color(0xFFEB1555);
const primaryColor = Color(0xFF1D1E33);
const inactiveColor = Color(0xFF111328);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  // Color malecardColor = inactiveColor;
  // Color femalecardColor = inactiveColor;

  // void updateColor(Gender gender) {
  //   if (gender == Gender.male) {
  //       if (malecardColor == inactiveColor) {
  //         malecardColor = primaryColor;
  //         femalecardColor = inactiveColor;
  //       } else {
  //         malecardColor = inactiveColor;
  //       }
  //     } else {
  //       if (femalecardColor == inactiveColor) {
  //         femalecardColor = primaryColor;
  //         malecardColor = inactiveColor;
  //       } else {
  //         femalecardColor = inactiveColor;
  //       }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(Gender.female);
                    });
                  },
                  child: ReusableCard(
                    color: malecardColor,
                    cardchild: IconContent(
                        icontext: 'MALE', icon: FontAwesomeIcons.mars),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.female);
                      });
                    },
                    child: ReusableCard(
                      color: femalecardColor,
                      cardchild: IconContent(
                        icontext: 'FEMALE',
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              height: 200,
              width: 350,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  color: primaryColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  color: primaryColor,
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: bottomheightcontainer,
            margin: EdgeInsets.only(top: 15),
            color: bottomContainerColor,
          ),
        ],
      ),
    );
  }
}
