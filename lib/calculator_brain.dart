import 'dart:math';
import 'dart:ui';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight}) {
    _bmi = weight / pow(height / 100, 2);
  }

  final int height;
  final int weight;

  late final double _bmi;

  String calculateBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'Obese';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return 'You have an obese body weight. It is recommended to consult with a healthcare provider and develop a weight management plan.';
    } else if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  // Get color for result text based on BMI category
  Color getResultColor() {
    if (_bmi >= 30) {
      return const Color(0xFFEF5350);  // Red for obese
    } else if (_bmi >= 25) {
      return const Color(0xFFFFA726);  // Orange for overweight
    } else if (_bmi > 18.5) {
      return const Color(0xFF66BB6A);  // Green for normal
    } else {
      return const Color(0xFF42A5F5);  // Blue for underweight
    }
  }
}
