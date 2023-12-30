import 'package:bmi_flutter/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconContent.dart';

const bottomheightcontainer = 70.0;
const bottomContainerColor = Color(0xFFEB1555);
const primaryColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                child: ReusableCard(
                  color: primaryColor,
                  cardchild: IconContent(
                      icontext: 'MALE', icon: FontAwesomeIcons.mars),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  color: primaryColor,
                  cardchild: IconContent(
                    icontext: 'FEMALE',
                    icon: FontAwesomeIcons.venus,
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
