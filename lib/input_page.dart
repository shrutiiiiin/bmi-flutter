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
            child: Container(
              child: Row(
                children: [Text()],
              ),
              height: 200,
              width: 350,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: kprimaryColor,
                borderRadius: BorderRadius.circular(10),
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
