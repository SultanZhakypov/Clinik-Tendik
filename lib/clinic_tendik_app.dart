import 'package:clinic_tendik/core/config/app_router/auto_router.gr.dart';
import 'package:clinic_tendik/feature/home/presentation/bloc/online_doctor_bloc.dart';
import 'package:clinic_tendik/theme/app_colors.dart';
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
    _rootRouter = AppRouter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I<OnlineDoctorBloc>(),
      child: MaterialApp.router(
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
