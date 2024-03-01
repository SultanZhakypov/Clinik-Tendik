import 'package:auto_route/auto_route.dart';
import 'package:clinic_tendik/core/config/app_router/guards.dart';
import 'package:clinic_tendik/feature/auth/presentation/pages/auth_page.dart';
import 'package:clinic_tendik/feature/auth/presentation/pages/register_page.dart';
import 'package:clinic_tendik/feature/home/presentation/pages/online_doctor_page.dart';
import 'package:clinic_tendik/feature/home/presentation/pages/talon_page.dart';
import 'package:clinic_tendik/feature/home/presentation/pages/talones_and_register_page.dart';

@AdaptiveAutoRouter(
  routes: [
    CupertinoRoute(
      page: AuthPage,
    ),
    CupertinoRoute(
      page: RegisterPage,
    ),
    CupertinoRoute(
      initial: true,
      guards: [AuthGuard],
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
