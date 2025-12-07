import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bmi_calculator/main.dart';
import 'package:bmi_calculator/calculator_brain.dart';

void main() {
  group('BMI Calculator Widget Tests', () {
    testWidgets('App launches and shows input page', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(BMICalculator());

      // Verify that the app bar title is displayed
      expect(find.text('BMI CALCULATOR'), findsWidgets);
      
      // Verify that input fields are present
      expect(find.text('MALE'), findsOneWidget);
      expect(find.text('FEMALE'), findsOneWidget);
      expect(find.text('HEIGHT'), findsOneWidget);
      expect(find.text('WEIGHT'), findsOneWidget);
      expect(find.text('AGE'), findsOneWidget);
      expect(find.text('CALCULATE'), findsOneWidget);
    });

    testWidgets('Calculate button navigates to results page', (WidgetTester tester) async {
      await tester.pumpWidget(BMICalculator());

      // Tap the calculate button
      await tester.tap(find.text('CALCULATE'));
      await tester.pumpAndSettle();

      // Verify that results page is displayed
      expect(find.text('Your Results'), findsOneWidget);
      expect(find.text('RE-Calculate'), findsOneWidget);
    });
  });

  group('CalculatorBrain Tests', () {
    test('BMI calculation for normal weight', () {
      CalculatorBrain calc = CalculatorBrain(height: 175, weight: 70);
      String bmi = calc.calculateBMI();
      expect(double.parse(bmi), closeTo(22.9, 0.1));
      expect(calc.getResult(), 'Normal');
    });

    test('BMI calculation for underweight', () {
      CalculatorBrain calc = CalculatorBrain(height: 180, weight: 50);
      String bmi = calc.calculateBMI();
      expect(double.parse(bmi), closeTo(15.4, 0.1));
      expect(calc.getResult(), 'Underweight');
    });

    test('BMI calculation for overweight', () {
      CalculatorBrain calc = CalculatorBrain(height: 170, weight: 80);
      String bmi = calc.calculateBMI();
      expect(double.parse(bmi), closeTo(27.7, 0.1));
      expect(calc.getResult(), 'Overweight');
    });

    test('BMI calculation for obese', () {
      CalculatorBrain calc = CalculatorBrain(height: 170, weight: 100);
      String bmi = calc.calculateBMI();
      expect(double.parse(bmi), closeTo(34.6, 0.1));
      expect(calc.getResult(), 'Obese');
    });

    test('BMI interpretation messages are correct', () {
      CalculatorBrain calc1 = CalculatorBrain(height: 175, weight: 70);
      expect(calc1.getInterpretation(), contains('normal body weight'));

      CalculatorBrain calc2 = CalculatorBrain(height: 180, weight: 50);
      expect(calc2.getInterpretation(), contains('lower than normal'));

      CalculatorBrain calc3 = CalculatorBrain(height: 170, weight: 80);
      expect(calc3.getInterpretation(), contains('higher than normal'));

      CalculatorBrain calc4 = CalculatorBrain(height: 170, weight: 100);
      expect(calc4.getInterpretation(), contains('obese'));
    });
  });
}
