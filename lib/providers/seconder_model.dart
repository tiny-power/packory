import 'package:flutter/foundation.dart';

class SeconderModel extends ChangeNotifier {
  int _second = 60;
  int _defaultSecond = 60;

  int get second => _second;

  int get defaultSecond => _defaultSecond;

  void evaluate(int value) {
    _second = value;
    notifyListeners();
  }

  void setDefaultSecond(int value) {
    _defaultSecond = value;
    _second = value;
    notifyListeners();
  }

  void reset() {
    _second = _defaultSecond;
    notifyListeners();
  }
}
