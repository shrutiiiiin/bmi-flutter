import 'package:bmi_flutter/result_page.dart';
import 'package:bmi_flutter/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconContent.dart';
import 'constants.dart';
import 'result_page.dart';
import 'bottom_button_page.dart';

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
  int weight = 60;
  int age = 19;

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
            ],
          ),
          Expanded(
            child: ReusableCard(
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
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1155),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newvalue) {
                        setState(() {
                          height = newvalue.toInt();
                        });
                      },
                    ),
                  ),
                ],
              ),
              color: kprimaryColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          // mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Iconsmall(
                              varicon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Iconsmall(
                              varicon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            // });,
                          ],
                        )
                      ],
                    ),
                    color: kprimaryColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Iconsmall(
                              varicon: FontAwesomeIcons.plus,
                              onPressed: () {
                                print('inc age');
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),

                            Iconsmall(
                              varicon: FontAwesomeIcons.minus,
                              onPressed: () {
                                print('dec age');
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            // });,
                          ],
                        )
                      ],
                    ),
                    color: kprimaryColor,
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonTitle: 'CAlCULATE',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResultPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
