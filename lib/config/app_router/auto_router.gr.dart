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
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:clinic_tendik/feature/auth/presentation/pages/auth_page.dart'
    as _i1;
import 'package:clinic_tendik/feature/home/presentation/pages/home_page.dart'
    as _i2;
import 'package:flutter/material.dart' as _i4;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    AuthPageRoute.name: (routeData) {
      return _i3.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i1.AuthPage(),
      );
    },
    HomePageRoute.name: (routeData) {
      return _i3.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          AuthPageRoute.name,
          path: '/auth-page',
        ),
        _i3.RouteConfig(
          HomePageRoute.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [_i1.AuthPage]
class AuthPageRoute extends _i3.PageRouteInfo<void> {
  const AuthPageRoute()
      : super(
          AuthPageRoute.name,
          path: '/auth-page',
        );

  static const String name = 'AuthPageRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomePageRoute extends _i3.PageRouteInfo<void> {
  const HomePageRoute()
      : super(
          HomePageRoute.name,
          path: '/',
        );

  static const String name = 'HomePageRoute';
}
