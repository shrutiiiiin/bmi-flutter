import 'dart:math';

class Calculate_BMI {
  Calculate_BMI({required this.height, required this.weight});
  final int height;
  final int weight;
  String calculate_bmi() {
    double bmi = weight / pow(height, 2);
    return bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (bmi >= 25) {
      return 'OVERWEIGHT';
    }
    else if (24 >bmi> 18.5)
      {
        return 'NORMAL';
      }
    else
      {
        return'UNDERWEIGHT';
      }
  }
}
