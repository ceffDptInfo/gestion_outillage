// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i11;
import 'package:firebase_auth/firebase_auth.dart' as _i13;
import 'package:flutter/material.dart' as _i12;

import '../../domain/outils/outils.dart' as _i14;
import '../categories/categories_page.dart' as _i8;
import '../dashboard/dashboard_page.dart' as _i6;
import '../home.dart' as _i3;
import '../home/home_page.dart' as _i4;
import '../layette/layette_page.dart' as _i5;
import '../outils_add/outils_add_page.dart' as _i10;
import '../outils_detail/outils_mesure_list_detail_page.dart' as _i9;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;
import '../tiroir/tiroir_page.dart' as _i7;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.SignInPage(),
          transitionsBuilder: _i11.TransitionsBuilders.zoomIn,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    HomeRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.HomePage(),
          transitionsBuilder: _i11.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    HomeStartRoute.name: (routeData) {
      final args = routeData.argsAs<HomeStartRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.HomeStartPage(key: args.key, user: args.user));
    },
    LayetteRoute.name: (routeData) {
      final args = routeData.argsAs<LayetteRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.LayettePage(key: args.key, user: args.user));
    },
    DashboardRoute.name: (routeData) {
      final args = routeData.argsAs<DashboardRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.DashboardPage(key: args.key, user: args.user));
    },
    TiroirRoute.name: (routeData) {
      final args = routeData.argsAs<TiroirRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.TiroirPage(key: args.key, user: args.user));
    },
    CategoriesOutilsMesureRoute.name: (routeData) {
      final args = routeData.argsAs<CategoriesOutilsMesureRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i8.CategoriesOutilsMesurePage(key: args.key, user: args.user));
    },
    OutilsMesureListDetailRoute.name: (routeData) {
      final args = routeData.argsAs<OutilsMesureListDetailRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i9.OutilsMesureListDetailPage(args.outil, args.user,
              key: args.key));
    },
    OutilsAddRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i10.OutilsAddPage(),
          fullscreenDialog: true);
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(SplashRoute.name, path: '/'),
        _i11.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i11.RouteConfig(HomeRoute.name, path: '/home-page', children: [
          _i11.RouteConfig(HomeStartRoute.name,
              path: 'home-start-page',
              parent: HomeRoute.name,
              children: [
                _i11.RouteConfig(OutilsMesureListDetailRoute.name,
                    path: 'outils-mesure-list-detail-page',
                    parent: HomeStartRoute.name)
              ]),
          _i11.RouteConfig(LayetteRoute.name,
              path: 'layette-page',
              parent: HomeRoute.name,
              children: [
                _i11.RouteConfig(OutilsMesureListDetailRoute.name,
                    path: 'outils-mesure-list-detail-page',
                    parent: LayetteRoute.name)
              ]),
          _i11.RouteConfig(DashboardRoute.name,
              path: 'dashboard-page',
              parent: HomeRoute.name,
              children: [
                _i11.RouteConfig(OutilsMesureListDetailRoute.name,
                    path: 'outils-mesure-list-detail-page',
                    parent: DashboardRoute.name)
              ]),
          _i11.RouteConfig(TiroirRoute.name,
              path: 'tiroir-page',
              parent: HomeRoute.name,
              children: [
                _i11.RouteConfig(OutilsMesureListDetailRoute.name,
                    path: 'outils-mesure-list-detail-page',
                    parent: TiroirRoute.name)
              ]),
          _i11.RouteConfig(CategoriesOutilsMesureRoute.name,
              path: 'categories-outils-mesure-page',
              parent: HomeRoute.name,
              children: [
                _i11.RouteConfig(OutilsMesureListDetailRoute.name,
                    path: 'outils-mesure-list-detail-page',
                    parent: CategoriesOutilsMesureRoute.name)
              ]),
          _i11.RouteConfig(OutilsMesureListDetailRoute.name,
              path: 'outils-mesure-list-detail-page', parent: HomeRoute.name),
          _i11.RouteConfig(OutilsAddRoute.name,
              path: 'outils-add-page', parent: HomeRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i11.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i11.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/home-page', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.HomeStartPage]
class HomeStartRoute extends _i11.PageRouteInfo<HomeStartRouteArgs> {
  HomeStartRoute(
      {_i12.Key? key,
      required _i13.FirebaseAuth user,
      List<_i11.PageRouteInfo>? children})
      : super(HomeStartRoute.name,
            path: 'home-start-page',
            args: HomeStartRouteArgs(key: key, user: user),
            initialChildren: children);

  static const String name = 'HomeStartRoute';
}

class HomeStartRouteArgs {
  const HomeStartRouteArgs({this.key, required this.user});

  final _i12.Key? key;

  final _i13.FirebaseAuth user;

  @override
  String toString() {
    return 'HomeStartRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i5.LayettePage]
class LayetteRoute extends _i11.PageRouteInfo<LayetteRouteArgs> {
  LayetteRoute(
      {_i12.Key? key,
      required _i13.FirebaseAuth user,
      List<_i11.PageRouteInfo>? children})
      : super(LayetteRoute.name,
            path: 'layette-page',
            args: LayetteRouteArgs(key: key, user: user),
            initialChildren: children);

  static const String name = 'LayetteRoute';
}

class LayetteRouteArgs {
  const LayetteRouteArgs({this.key, required this.user});

  final _i12.Key? key;

  final _i13.FirebaseAuth user;

  @override
  String toString() {
    return 'LayetteRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i6.DashboardPage]
class DashboardRoute extends _i11.PageRouteInfo<DashboardRouteArgs> {
  DashboardRoute(
      {_i12.Key? key,
      required _i13.FirebaseAuth user,
      List<_i11.PageRouteInfo>? children})
      : super(DashboardRoute.name,
            path: 'dashboard-page',
            args: DashboardRouteArgs(key: key, user: user),
            initialChildren: children);

  static const String name = 'DashboardRoute';
}

class DashboardRouteArgs {
  const DashboardRouteArgs({this.key, required this.user});

  final _i12.Key? key;

  final _i13.FirebaseAuth user;

  @override
  String toString() {
    return 'DashboardRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i7.TiroirPage]
class TiroirRoute extends _i11.PageRouteInfo<TiroirRouteArgs> {
  TiroirRoute(
      {_i12.Key? key,
      required _i13.FirebaseAuth user,
      List<_i11.PageRouteInfo>? children})
      : super(TiroirRoute.name,
            path: 'tiroir-page',
            args: TiroirRouteArgs(key: key, user: user),
            initialChildren: children);

  static const String name = 'TiroirRoute';
}

class TiroirRouteArgs {
  const TiroirRouteArgs({this.key, required this.user});

  final _i12.Key? key;

  final _i13.FirebaseAuth user;

  @override
  String toString() {
    return 'TiroirRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i8.CategoriesOutilsMesurePage]
class CategoriesOutilsMesureRoute
    extends _i11.PageRouteInfo<CategoriesOutilsMesureRouteArgs> {
  CategoriesOutilsMesureRoute(
      {_i12.Key? key,
      required _i13.FirebaseAuth user,
      List<_i11.PageRouteInfo>? children})
      : super(CategoriesOutilsMesureRoute.name,
            path: 'categories-outils-mesure-page',
            args: CategoriesOutilsMesureRouteArgs(key: key, user: user),
            initialChildren: children);

  static const String name = 'CategoriesOutilsMesureRoute';
}

class CategoriesOutilsMesureRouteArgs {
  const CategoriesOutilsMesureRouteArgs({this.key, required this.user});

  final _i12.Key? key;

  final _i13.FirebaseAuth user;

  @override
  String toString() {
    return 'CategoriesOutilsMesureRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i9.OutilsMesureListDetailPage]
class OutilsMesureListDetailRoute
    extends _i11.PageRouteInfo<OutilsMesureListDetailRouteArgs> {
  OutilsMesureListDetailRoute(
      {required _i14.Outils outil,
      required _i13.FirebaseAuth user,
      _i12.Key? key})
      : super(OutilsMesureListDetailRoute.name,
            path: 'outils-mesure-list-detail-page',
            args: OutilsMesureListDetailRouteArgs(
                outil: outil, user: user, key: key));

  static const String name = 'OutilsMesureListDetailRoute';
}

class OutilsMesureListDetailRouteArgs {
  const OutilsMesureListDetailRouteArgs(
      {required this.outil, required this.user, this.key});

  final _i14.Outils outil;

  final _i13.FirebaseAuth user;

  final _i12.Key? key;

  @override
  String toString() {
    return 'OutilsMesureListDetailRouteArgs{outil: $outil, user: $user, key: $key}';
  }
}

/// generated route for
/// [_i10.OutilsAddPage]
class OutilsAddRoute extends _i11.PageRouteInfo<void> {
  const OutilsAddRoute() : super(OutilsAddRoute.name, path: 'outils-add-page');

  static const String name = 'OutilsAddRoute';
}
