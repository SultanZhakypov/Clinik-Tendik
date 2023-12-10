import 'package:auto_route/auto_route.dart';
import 'package:clinic_tendik/feature/auth/presentation/pages/auth_page.dart';
import 'package:clinic_tendik/feature/auth/presentation/pages/register_page.dart';
import 'package:clinic_tendik/feature/home/presentation/pages/online_doctor_page.dart';
import 'package:clinic_tendik/feature/home/presentation/pages/talon_page.dart';
import 'package:clinic_tendik/feature/home/presentation/pages/talones_and_register_page.dart';

@AdaptiveAutoRouter(
  routes: [
    CupertinoRoute(
      initial: true,
      page: AuthPage,
      guards: [],
    ),
    CupertinoRoute(
      page: RegisterPage,
    ),
    CupertinoRoute(
      page: TalonesAndRegisterPage,
    ),
    CupertinoRoute(
      page: TalonPage,
    ),
    CupertinoRoute(
      page: OnlineDoctorPage,
    ),
  ],
)
class $AppRouter {}
