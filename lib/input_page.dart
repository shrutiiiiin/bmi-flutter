import 'package:flutter/material.dart';

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
                child: Container(
                  height: 200,
                  width: 180,
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                height: 200,
                width: 180,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(10),
                ),
              ))
            ],
          ),
          Expanded(
            child: Container(
              height: 200,
              width: 500,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFF1D1E33),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 200,
                  width: 180,
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                height: 200,
                width: 180,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(10),
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
