import 'package:packory/pages/about_us_page.dart';
import 'package:packory/pages/feedback_page.dart';
import 'package:packory/pages/home_page.dart';
import 'package:packory/pages/other_page.dart';
import 'package:packory/pages/record_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final RouteObserver<ModalRoute<void>> routeObserver =
    RouteObserver<ModalRoute<void>>();

class AppRoutes {
  static final GoRouter router = GoRouter(
    observers: [routeObserver],
    initialLocation: '/',
    routes: [
      // GoRoute(path: '/', builder: (context, state) => const TabPage()),
      GoRoute(path: '/', builder: (context, state) => const HomePage()),
      GoRoute(
        path: '/otherPage',
        builder: (context, state) => const OtherPage(),
      ),
      GoRoute(
        path: '/aboutUsPage',
        builder: (context, state) => const AboutUsPage(),
      ),
      GoRoute(
        path: '/feedbackPage',
        builder: (context, state) => const FeedbackPage(),
      ),
      GoRoute(path: '/record', builder: (context, state) => const RecordPage()),
    ],
  );
}
