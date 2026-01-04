import 'package:packory/database_helper.dart';
import 'package:flutter/foundation.dart';

class RecorderModel extends ChangeNotifier {
  List<Map> _list = [];

  List<Map> get list => _list;

  String _payAmount = '0.00';

  String get payAmount => _payAmount;

  String _incomeAmount = '0.00';

  String get incomeAmount => _incomeAmount;

  DateTime _currentDate = DateTime.now();

  DateTime get currentDate => _currentDate;

  List<Map> _totalList = [];

  List<Map> get totalList => _totalList;

  void queryData(DateTime date) async {
    _currentDate = date;
    var month = '';
    if (date.month < 10) {
      month = '0${date.month}';
    } else {
      month = date.month.toString();
    }
    final db = await DatabaseHelper().database;
    try {
      var listData = await db.rawQuery(
        'SELECT * FROM Record WHERE strftime("%Y-%m", record_date) = "${date.year}-$month" order by record_date desc',
      );
      _list = listData.toList();
      var payAmountList = await db.rawQuery(
        'SELECT IFNULL(SUM(amount),0) as "amount" FROM Record WHERE strftime("%Y-%m", record_date) = "${date.year}-$month" AND amount < 0',
      );
      _payAmount = double.parse(
        payAmountList[0]["amount"].toString(),
      ).abs().toString();
      var incomeAmountList = await db.rawQuery(
        'SELECT IFNULL(SUM(amount),0) as "amount" FROM Record WHERE strftime("%Y-%m", record_date) = "${date.year}-$month" AND amount > 0',
      );
      _incomeAmount = incomeAmountList[0]["amount"].toString();

      var totalListData = await db.rawQuery('SELECT * FROM Record');
      _totalList = totalListData.toList();
    } catch (e) {
      e.toString();
    }
    notifyListeners();
  }

  void deleteById(int index, String id) async {
    _list.removeAt(index);
    final db = await DatabaseHelper().database;
    var month = '';
    if (_currentDate.month < 10) {
      month = '0${_currentDate.month}';
    } else {
      month = _currentDate.month.toString();
    }
    try {
      await db.rawDelete('delete from Record where id=$id');
      var payAmountList = await db.rawQuery(
        'SELECT IFNULL(SUM(amount),0) as "amount" FROM Record WHERE strftime("%Y-%m", record_date) = "${_currentDate.year}-$month" AND amount < 0',
      );
      _payAmount = double.parse(
        payAmountList[0]["amount"].toString(),
      ).abs().toString();
      var incomeAmountList = await db.rawQuery(
        'SELECT IFNULL(SUM(amount),0) as "amount" FROM Record WHERE strftime("%Y-%m", record_date) = "${_currentDate.year}-$month" AND amount > 0',
      );
      _incomeAmount = incomeAmountList[0]["amount"].toString();
      var totalListData = await db.rawQuery('SELECT * FROM Record');
      _totalList = totalListData.toList();
    } catch (e) {
      e.toString();
    }
    notifyListeners();
  }

  void insert(
    String name,
    String codePoint,
    String dateStr,
    String amount,
  ) async {
    final db = await DatabaseHelper().database;
    var month = '';
    if (_currentDate.month < 10) {
      month = '0${_currentDate.month}';
    } else {
      month = _currentDate.month.toString();
    }
    try {
      await db.rawInsert(
        'INSERT INTO Record(name, icon, record_date, amount) VALUES("$name" , "$codePoint", "$dateStr", $amount)',
      );
      var listData = await db.rawQuery(
        'SELECT * FROM Record WHERE strftime("%Y-%m", record_date) = "${_currentDate.year}-$month" order by record_date desc',
      );
      _list = listData.toList();
      var payAmountList = await db.rawQuery(
        'SELECT IFNULL(SUM(amount),0) as "amount" FROM Record WHERE strftime("%Y-%m", record_date) = "${_currentDate.year}-$month" AND amount < 0',
      );
      _payAmount = double.parse(
        payAmountList[0]["amount"].toString(),
      ).abs().toString();
      var incomeAmountList = await db.rawQuery(
        'SELECT IFNULL(SUM(amount),0) as "amount" FROM Record WHERE strftime("%Y-%m", record_date) = "${_currentDate.year}-$month" AND amount > 0',
      );
      _incomeAmount = incomeAmountList[0]["amount"].toString();
      var totalListData = await db.rawQuery('SELECT * FROM Record');
      _totalList = totalListData.toList();
    } catch (e) {
      e.toString();
    }
    notifyListeners();
  }
}
