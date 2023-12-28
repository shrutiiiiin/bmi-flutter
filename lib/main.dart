import 'package:flutter/material.dart';

void main() {
  runApp(bmiCalculator());
}

class bmiCalculator extends StatelessWidget {
  const bmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
