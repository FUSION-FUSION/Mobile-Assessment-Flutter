import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

import '../screens/screens.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: Splashscreen, initial: true),
    AutoRoute(page: Usertype),
    AutoRoute(page: HomeScreen),
     AutoRoute(page: SignUpPersonal),
      AutoRoute(page: SignUpEcommerce),
  ],
)
class $AppRouter {}
