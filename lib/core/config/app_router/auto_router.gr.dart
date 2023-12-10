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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:clinic_tendik/feature/auth/presentation/pages/auth_page.dart'
    as _i1;
import 'package:clinic_tendik/feature/home/data/models/patient_registration_response/patient_registration_response.dart'
    as _i7;
import 'package:clinic_tendik/feature/home/presentation/pages/online_doctor_page.dart'
    as _i4;
import 'package:clinic_tendik/feature/home/presentation/pages/talon_page.dart'
    as _i3;
import 'package:clinic_tendik/feature/home/presentation/pages/talones_and_register_page.dart'
    as _i2;
import 'package:flutter/material.dart' as _i6;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AuthPageRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i1.AuthPage(),
      );
    },
    TalonesAndRegisterPageRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i2.TalonesAndRegisterPage(),
      );
    },
    TalonPageRoute.name: (routeData) {
      final args = routeData.argsAs<TalonPageRouteArgs>(
          orElse: () => const TalonPageRouteArgs());
      return _i5.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i3.TalonPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    OnlineDoctorPageRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i4.OnlineDoctorPage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          AuthPageRoute.name,
          path: '/auth-page',
        ),
        _i5.RouteConfig(
          TalonesAndRegisterPageRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          TalonPageRoute.name,
          path: '/talon-page',
        ),
        _i5.RouteConfig(
          OnlineDoctorPageRoute.name,
          path: '/online-doctor-page',
        ),
      ];
}

/// generated route for
/// [_i1.AuthPage]
class AuthPageRoute extends _i5.PageRouteInfo<void> {
  const AuthPageRoute()
      : super(
          AuthPageRoute.name,
          path: '/auth-page',
        );

  static const String name = 'AuthPageRoute';
}

/// generated route for
/// [_i2.TalonesAndRegisterPage]
class TalonesAndRegisterPageRoute extends _i5.PageRouteInfo<void> {
  const TalonesAndRegisterPageRoute()
      : super(
          TalonesAndRegisterPageRoute.name,
          path: '/',
        );

  static const String name = 'TalonesAndRegisterPageRoute';
}

/// generated route for
/// [_i3.TalonPage]
class TalonPageRoute extends _i5.PageRouteInfo<TalonPageRouteArgs> {
  TalonPageRoute({
    _i6.Key? key,
    _i7.PatientRegistrationData? data,
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

  final _i6.Key? key;

  final _i7.PatientRegistrationData? data;

  @override
  String toString() {
    return 'TalonPageRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i4.OnlineDoctorPage]
class OnlineDoctorPageRoute extends _i5.PageRouteInfo<void> {
  const OnlineDoctorPageRoute()
      : super(
          OnlineDoctorPageRoute.name,
          path: '/online-doctor-page',
        );

  static const String name = 'OnlineDoctorPageRoute';
}
