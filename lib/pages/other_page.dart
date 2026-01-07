// ignore_for_file: use_build_context_synchronously
import 'dart:async';

import 'package:packory/generated/l10n.dart';
import 'package:packory/main.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:toast/toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:packory/providers/amounter_model.dart';
import 'package:packory/providers/dateer_model.dart';

class OtherPage extends StatefulWidget {
  const OtherPage({super.key});
  @override
  State<OtherPage> createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  late StreamSubscription _streamSubscription;

  @override
  void initState() {
    // BannerAd.removeBanner();
    // NativeAd.removeNative();
    // RewardedAd.loadRewarded();
    super.initState();
    _streamSubscription = eventBus.on().listen((event) {
      if (event == 'pushRecord') {
        context.pushReplacement('/record');
      }
    });
  }

  @override
  void dispose() {
    _streamSubscription.cancel();
    super.dispose();
  }

  final List<Map<String, Object>> pay = [
    {"name": S.current.catering, "icon": Icons.flatware},
    {"name": S.current.shopping, "icon": Icons.shopping_bag},
    {"name": S.current.daily_use, "icon": Icons.adf_scanner},
    {"name": S.current.traffic, "icon": Icons.commute},
  ];

  final List<Map<String, Object>> income = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> clothes = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> toiletries = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> hair = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> makeup = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> carryOn = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> electronics = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> hot = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> rain = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> cold = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> work = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> international = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> outdoors = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> car = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> boat = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> food = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> workout = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> running = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> gym = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> beach = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> fineDining = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> hiking = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> camping = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> tennis = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> yoga = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> winterSports = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> fishing = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> hunting = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> cycling = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> diving = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> golf = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> photography = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> tools = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> pets = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  final List<Map<String, Object>> baby = [
    {"name": S.current.salary, "icon": Icons.money},
    {"name": S.current.sideline, "icon": Icons.credit_card},
    {"name": S.current.financial, "icon": Icons.account_balance},
    {"name": S.current.money, "icon": Icons.money_off},
    {"name": S.current.other, "icon": Icons.currency_bitcoin},
  ];

  DateTime currentDate = DateTime.now();
  DateTime selectedDate = DateTime.now();

  String _type = "";
  String _name = "";
  String _codePoint = "";

  dynamic _onTap(String type, int index) {
    _type = type;
    if (type == 'pay') {
      _name = pay[index]["name"].toString();
      _codePoint =
          '0x${(pay[index]["icon"] as IconData).codePoint.toRadixString(16)}';
    } else {
      _name = income[index]["name"].toString();
      _codePoint =
          '0x${(income[index]["icon"] as IconData).codePoint.toRadixString(16)}';
    }
    final amounterModel = Provider.of<AmounterModel>(context, listen: false);
    amounterModel.reset();
    final dateerModel = Provider.of<DateerModel>(context, listen: false);
    dateerModel.reset();
    _showModalBottomSheet();
  }

  void _detailOnPressed() {
    context.pushReplacement('/record');
  }

