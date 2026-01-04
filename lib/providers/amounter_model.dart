import 'package:flutter/foundation.dart';

class AmounterModel extends ChangeNotifier {
  String _amount = "0.00";

  String get amount => _amount;

  void evaluate(String value) {
    _amount = value;
    notifyListeners();
  }

  void reset() {
    _amount = "0.00";
    notifyListeners();
  }
}
