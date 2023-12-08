import 'package:auto_route/auto_route.dart';
import 'package:clinic_tendik/feature/auth/presentation/pages/auth_page.dart';
import 'package:clinic_tendik/feature/home/presentation/pages/home_page.dart';

@AdaptiveAutoRouter(
  routes: [
    CupertinoRoute(
      page: AuthPage,
    ),
    CupertinoRoute(
      initial: true,
      page: HomePage,
      guards: [],
    ),
  ],
)
class $AppRouter {}
