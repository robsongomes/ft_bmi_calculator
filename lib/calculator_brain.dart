import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;

  CalculatorBrain({@required this.weight, @required this.height}) {
    this._bmi = weight / pow(height / 100, 2);
  }

  String getBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Acima do Peso';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Abaixo do Peso';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Você está com o peso acima do normal. Que tal começar a praticar exercícios?';
    } else if (_bmi >= 18.5) {
      return 'Você está com o seu peso normal. Parabéns!';
    } else {
      return 'Você está abaixo do peso. É bom comer um pouco mais!';
    }
  }
}
