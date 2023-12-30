import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                  cardchild: IconContent(),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  color: primaryColor,
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

class IconContent extends StatelessWidget {
  IconContent({required this.icontext, required this.icon});
  final Text icontext;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          FontAwesomeIcons.mars,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          icontext as String,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.color, this.cardchild});
  final Color color;
  final Widget? cardchild; //make it null
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      height: 200,
      width: 180,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
