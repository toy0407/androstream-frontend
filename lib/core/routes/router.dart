import '../../presentation/pages/home_page.dart';
import '../../presentation/pages/login_page.dart';
import '../../presentation/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
      navigatorKey: rootNavigatorKey,
      initialLocation: '/login',
      routes: [
        GoRoute(
          path: '/login',
          parentNavigatorKey: rootNavigatorKey,
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(
          path: '/signup',
          parentNavigatorKey: rootNavigatorKey,
          builder: (context, state) => const SignupPage(),
        ),
        GoRoute(
          path: '/home',
          parentNavigatorKey: rootNavigatorKey,
          builder: (context, state) => const HomePage(),
        )
      ]);
}
