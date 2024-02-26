import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_clone/core/constants/routing_constants.dart';
import 'package:instagram_clone/features/presentation/pages/auth/sign_in_page.dart';
import 'package:instagram_clone/features/presentation/pages/auth/sign_up_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/login',
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
  ],
);
