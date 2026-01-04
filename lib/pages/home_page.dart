// ignore_for_file: use_build_context_synchronously
import 'dart:async';

import 'package:packory/ad/banner.dart';
import 'package:packory/ad/interstitial.dart';
import 'package:packory/ad/native.dart';
import 'package:packory/generated/l10n.dart';
import 'package:packory/main.dart';
import 'package:packory/providers/rewarder_model.dart';
import 'package:packory/providers/seconder_model.dart';
import 'package:packory/providers/udider_model.dart';
import 'package:packory/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:packory/providers/recorder_model.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:flutter_udid/flutter_udid.dart';
import 'package:toast/toast.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with RouteAware {
  DateTime selectedDate = DateTime.now();
  late Timer _interstitialTimer;
  late Timer _timer;
  late Timer _bannerTimer;
  late Timer _nativeTimer;
  late Timer _fourteenNativeTimer;
  late StreamSubscription _streamSubscription;

  @override
  void initState() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      final seconderModel = Provider.of<SeconderModel>(context, listen: false);
      if (seconderModel.second <= 0) {
        _timer.cancel();
      } else {
        seconderModel.evaluate(seconderModel.second - 1);
      }
    });
    _fourteenNativeTimer = Timer.periodic(Duration(seconds: 14), (timer) async {
      NativeAd.removeNative();
      NativeAd.loadNative();
      bool nativeValue = await NativeAd.nativeAdReady();
      if (nativeValue) {
        NativeAd.showNative();
      } else {
        _nativeTimer = Timer.periodic(Duration(seconds: 1), (timer) async {
          NativeAd.loadNative();
          bool nativeValue = await NativeAd.nativeAdReady();
          if (nativeValue) {
            _nativeTimer.cancel();
            NativeAd.showNative();
          }
        });
      }
    });
    final recorderModel = Provider.of<RecorderModel>(context, listen: false);
    recorderModel.queryData(DateTime.now());
    super.initState();
    _getCoolingSencond();
    _getDeviceId();
    initialization();
    _streamSubscription = eventBus.on().listen((event) {
      if (event == 'insertRewarder') {
        final rewarderModel = Provider.of<RewarderModel>(
          context,
          listen: false,
        );
        rewarderModel.insert();
      }
    });
  }

  void showInterstitial() async {
    InterstitialAd.loadInterstitial();
    bool interstitialValue = await InterstitialAd.interstitialAdReady();
    if (interstitialValue) {
      InterstitialAd.showInterstitial();
    } else {
      _interstitialTimer = Timer.periodic(Duration(seconds: 1), (timer) async {
        InterstitialAd.loadInterstitial();
        bool interstitialValue = await InterstitialAd.interstitialAdReady();
        if (interstitialValue) {
          _interstitialTimer.cancel();
          InterstitialAd.showInterstitial();
        }
      });
    }
  }

  void initialization() async {
    BannerAd.removeBanner();
    BannerAd.loadBanner();
    bool bannerValue = await BannerAd.bannerAdReady();
    if (bannerValue) {
      BannerAd.showBanner();
    } else {
      _bannerTimer = Timer.periodic(Duration(seconds: 3), (timer) async {
        BannerAd.loadBanner();
        bool bannerValue = await BannerAd.bannerAdReady();
        if (bannerValue) {
          _bannerTimer.cancel();
          BannerAd.showBanner();
        }
      });
    }
    NativeAd.removeNative();
    NativeAd.loadNative();
    bool nativeValue = await NativeAd.nativeAdReady();
    if (nativeValue) {
      NativeAd.showNative();
    } else {
      _nativeTimer = Timer.periodic(Duration(seconds: 3), (timer) async {
        NativeAd.loadNative();
        bool nativeValue = await NativeAd.nativeAdReady();
        if (nativeValue) {
          _nativeTimer.cancel();
          NativeAd.showNative();
        }
      });
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    _fourteenNativeTimer.cancel();
    _streamSubscription.cancel();
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void didPopNext() {
    _getCoolingSencond();
    initialization();
    _timer.cancel();
    final seconderModel = Provider.of<SeconderModel>(context, listen: false);
    seconderModel.reset();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      final seconderModel = Provider.of<SeconderModel>(context, listen: false);
      if (seconderModel.second <= 0) {
        _timer.cancel();
      } else {
        seconderModel.evaluate(seconderModel.second - 1);
      }
    });
    showInterstitial();
    _fourteenNativeTimer = Timer.periodic(Duration(seconds: 14), (timer) async {
      NativeAd.removeNative();
      NativeAd.loadNative();
      bool nativeValue = await NativeAd.nativeAdReady();
      if (nativeValue) {
        NativeAd.showNative();
      } else {
        _nativeTimer = Timer.periodic(Duration(seconds: 1), (timer) async {
          NativeAd.loadNative();
          bool nativeValue = await NativeAd.nativeAdReady();
          if (nativeValue) {
            _nativeTimer.cancel();
            NativeAd.showNative();
          }
        });
      }
    });
  }

  void _getCoolingSencond() async {
    try {
      final response = await dio.get(
        'https://api.tinybrief.app/coolingFlamingo',
      );
      Map<String, dynamic> data = response.data;
      final seconderModel = Provider.of<SeconderModel>(context, listen: false);
      seconderModel.setDefaultSecond(data['data']);
    } catch (e) {
      final seconderModel = Provider.of<SeconderModel>(context, listen: false);
      seconderModel.setDefaultSecond(0);
      e.toString();
    }
  }

  void _getDeviceId() async {
    String udid = await FlutterUdid.udid;
    if (udid != '') {
      final udiderModel = Provider.of<UdiderModel>(context, listen: false);
      udiderModel.evaluate(udid);
    }
  }

  dynamic _onTapConfirm() {
    final recorderModel = Provider.of<RecorderModel>(context, listen: false);
    recorderModel.queryData(selectedDate);
    Navigator.pop(context);
  }

  dynamic _onTap() {
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
                      onTap: _onTapConfirm,
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
              Consumer<RecorderModel>(
                builder: (context, recorderModel, child) {
                  return SizedBox(
                    height: 240,
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.monthYear,
                      initialDateTime: recorderModel.currentDate,
                      onDateTimeChanged: (value) {
                        selectedDate = value;
                      },
                      minimumDate: DateTime(1990),
                      maximumDate: DateTime(2099),
                    ),
                  );
                },
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

  void doNothing(int index, String id) {
    final recorderModel = Provider.of<RecorderModel>(context, listen: false);
    recorderModel.deleteById(index, id);
  }

  void _onPressed() async {
    final seconderModel = Provider.of<SeconderModel>(context, listen: false);
    if (seconderModel.second <= 0) {
      if (seconderModel.defaultSecond == 0) {
        _fourteenNativeTimer.cancel();
        try {
          _bannerTimer.cancel();
          _nativeTimer.cancel();
        } catch (e) {
          e.toString();
        }
        context.push('/otherPage');
      } else {
        InterstitialAd.loadInterstitial();
        bool interstitialAdValue = await InterstitialAd.interstitialAdReady();
        if (interstitialAdValue) {
          _fourteenNativeTimer.cancel();
          try {
            _bannerTimer.cancel();
            _nativeTimer.cancel();
          } catch (e) {
            e.toString();
          }
          InterstitialAd.showInterstitial();
          context.push('/otherPage');
        }
      }
    } else {
      ToastContext().init(context);
      Toast.show(
        "冷却倒计时:${seconderModel.second}",
        duration: Toast.lengthShort,
        gravity: Toast.top,
      );
    }
  }

  void _changeLanguage(Locale locale) {
    if (locale.languageCode == 'en') {
      S.load(Locale('en', 'US'));
    } else {
      S.load(Locale('zh', 'CN'));
    }
    setState(() {});
  }

  Widget buildRecord() {
    final recorderModel = Provider.of<RecorderModel>(context, listen: false);
    if (recorderModel.totalList.isEmpty) {
      return Center(
        child: GestureDetector(
          onTap: _onPressed,
          child: Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            spacing: 18,
            children: [
              Icon(
                Icons.currency_bitcoin,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              Text(
                S.current.slogan,
                style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Column(
        children: [
          Container(
            width: double.infinity,
            height: 60,
            margin: .only(bottom: 72),
            color: Theme.of(context).colorScheme.inversePrimary,
            child: Row(
              mainAxisAlignment: .spaceAround,
              children: [
                GestureDetector(
                  onTap: _onTap,
                  child: Consumer<RecorderModel>(
                    builder: (context, recorderModel, child) {
                      return Column(
                        children: [
                          Text(
                            "${recorderModel.currentDate.year}",
                            style: TextStyle(
                              fontSize: 18,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "${recorderModel.currentDate.month}",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onPrimary,
                                  fontWeight: .bold,
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Column(
                  children: [
                    Text(
                      S.current.income,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    Consumer<RecorderModel>(
                      builder: (context, recorderModel, child) {
                        return Text(
                          recorderModel.incomeAmount,
                          style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontWeight: .bold,
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      S.current.expenditure,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    Consumer<RecorderModel>(
                      builder: (context, recorderModel, child) {
                        return Text(
                          recorderModel.payAmount,
                          style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontWeight: .bold,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Consumer<RecorderModel>(
              builder: (context, recorderModel, child) {
                return ListView.builder(
                  itemCount: recorderModel.list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: .only(bottom: 12),
                      child: Slidable(
                        key: ValueKey(index),
                        endActionPane: ActionPane(
                          motion: const ScrollMotion(),
                          dismissible: DismissiblePane(onDismissed: () {}),
                          children: [
                            SlidableAction(
                              onPressed: (context) => doNothing(
                                index,
                                recorderModel.list[index]["id"].toString(),
                              ),
                              backgroundColor: Color(0xFFFE4A49),
                              foregroundColor: Colors.white,
                              icon: Icons.delete,
                              label: S.current.delete,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ],
                        ),
                        child: Container(
                          padding: .all(12),
                          margin: .only(left: 12, right: 12),
                          decoration: BoxDecoration(
                            color: Theme.of(
                              context,
                            ).colorScheme.primaryContainer,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              Row(
                                spacing: 12,
                                children: [
                                  Icon(
                                    IconData(
                                      int.parse(
                                        recorderModel.list[index]["icon"],
                                      ),
                                      fontFamily: 'MaterialIcons',
                                    ),
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                  ),
                                  Column(
                                    crossAxisAlignment: .start,
                                    children: [
                                      Text(
                                        recorderModel.list[index]["name"]
                                            .toString(),
                                        style: TextStyle(
                                          fontWeight: .bold,
                                          fontSize: 16,
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.primary,
                                        ),
                                      ),
                                      Text(
                                        recorderModel.list[index]["record_date"]
                                            .toString(),
                                        style: TextStyle(
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.primary,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                recorderModel.list[index]["amount"].toString(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          S.current.app_name,
          style: TextStyle(
            fontSize: 18,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          PopupMenuButton<Locale>(
            color: Theme.of(context).colorScheme.onPrimary,
            icon: Icon(
              Icons.language,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            position: .under,
            onSelected: _changeLanguage,
            constraints: BoxConstraints(maxWidth: 90),
            itemBuilder: (BuildContext context) {
              return S.delegate.supportedLocales.map<PopupMenuItem<Locale>>((
                Locale value,
              ) {
                return PopupMenuItem<Locale>(
                  value: value,
                  height: 36,
                  child: Text(value.toLanguageTag()),
                );
              }).toList();
            },
          ),
          IconButton(
            onPressed: _onPressed,
            icon: Icon(
              Icons.add_circle_outline_sharp,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Consumer<RecorderModel>(
          builder: (context, recorderModel, child) {
            return buildRecord();
          },
        ),
      ),
    );
  }
}
