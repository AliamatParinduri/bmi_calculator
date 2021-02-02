import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.tinggi, this.berat});

  final int tinggi;
  final int berat;

  double _bmi;

  String calculateBMI() {
    _bmi = berat / pow(tinggi / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Anda memiliki berat badan lebih tinggi dari biasanya. Cobalah berolahraga lebih banyak.';
    } else if (_bmi >= 18.5) {
      return 'Anda memiliki berat badan yang normal. Good job!';
    } else {
      return 'Anda memiliki berat badan yang lebih rendah dari biasanya. Anda bisa makan lebih banyak.';
    }
  }
}
