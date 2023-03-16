import 'dart:math';

class AppBrain {
  final _random = Random();
  int _firstNumber = 6;
  int _secondNumber = 6;
  var list = ["head", "tail"];

  String getHeadOrTail() {
    return list[_random.nextInt(list.length)];
  }

  int getFirstNumber() {
    return _firstNumber;
  }

  int getSecondNumber() {
    return _secondNumber;
  }

  int getFirstRandomNumber() {
    return _firstNumber = _random.nextInt(6) + 1;
  }

  int getSecondRandomNumber() {
    return _secondNumber = _random.nextInt(6) + 1;
  }
}
