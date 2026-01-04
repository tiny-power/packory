import 'package:flutter/foundation.dart';

class DateerModel extends ChangeNotifier {
  DateTime _date = DateTime.now();

  DateTime get date => _date;

  void evaluate(DateTime value) {
    _date = value;
    notifyListeners();
  }

  void reset() {
    _date = DateTime.now();
    notifyListeners();
  }
}
