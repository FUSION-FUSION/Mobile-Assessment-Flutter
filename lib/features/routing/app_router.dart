import 'package:go_router/go_router.dart';
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
    )
  ],
);
