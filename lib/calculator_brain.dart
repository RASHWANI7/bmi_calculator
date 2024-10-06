import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi = 0.0;
  CalculatorBrain(this.height, this.weight);

  String calculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (_bmi >= 25)
      return 'Overweighy';
    else if (_bmi > 18.5 && _bmi < 25)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getinterpretation() {
    if (_bmi >= 25)
      return 'You have a higher than normal weight , you have to exercise';
    else if (_bmi > 18.5 && _bmi < 25)
      return 'You hava a normal body weight , Good job!';
    else
      return 'You have a lower than normal weight , you have to eat more';
  }
}