  dynamic _onDateTap() {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext builder) {
        return Container(
          height: 320,
          color: Theme.of(context).colorScheme.primaryContainer,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 48,
                padding: .only(left: 12, right: 12),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  crossAxisAlignment: .center,
                  children: [
                    GestureDetector(
                      onTap: () => {Navigator.pop(context)},
                      child: Text(
                        S.current.cancel,
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                          decoration: .none,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        final dateerModel = Provider.of<DateerModel>(
                          context,
                          listen: false,
                        );
                        dateerModel.evaluate(selectedDate);
                        currentDate = selectedDate;
                        Navigator.pop(context);
                      },
                      child: Text(
                        S.current.confirm,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          decoration: .none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 0.5,
                color: Theme.of(context).colorScheme.outlineVariant,
              ),
              SizedBox(
                height: 240,
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: currentDate,
                  onDateTimeChanged: (value) {
                    selectedDate = value;
                  },
                  minimumDate: DateTime(1990),
                  maximumDate: DateTime(2099),
                ),
              ),
              Container(
                width: double.infinity,
                height: 0.5,
                color: Theme.of(context).colorScheme.outlineVariant,
              ),
            ],
          ),
        );
      },
    );
  }

  dynamic _onKeyTap(String value) async {
    if (value == 'date') {
      _onDateTap();
    } else if (value == 'backspace') {
      final amounterModel = Provider.of<AmounterModel>(context, listen: false);
      String amount = amounterModel.amount;
      if (amount == '0.00') {
      } else if (amount.length == 1) {
        amounterModel.evaluate('0.00');
      } else {
        amounterModel.evaluate(amount.substring(0, amount.length - 1));
      }
    } else if (value == 'ok') {
    } else {
      final amounterModel = Provider.of<AmounterModel>(context, listen: false);
      if (amounterModel.amount == '0.00') {
        amounterModel.evaluate(value);
      } else {
        amounterModel.evaluate(amounterModel.amount + value);
      }
    }
  }

  Widget dateBuildChild(DateTime date) {
    String beforeDate = '${date.year}/${date.month}/${date.day}';
    String currentDate =
        '${DateTime.now().year}/${DateTime.now().month}/${DateTime.now().day}';
    if (beforeDate == currentDate) {
      return Row(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        spacing: 4,
        children: [
          Icon(Icons.calendar_month),
          Text(S.current.today, style: TextStyle(fontWeight: .bold)),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        spacing: 4,
        children: [Text(beforeDate, style: TextStyle(fontWeight: .bold))],
      );
    }
  }

  void _showModalBottomSheet() {
    showModalBottomSheet(
      context: context,
      constraints: BoxConstraints(),
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          height: 370,
          color: Theme.of(context).colorScheme.primaryContainer,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: .only(top: 8, right: 8),
                child: Row(
                  mainAxisAlignment: .end,
                  children: [
                    Consumer<AmounterModel>(
                      builder: (context, amounter, child) {
                        return Text(
                          amounter.amount,
                          style: TextStyle(fontSize: 24),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _onKeyTap("7"),
                      child: Container(
                        margin: .all(8),
                        decoration: BoxDecoration(
                          borderRadius: .all(Radius.circular(12)),
                          border: Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                          ),
                        ),
                        width: double.infinity,
                        height: 56,
                        child: Center(
                          child: Text(
                            "7",
                            style: TextStyle(fontSize: 18, fontWeight: .bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _onKeyTap("8"),
                      child: Container(
                        margin: .only(top: 8, right: 8, bottom: 8),
                        decoration: BoxDecoration(
                          borderRadius: .all(Radius.circular(12)),
                          border: Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                          ),
                        ),
                        width: double.infinity,
                        height: 56,
                        child: Center(
                          child: Text(
                            "8",
                            style: TextStyle(fontSize: 18, fontWeight: .bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _onKeyTap("9"),
                      child: Container(
                        margin: .only(top: 8, right: 8, bottom: 8),
                        decoration: BoxDecoration(
                          borderRadius: .all(Radius.circular(12)),
                          border: Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                          ),
                        ),
                        width: double.infinity,
                        height: 56,
                        child: Center(
                          child: Text(
                            "9",
                            style: TextStyle(fontSize: 18, fontWeight: .bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _onKeyTap('date'),
                      child: Container(
                        margin: .only(top: 8, right: 8, bottom: 8),
                        decoration: BoxDecoration(
                          borderRadius: .all(Radius.circular(12)),
                          border: Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                          ),
                        ),
                        width: double.infinity,
                        height: 56,
                        child: Center(
                          child: Consumer<DateerModel>(
                            builder: (context, dateer, child) {
                              return Row(
                                mainAxisAlignment: .center,
                                crossAxisAlignment: .center,
                                spacing: 4,
                                children: [dateBuildChild(dateer.date)],
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _onKeyTap("4"),
                      child: Container(
                        margin: .all(8),
                        decoration: BoxDecoration(
                          borderRadius: .all(Radius.circular(12)),
                          border: Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                          ),
                        ),
                        width: double.infinity,
                        height: 56,
                        child: Center(
                          child: Text(
                            "4",
                            style: TextStyle(fontSize: 18, fontWeight: .bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _onKeyTap("5"),
                      child: Container(
                        margin: .only(top: 8, right: 8, bottom: 8),
                        decoration: BoxDecoration(
                          borderRadius: .all(Radius.circular(12)),
                          border: Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                          ),
                        ),
                        width: double.infinity,
                        height: 56,
                        child: Center(
                          child: Text(
                            "5",
                            style: TextStyle(fontSize: 18, fontWeight: .bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _onKeyTap("6"),
                      child: Container(
                        margin: .only(top: 8, right: 8, bottom: 8),
                        decoration: BoxDecoration(
                          borderRadius: .all(Radius.circular(12)),
                          border: Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                          ),
                        ),
                        width: double.infinity,
                        height: 56,
                        child: Center(
                          child: Text(
                            "6",
                            style: TextStyle(fontSize: 18, fontWeight: .bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _onKeyTap("+"),
                      child: Container(
                        margin: .only(top: 8, right: 8, bottom: 8),
                        decoration: BoxDecoration(
                          borderRadius: .all(Radius.circular(12)),
                          border: Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                          ),
                        ),
                        width: double.infinity,
                        height: 56,
                        child: Center(
                          child: Text(
                            "+",
                            style: TextStyle(fontSize: 18, fontWeight: .bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _onKeyTap("1"),
                      child: Container(
                        margin: .all(8),
                        decoration: BoxDecoration(
                          borderRadius: .all(Radius.circular(12)),
                          border: Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                          ),
                        ),
                        width: double.infinity,
                        height: 56,
                        child: Center(
                          child: Text(
                            "1",
                            style: TextStyle(fontSize: 18, fontWeight: .bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _onKeyTap("2"),
                      child: Container(
                        margin: .only(top: 8, right: 8, bottom: 8),
                        decoration: BoxDecoration(
                          borderRadius: .all(Radius.circular(12)),
                          border: Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                          ),
                        ),
                        width: double.infinity,
                        height: 56,
                        child: Center(
                          child: Text(
                            "2",
                            style: TextStyle(fontSize: 18, fontWeight: .bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _onKeyTap("3"),
                      child: Container(
                        margin: .only(top: 8, right: 8, bottom: 8),
                        decoration: BoxDecoration(
                          borderRadius: .all(Radius.circular(12)),
                          border: Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                          ),
                        ),
                        width: double.infinity,
                        height: 56,
                        child: Center(
                          child: Text(
                            "3",
                            style: TextStyle(fontSize: 18, fontWeight: .bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _onKeyTap("-"),
                      child: Container(
                        margin: .only(top: 8, right: 8, bottom: 8),
                        decoration: BoxDecoration(
                          borderRadius: .all(Radius.circular(12)),
                          border: Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                          ),
                        ),
                        width: double.infinity,
                        height: 56,
                        child: Center(
                          child: Text(
                            "-",
                            style: TextStyle(fontSize: 18, fontWeight: .bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _onKeyTap("."),
                      child: Container(
                        margin: .all(8),
                        decoration: BoxDecoration(
                          borderRadius: .all(Radius.circular(12)),
                          border: Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                          ),
                        ),
                        width: double.infinity,
                        height: 56,
                        child: Center(
                          child: Text(
                            ".",
                            style: TextStyle(fontSize: 18, fontWeight: .bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _onKeyTap("0"),
                      child: Container(
                        margin: .only(top: 8, right: 8, bottom: 8),
                        decoration: BoxDecoration(
                          borderRadius: .all(Radius.circular(12)),
                          border: Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                          ),
                        ),
                        width: double.infinity,
                        height: 56,
                        child: Center(
                          child: Text(
                            "0",
                            style: TextStyle(fontSize: 18, fontWeight: .bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _onKeyTap("backspace"),
                      child: Container(
                        margin: .only(top: 8, right: 8, bottom: 8),
                        decoration: BoxDecoration(
                          borderRadius: .all(Radius.circular(12)),
                          border: Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                          ),
                        ),
                        width: double.infinity,
                        height: 56,
                        child: Center(child: Icon(Icons.backspace)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _onKeyTap("ok"),
                      child: Container(
                        margin: .only(top: 8, right: 8, bottom: 8),
                        decoration: BoxDecoration(
                          borderRadius: .all(Radius.circular(12)),
                          border: Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                          ),
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                        width: double.infinity,
                        height: 56,
                        child: Center(
                          child: Text(
                            S.current.ok,
                            style: TextStyle(fontSize: 16, fontWeight: .bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  List<Widget> payBuildChild() {
    return List.generate(
      pay.length,
      (i) => Column(
        children: [
          GestureDetector(
            onTap: () => _onTap('pay', i),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.inversePrimary,
                borderRadius: BorderRadius.circular(28),
              ),
              width: 56,
              height: 56,
              margin: .only(bottom: 6),
              child: Icon(
                pay[i]["icon"] as IconData?,
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
          Text(pay[i]["name"].toString()),
        ],
      ),
    );
  }

  List<Widget> incomeBuildChild() {
    return List.generate(
      income.length,
      (i) => Column(
        children: [
          GestureDetector(
            onTap: () => _onTap('income', i),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.inversePrimary,
                borderRadius: BorderRadius.circular(28),
              ),
              width: 56,
              height: 56,
              margin: .only(bottom: 6),
              child: Icon(
                income[i]["icon"] as IconData?,
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
          Text(income[i]["name"].toString()),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return DefaultTabController(
      length: 12,
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.current.app_name, style: TextStyle(fontSize: 18)),
          centerTitle: true,
          bottom: TabBar(
            isScrollable: true,
            tabAlignment: .center,
            dividerHeight: 0,
            labelStyle: const TextStyle(fontSize: 18),
            tabs: [
              Tab(text: S.current.expenditure),
              Tab(text: S.current.income),
              Tab(text: S.current.alcohol),
              Tab(text: S.current.expenditure),
              Tab(text: S.current.income),
              Tab(text: S.current.alcohol),
              Tab(text: S.current.expenditure),
              Tab(text: S.current.income),
              Tab(text: S.current.alcohol),
              Tab(text: S.current.expenditure),
              Tab(text: S.current.income),
              Tab(text: S.current.alcohol),
            ],
          ),
          actions: [
            IconButton(onPressed: _detailOnPressed, icon: Icon(Icons.wysiwyg)),
          ],
        ),
        body: SafeArea(
          child: Container(
            margin: .only(top: 12),
            child: TabBarView(
              children: [
                GridView.extent(
                  maxCrossAxisExtent: 100,
                  padding: const EdgeInsets.all(4),
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  children: payBuildChild(),
                ),
                GridView.extent(
                  maxCrossAxisExtent: 100,
                  padding: const EdgeInsets.all(4),
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  children: incomeBuildChild(),
                ),
                GridView.extent(
                  maxCrossAxisExtent: 100,
                  padding: const EdgeInsets.all(4),
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  children: incomeBuildChild(),
                ),
                GridView.extent(
                  maxCrossAxisExtent: 100,
                  padding: const EdgeInsets.all(4),
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  children: incomeBuildChild(),
                ),
                GridView.extent(
                  maxCrossAxisExtent: 100,
                  padding: const EdgeInsets.all(4),
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  children: incomeBuildChild(),
                ),
                GridView.extent(
                  maxCrossAxisExtent: 100,
                  padding: const EdgeInsets.all(4),
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  children: incomeBuildChild(),
                ),
                GridView.extent(
                  maxCrossAxisExtent: 100,
                  padding: const EdgeInsets.all(4),
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  children: payBuildChild(),
                ),
                GridView.extent(
                  maxCrossAxisExtent: 100,
                  padding: const EdgeInsets.all(4),
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  children: incomeBuildChild(),
                ),
                GridView.extent(
                  maxCrossAxisExtent: 100,
                  padding: const EdgeInsets.all(4),
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  children: incomeBuildChild(),
                ),
                GridView.extent(
                  maxCrossAxisExtent: 100,
                  padding: const EdgeInsets.all(4),
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  children: incomeBuildChild(),
                ),
                GridView.extent(
                  maxCrossAxisExtent: 100,
                  padding: const EdgeInsets.all(4),
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  children: incomeBuildChild(),
                ),
                GridView.extent(
                  maxCrossAxisExtent: 100,
                  padding: const EdgeInsets.all(4),
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  children: incomeBuildChild(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
