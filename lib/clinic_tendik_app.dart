import 'package:clinic_tendik/core/config/app_router/auto_router.gr.dart';
import 'package:clinic_tendik/core/config/app_router/guards.dart';
import 'package:clinic_tendik/feature/auth/presentation/bloc/auth_bloc.dart';
import 'package:clinic_tendik/feature/home/presentation/bloc/home_bloc.dart';
import 'package:clinic_tendik/theme/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ClinicTendikApp extends StatefulWidget {
  const ClinicTendikApp({super.key});
  @override
  State<ClinicTendikApp> createState() => _ClinicTendikAppState();
}

class _ClinicTendikAppState extends State<ClinicTendikApp> {
  late final AppRouter _rootRouter;

  @override
  void initState() {
    _rootRouter = AppRouter(authGuard: GetIt.I<AuthGuard>());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => GetIt.I<AuthBloc>(),
        ),
        BlocProvider(
          create: (_) => GetIt.I<HomeBloc>(),
        ),
      ],
      child: MaterialApp.router(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: ThemeData(
          useMaterial3: true,
          splashColor: Colors.transparent,
          scaffoldBackgroundColor: Colors.grey[200],
          inputDecorationTheme:
              const InputDecorationTheme(fillColor: AppColors.white),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.grey[200],
          ),
        ),
        title: 'Clinic Tendik',
        routeInformationParser: _rootRouter.defaultRouteParser(),
        routerDelegate: _rootRouter.delegate(),
      ),
    );
  }
}
