import 'package:bmi_flutter/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconContent.dart';
import 'constants.dart';

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
  Gender? selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  child: ReusableCard(
                    color: selectedGender == Gender.male
                        ? kprimaryColor
                        : kinactiveColor,
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
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      color: selectedGender == Gender.female
                          ? kprimaryColor
                          : kinactiveColor,
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
            child: sliderContainer(
              color: kprimaryColor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newvalue) {
                        setState(() {
                          height = newvalue.toInt();
                        });
                      },
                      label: '$height',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  color: kprimaryColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  color: kprimaryColor,
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: kBottomheightcontainer,
            margin: EdgeInsets.only(top: 15),
            color: kBottomContainerColor,
          ),
        ],
      ),
    );
  }
}
