import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_assessment_flutter/features/authentication/signup_screen.dart';
import 'package:mobile_assessment_flutter/features/user_type/user_type_screen.dart';

enum AppRoute {
  userType,
  signUp,
  signIn,
  verification,
  congratulations,
  home,
  track,
}

final goRouter = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: false,
  routes: [
    GoRoute(
        path: '/',
        name: AppRoute.userType.name,
        builder: (context, state) => const UserType(),
        routes: [
          GoRoute(
            path: 'usertype/:type',
            name: AppRoute.signUp.name,
            builder: (context, state) {
              final userType = state.params['type'];
              return SignUpScreen(type: userType!);
            },
          ),
        ])
  ],
);
