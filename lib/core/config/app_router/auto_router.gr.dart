// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:clinic_tendik/feature/auth/presentation/pages/auth_page.dart'
    as _i1;
import 'package:clinic_tendik/feature/auth/presentation/pages/register_page.dart'
    as _i2;
import 'package:clinic_tendik/feature/home/data/models/patient_registration_response/patient_registration_response.dart'
    as _i8;
import 'package:clinic_tendik/feature/home/presentation/pages/online_doctor_page.dart'
    as _i5;
import 'package:clinic_tendik/feature/home/presentation/pages/talon_page.dart'
    as _i4;
import 'package:clinic_tendik/feature/home/presentation/pages/talones_and_register_page.dart'
    as _i3;
import 'package:flutter/material.dart' as _i7;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AuthPageRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i1.AuthPage(),
      );
    },
    RegisterPageRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i2.RegisterPage(),
      );
    },
    TalonesAndRegisterPageRoute.name: (routeData) {
      final args = routeData.argsAs<TalonesAndRegisterPageRouteArgs>();
      return _i6.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i3.TalonesAndRegisterPage(
          key: args.key,
          inn: args.inn,
        ),
      );
    },
    TalonPageRoute.name: (routeData) {
      final args = routeData.argsAs<TalonPageRouteArgs>(
          orElse: () => const TalonPageRouteArgs());
      return _i6.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i4.TalonPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    OnlineDoctorPageRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i5.OnlineDoctorPage(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          AuthPageRoute.name,
          path: '/',
        ),
        _i6.RouteConfig(
          RegisterPageRoute.name,
          path: '/register-page',
        ),
        _i6.RouteConfig(
          TalonesAndRegisterPageRoute.name,
          path: '/talones-and-register-page',
        ),
        _i6.RouteConfig(
          TalonPageRoute.name,
          path: '/talon-page',
        ),
        _i6.RouteConfig(
          OnlineDoctorPageRoute.name,
          path: '/online-doctor-page',
        ),
      ];
}

/// generated route for
/// [_i1.AuthPage]
class AuthPageRoute extends _i6.PageRouteInfo<void> {
  const AuthPageRoute()
      : super(
          AuthPageRoute.name,
          path: '/',
        );

  static const String name = 'AuthPageRoute';
}

/// generated route for
/// [_i2.RegisterPage]
class RegisterPageRoute extends _i6.PageRouteInfo<void> {
  const RegisterPageRoute()
      : super(
          RegisterPageRoute.name,
          path: '/register-page',
        );

  static const String name = 'RegisterPageRoute';
}

/// generated route for
/// [_i3.TalonesAndRegisterPage]
class TalonesAndRegisterPageRoute
    extends _i6.PageRouteInfo<TalonesAndRegisterPageRouteArgs> {
  TalonesAndRegisterPageRoute({
    _i7.Key? key,
    required String inn,
  }) : super(
          TalonesAndRegisterPageRoute.name,
          path: '/talones-and-register-page',
          args: TalonesAndRegisterPageRouteArgs(
            key: key,
            inn: inn,
          ),
        );

  static const String name = 'TalonesAndRegisterPageRoute';
}

class TalonesAndRegisterPageRouteArgs {
  const TalonesAndRegisterPageRouteArgs({
    this.key,
    required this.inn,
  });

  final _i7.Key? key;

  final String inn;

  @override
  String toString() {
    return 'TalonesAndRegisterPageRouteArgs{key: $key, inn: $inn}';
  }
}

/// generated route for
/// [_i4.TalonPage]
class TalonPageRoute extends _i6.PageRouteInfo<TalonPageRouteArgs> {
  TalonPageRoute({
    _i7.Key? key,
    _i8.PatientRegistrationData? data,
  }) : super(
          TalonPageRoute.name,
          path: '/talon-page',
          args: TalonPageRouteArgs(
            key: key,
            data: data,
          ),
        );

  static const String name = 'TalonPageRoute';
}

class TalonPageRouteArgs {
  const TalonPageRouteArgs({
    this.key,
    this.data,
  });

  final _i7.Key? key;

  final _i8.PatientRegistrationData? data;

  @override
  String toString() {
    return 'TalonPageRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i5.OnlineDoctorPage]
class OnlineDoctorPageRoute extends _i6.PageRouteInfo<void> {
  const OnlineDoctorPageRoute()
      : super(
          OnlineDoctorPageRoute.name,
          path: '/online-doctor-page',
        );

  static const String name = 'OnlineDoctorPageRoute';
}
