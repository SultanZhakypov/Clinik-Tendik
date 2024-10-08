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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:clinic_tendik/core/config/app_router/guards.dart' as _i9;
import 'package:clinic_tendik/feature/auth/presentation/pages/auth_page.dart'
    as _i1;
import 'package:clinic_tendik/feature/auth/presentation/pages/register_page.dart'
    as _i2;
import 'package:clinic_tendik/feature/home/data/models/talon_list_response/talon_list_response.dart'
    as _i10;
import 'package:clinic_tendik/feature/home/presentation/pages/online_doctor_page.dart'
    as _i5;
import 'package:clinic_tendik/feature/home/presentation/pages/pdf_view_page.dart'
    as _i6;
import 'package:clinic_tendik/feature/home/presentation/pages/talon_page.dart'
    as _i4;
import 'package:clinic_tendik/feature/home/presentation/pages/talones_and_register_page.dart'
    as _i3;
import 'package:flutter/material.dart' as _i8;

class AppRouter extends _i7.RootStackRouter {
  AppRouter({
    _i8.GlobalKey<_i8.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i9.AuthGuard authGuard;

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AuthPageRoute.name: (routeData) {
      return _i7.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i1.AuthPage(),
      );
    },
    RegisterPageRoute.name: (routeData) {
      return _i7.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i7.WrappedRoute(child: const _i2.RegisterPage()),
      );
    },
    TalonesAndRegisterPageRoute.name: (routeData) {
      return _i7.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i3.TalonesAndRegisterPage(),
      );
    },
    TalonPageRoute.name: (routeData) {
      final args = routeData.argsAs<TalonPageRouteArgs>(
          orElse: () => const TalonPageRouteArgs());
      return _i7.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i4.TalonPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    OnlineDoctorPageRoute.name: (routeData) {
      return _i7.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i5.OnlineDoctorPage(),
      );
    },
    PdfViewPageRoute.name: (routeData) {
      final args = routeData.argsAs<PdfViewPageRouteArgs>();
      return _i7.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i6.PdfViewPage(
          key: args.key,
          pdfPath: args.pdfPath,
        ),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          AuthPageRoute.name,
          path: '/auth-page',
        ),
        _i7.RouteConfig(
          RegisterPageRoute.name,
          path: '/register-page',
        ),
        _i7.RouteConfig(
          TalonesAndRegisterPageRoute.name,
          path: '/',
          guards: [authGuard],
        ),
        _i7.RouteConfig(
          TalonPageRoute.name,
          path: '/talon-page',
        ),
        _i7.RouteConfig(
          OnlineDoctorPageRoute.name,
          path: '/online-doctor-page',
        ),
        _i7.RouteConfig(
          PdfViewPageRoute.name,
          path: '/pdf-view-page',
        ),
      ];
}

/// generated route for
/// [_i1.AuthPage]
class AuthPageRoute extends _i7.PageRouteInfo<void> {
  const AuthPageRoute()
      : super(
          AuthPageRoute.name,
          path: '/auth-page',
        );

  static const String name = 'AuthPageRoute';
}

/// generated route for
/// [_i2.RegisterPage]
class RegisterPageRoute extends _i7.PageRouteInfo<void> {
  const RegisterPageRoute()
      : super(
          RegisterPageRoute.name,
          path: '/register-page',
        );

  static const String name = 'RegisterPageRoute';
}

/// generated route for
/// [_i3.TalonesAndRegisterPage]
class TalonesAndRegisterPageRoute extends _i7.PageRouteInfo<void> {
  const TalonesAndRegisterPageRoute()
      : super(
          TalonesAndRegisterPageRoute.name,
          path: '/',
        );

  static const String name = 'TalonesAndRegisterPageRoute';
}

/// generated route for
/// [_i4.TalonPage]
class TalonPageRoute extends _i7.PageRouteInfo<TalonPageRouteArgs> {
  TalonPageRoute({
    _i8.Key? key,
    _i10.TalonResponse? data,
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

  final _i8.Key? key;

  final _i10.TalonResponse? data;

  @override
  String toString() {
    return 'TalonPageRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i5.OnlineDoctorPage]
class OnlineDoctorPageRoute extends _i7.PageRouteInfo<void> {
  const OnlineDoctorPageRoute()
      : super(
          OnlineDoctorPageRoute.name,
          path: '/online-doctor-page',
        );

  static const String name = 'OnlineDoctorPageRoute';
}

/// generated route for
/// [_i6.PdfViewPage]
class PdfViewPageRoute extends _i7.PageRouteInfo<PdfViewPageRouteArgs> {
  PdfViewPageRoute({
    _i8.Key? key,
    required String pdfPath,
  }) : super(
          PdfViewPageRoute.name,
          path: '/pdf-view-page',
          args: PdfViewPageRouteArgs(
            key: key,
            pdfPath: pdfPath,
          ),
        );

  static const String name = 'PdfViewPageRoute';
}

class PdfViewPageRouteArgs {
  const PdfViewPageRouteArgs({
    this.key,
    required this.pdfPath,
  });

  final _i8.Key? key;

  final String pdfPath;

  @override
  String toString() {
    return 'PdfViewPageRouteArgs{key: $key, pdfPath: $pdfPath}';
  }
}
