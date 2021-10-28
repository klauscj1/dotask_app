import 'package:dotask_app/app/ui/pages/home/home_page.dart';
import 'package:dotask_app/app/ui/pages/login/login_page.dart';
import 'package:dotask_app/app/ui/pages/onboarding/onboarding_page.dart';
import 'package:dotask_app/app/ui/pages/register/register_page.dart';
import 'package:dotask_app/app/ui/pages/splash/splash_page.dart';
import 'package:dotask_app/app/ui/routes/routes.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  Routes.splash: (_) => const SplashPage(),
  Routes.login: (_) => const LoginPage(),
  Routes.register: (_) => const RegisterPage(),
  Routes.home: (_) => const HomePage(),
  Routes.onboarding: (_) => const OnbardingPage(),
};
