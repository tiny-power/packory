// ignore_for_file: depend_on_referenced_packages

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:packory/providers/rewarder_model.dart';
import 'package:packory/providers/seconder_model.dart';
import 'package:packory/providers/udider_model.dart';
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'routes/app_routes.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'providers/counter_model.dart';
import 'providers/amounter_model.dart';
import 'providers/dateer_model.dart';
import 'providers/recorder_model.dart';
import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';
import 'package:event_bus/event_bus.dart';

final EventBus eventBus = EventBus();
final dio = Dio();

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  dio.interceptors.add(
    RetryInterceptor(
      dio: dio,
      retries: 3,
      retryDelays: const [
        Duration(seconds: 1),
        Duration(seconds: 2),
        Duration(seconds: 3),
      ],
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 1));
    FlutterNativeSplash.remove();
    requestTrackingPermission();
  }

  Future<void> requestTrackingPermission() async {
    try {
      await Future.delayed(const Duration(milliseconds: 200));
      final status = await AppTrackingTransparency.trackingAuthorizationStatus;
      if (status == TrackingStatus.notDetermined) {
        await AppTrackingTransparency.requestTrackingAuthorization();
      }
      // final finalStatus =
      //     await AppTrackingTransparency.trackingAuthorizationStatus;
      // print('ATT状态: $finalStatus');
    } on Exception {
      // print('平台异常：ATT功能不可用');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AmounterModel()),
        ChangeNotifierProvider(create: (_) => CounterModel()),
        ChangeNotifierProvider(create: (_) => DateerModel()),
        ChangeNotifierProvider(create: (_) => RecorderModel()),
        ChangeNotifierProvider(create: (_) => UdiderModel()),
        ChangeNotifierProvider(create: (_) => RewarderModel()),
        ChangeNotifierProvider(create: (_) => SeconderModel()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: FlexThemeData.light(scheme: FlexScheme.shadGray),
        darkTheme: FlexThemeData.dark(scheme: FlexScheme.shadGray),
        // theme: ThemeData(
        //   appBarTheme: AppBarTheme(
        //     centerTitle: true,
        //     elevation: 0,
        //     titleTextStyle: TextStyle(
        //       fontSize: 18,
        //       color: Theme.of(context).colorScheme.inverseSurface,
        //     ),
        //   ),
        //   splashColor: Colors.transparent,
        //   highlightColor: Colors.transparent,
        //   useMaterial3: true,
        //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        // ),
        // darkTheme: ThemeData(
        //   appBarTheme: AppBarTheme(
        //     centerTitle: true,
        //     elevation: 0,
        //     titleTextStyle: TextStyle(
        //       fontSize: 18,
        //       color: Theme.of(context).colorScheme.surface,
        //     ),
        //   ),
        //   splashColor: Colors.transparent,
        //   highlightColor: Colors.transparent,
        //   useMaterial3: true,
        // ),
        themeMode: ThemeMode.system,
        routerConfig: AppRoutes.router,
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
      ),
    );
  }
}
