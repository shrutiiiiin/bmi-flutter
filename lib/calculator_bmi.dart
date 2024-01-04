import 'dart:math';

class CalculateBMI {
  CalculateBMI({required this.height, required this.weight});
  final int height;
  final int weight;

  double _bmi;
  String calculate_bmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You are weight! Please take care of your health';
    } else if (_bmi > 18.5) {
      return 'Amazing! You are as fit as an Apple';
    } else {
      return 'Oh no ! Start eating more fibers. ';
    }
  }
}
