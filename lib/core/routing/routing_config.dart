import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_clone/core/constants/routing_constants.dart';
import 'package:instagram_clone/features/presentation/pages/auth/sign_in_page.dart';
import 'package:instagram_clone/features/presentation/pages/auth/sign_up_page.dart';
import 'package:instagram_clone/features/presentation/pages/main_screen/main_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/home',
  routes: <RouteBase>[
    GoRoute(
        path: '/',
        name: RouteConstants.signUpRouteName,
        builder: (BuildContext context, GoRouterState state) {
          return const SignUpPage();
        }),
    GoRoute(
        path: '/login',
        name: RouteConstants.signInRouteName,
        builder: (BuildContext context, GoRouterState state) {
          return const SignInPage();
        }),
    GoRoute(
        path: '/home',
        name: RouteConstants.mainRouteName,
        builder: (BuildContext context, GoRouterState state) {
          return MainPage();
        }),
  ],
);
