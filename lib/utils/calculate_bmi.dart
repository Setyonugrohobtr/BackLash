import 'dart:math';

class BmiLogic {
  BmiLogic({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Obesitas';
    } else if (_bmi > 18.5) {
      return 'Ideal';
    } else {
      return 'Terlalu rendah';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Anda memiliki berat badan yang lebih tinggi dari biasanya. Seringlah latihan.\n 💪🚵🚴🏊🏇🏃';
    } else if (_bmi >= 18.5) {
      return 'Berat anda ideal!. KEREEEN!\n 🍇🍉🍍🍒🌽';
    } else {
      return 'Anda memiliki berat badan lebih rendah dari normal. Makan lebih banyak yaa.\n 🍲🍱🍳🍗🍒🍎';
    }
  }
}