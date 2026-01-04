// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Flamingo`
  String get app_name {
    return Intl.message('Flamingo', name: 'app_name', desc: '', args: []);
  }

  /// `Record it not as an account,\nbut as a choice for the future`
  String get slogan {
    return Intl.message(
      'Record it not as an account,\nbut as a choice for the future',
      name: 'slogan',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `OK`
  String get ok {
    return Intl.message('OK', name: 'ok', desc: '', args: []);
  }

  /// `Today`
  String get today {
    return Intl.message('Today', name: 'today', desc: '', args: []);
  }

  /// `Delete`
  String get delete {
    return Intl.message('Delete', name: 'delete', desc: '', args: []);
  }

  /// `expenditure`
  String get expenditure {
    return Intl.message('expenditure', name: 'expenditure', desc: '', args: []);
  }

  /// `income`
  String get income {
    return Intl.message('income', name: 'income', desc: '', args: []);
  }

  /// `catering`
  String get catering {
    return Intl.message('catering', name: 'catering', desc: '', args: []);
  }

  /// `shopping`
  String get shopping {
    return Intl.message('shopping', name: 'shopping', desc: '', args: []);
  }

  /// `daily use`
  String get daily_use {
    return Intl.message('daily use', name: 'daily_use', desc: '', args: []);
  }

  /// `traffic`
  String get traffic {
    return Intl.message('traffic', name: 'traffic', desc: '', args: []);
  }

  /// `vegetable`
  String get vegetable {
    return Intl.message('vegetable', name: 'vegetable', desc: '', args: []);
  }

  /// `fruit`
  String get fruit {
    return Intl.message('fruit', name: 'fruit', desc: '', args: []);
  }

  /// `snack`
  String get snack {
    return Intl.message('snack', name: 'snack', desc: '', args: []);
  }

  /// `exercise`
  String get exercise {
    return Intl.message('exercise', name: 'exercise', desc: '', args: []);
  }

  /// `game`
  String get game {
    return Intl.message('game', name: 'game', desc: '', args: []);
  }

  /// `comm`
  String get communication {
    return Intl.message('comm', name: 'communication', desc: '', args: []);
  }

  /// `clothing`
  String get clothing {
    return Intl.message('clothing', name: 'clothing', desc: '', args: []);
  }

  /// `beauty`
  String get beauty {
    return Intl.message('beauty', name: 'beauty', desc: '', args: []);
  }

  /// `housing`
  String get housing {
    return Intl.message('housing', name: 'housing', desc: '', args: []);
  }

  /// `at home`
  String get home {
    return Intl.message('at home', name: 'home', desc: '', args: []);
  }

  /// `child`
  String get child {
    return Intl.message('child', name: 'child', desc: '', args: []);
  }

  /// `elder`
  String get elder {
    return Intl.message('elder', name: 'elder', desc: '', args: []);
  }

  /// `social`
  String get social {
    return Intl.message('social', name: 'social', desc: '', args: []);
  }

  /// `travel`
  String get travel {
    return Intl.message('travel', name: 'travel', desc: '', args: []);
  }

  /// `alcohol`
  String get alcohol {
    return Intl.message('alcohol', name: 'alcohol', desc: '', args: []);
  }

  /// `digital`
  String get digital {
    return Intl.message('digital', name: 'digital', desc: '', args: []);
  }

  /// `car`
  String get car {
    return Intl.message('car', name: 'car', desc: '', args: []);
  }

  /// `medical`
  String get medical {
    return Intl.message('medical', name: 'medical', desc: '', args: []);
  }

  /// `book`
  String get book {
    return Intl.message('book', name: 'book', desc: '', args: []);
  }

  /// `study`
  String get study {
    return Intl.message('study', name: 'study', desc: '', args: []);
  }

  /// `pet`
  String get pet {
    return Intl.message('pet', name: 'pet', desc: '', args: []);
  }

  /// `money`
  String get money {
    return Intl.message('money', name: 'money', desc: '', args: []);
  }

  /// `gift`
  String get gift {
    return Intl.message('gift', name: 'gift', desc: '', args: []);
  }

  /// `office`
  String get office {
    return Intl.message('office', name: 'office', desc: '', args: []);
  }

  /// `repair`
  String get repair {
    return Intl.message('repair', name: 'repair', desc: '', args: []);
  }

  /// `donate`
  String get donate {
    return Intl.message('donate', name: 'donate', desc: '', args: []);
  }

  /// `lottery`
  String get lottery {
    return Intl.message('lottery', name: 'lottery', desc: '', args: []);
  }

  /// `friends`
  String get friends {
    return Intl.message('friends', name: 'friends', desc: '', args: []);
  }

  /// `express`
  String get express {
    return Intl.message('express', name: 'express', desc: '', args: []);
  }

  /// `other`
  String get other {
    return Intl.message('other', name: 'other', desc: '', args: []);
  }

  /// `salary`
  String get salary {
    return Intl.message('salary', name: 'salary', desc: '', args: []);
  }

  /// `sideline`
  String get sideline {
    return Intl.message('sideline', name: 'sideline', desc: '', args: []);
  }

  /// `financial`
  String get financial {
    return Intl.message('financial', name: 'financial', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
