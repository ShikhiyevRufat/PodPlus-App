import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pod_plus/core/router/routes.dart';
import 'package:pod_plus/features/auth/login_page.dart';
import 'package:pod_plus/features/auth/onboarding_page.dart';
import 'package:pod_plus/features/auth/sign_page.dart';
import 'package:pod_plus/features/auth/user_name_page.dart';
import 'package:pod_plus/features/main/presentation/main_page.dart';
import 'package:pod_plus/features/splash/splash_page.dart';


final GoRouter goRouter = GoRouter(routes: <RouteBase>[

  GoRoute(
    path: Routes.splash,
    builder: (BuildContext context, GoRouterState state) {
      return const SplashPage();
    },
  ),
  GoRoute(
    path: Routes.onboarding,
    builder: (BuildContext context, GoRouterState state) {
      return const OnboardingPage();
    },
  ),
  GoRoute(
    path: Routes.login,
    builder: (BuildContext context, GoRouterState state) {
      return const LoginPage();
    },
  ),
  GoRoute(
    path: Routes.sign,
    builder: (BuildContext context, GoRouterState state) {
      return const SignPage();
    },
  ),
  GoRoute(
    path: Routes.userName,
    builder: (BuildContext context, GoRouterState state) {
      return const UserNamePage();
    },
  ),
  GoRoute(
    path: Routes.mainPage,
    builder: (BuildContext context, GoRouterState state) {
      return const MainPage();
    },
  ),
]);
