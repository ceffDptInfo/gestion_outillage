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
import 'package:flutter/material.dart' as _i12;

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
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomeStartPage());
    },
    LayetteRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.LayettePage());
    },
    DashboardRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.DashboardPage());
    },
    TiroirRoute.name: (routeData) {
      final args = routeData.argsAs<TiroirRouteArgs>(
          orElse: () => const TiroirRouteArgs());
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.TiroirPage(key: args.key));
    },
    CategoriesOutilsMesureRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.CategoriesOutilsMesurePage());
    },
    OutilsMesureListDetailRoute.name: (routeData) {
      final args = routeData.argsAs<OutilsMesureListDetailRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i9.OutilsMesureListDetailPage(
              args.designation,
              args.complement,
              args.emplacement,
              args.etat,
              args.statut,
              args.index,
              args.dimangle1,
              args.dimangle2,
              args.dimm1,
              args.dimm2,
              args.nameimg,
              args.arborescence,
              args.categorie));
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
              path: 'home-start-page', parent: HomeRoute.name),
          _i11.RouteConfig(LayetteRoute.name,
              path: 'layette-page', parent: HomeRoute.name),
          _i11.RouteConfig(DashboardRoute.name,
              path: 'dashboard-page', parent: HomeRoute.name),
          _i11.RouteConfig(TiroirRoute.name,
              path: 'tiroir-page', parent: HomeRoute.name),
          _i11.RouteConfig(CategoriesOutilsMesureRoute.name,
              path: 'categories-outils-mesure-page', parent: HomeRoute.name),
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
class HomeStartRoute extends _i11.PageRouteInfo<void> {
  const HomeStartRoute() : super(HomeStartRoute.name, path: 'home-start-page');

  static const String name = 'HomeStartRoute';
}

/// generated route for
/// [_i5.LayettePage]
class LayetteRoute extends _i11.PageRouteInfo<void> {
  const LayetteRoute() : super(LayetteRoute.name, path: 'layette-page');

  static const String name = 'LayetteRoute';
}

/// generated route for
/// [_i6.DashboardPage]
class DashboardRoute extends _i11.PageRouteInfo<void> {
  const DashboardRoute() : super(DashboardRoute.name, path: 'dashboard-page');

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i7.TiroirPage]
class TiroirRoute extends _i11.PageRouteInfo<TiroirRouteArgs> {
  TiroirRoute({_i12.Key? key})
      : super(TiroirRoute.name,
            path: 'tiroir-page', args: TiroirRouteArgs(key: key));

  static const String name = 'TiroirRoute';
}

class TiroirRouteArgs {
  const TiroirRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'TiroirRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.CategoriesOutilsMesurePage]
class CategoriesOutilsMesureRoute extends _i11.PageRouteInfo<void> {
  const CategoriesOutilsMesureRoute()
      : super(CategoriesOutilsMesureRoute.name,
            path: 'categories-outils-mesure-page');

  static const String name = 'CategoriesOutilsMesureRoute';
}

/// generated route for
/// [_i9.OutilsMesureListDetailPage]
class OutilsMesureListDetailRoute
    extends _i11.PageRouteInfo<OutilsMesureListDetailRouteArgs> {
  OutilsMesureListDetailRoute(
      {required String designation,
      required String complement,
      required String emplacement,
      required String etat,
      required String statut,
      required int index,
      required String dimangle1,
      required String dimangle2,
      required String dimm1,
      required String dimm2,
      required String nameimg,
      required String arborescence,
      required String categorie})
      : super(OutilsMesureListDetailRoute.name,
            path: 'outils-mesure-list-detail-page',
            args: OutilsMesureListDetailRouteArgs(
                designation: designation,
                complement: complement,
                emplacement: emplacement,
                etat: etat,
                statut: statut,
                index: index,
                dimangle1: dimangle1,
                dimangle2: dimangle2,
                dimm1: dimm1,
                dimm2: dimm2,
                nameimg: nameimg,
                arborescence: arborescence,
                categorie: categorie));

  static const String name = 'OutilsMesureListDetailRoute';
}

class OutilsMesureListDetailRouteArgs {
  const OutilsMesureListDetailRouteArgs(
      {required this.designation,
      required this.complement,
      required this.emplacement,
      required this.etat,
      required this.statut,
      required this.index,
      required this.dimangle1,
      required this.dimangle2,
      required this.dimm1,
      required this.dimm2,
      required this.nameimg,
      required this.arborescence,
      required this.categorie});

  final String designation;

  final String complement;

  final String emplacement;

  final String etat;

  final String statut;

  final int index;

  final String dimangle1;

  final String dimangle2;

  final String dimm1;

  final String dimm2;

  final String nameimg;

  final String arborescence;

  final String categorie;

  @override
  String toString() {
    return 'OutilsMesureListDetailRouteArgs{designation: $designation, complement: $complement, emplacement: $emplacement, etat: $etat, statut: $statut, index: $index, dimangle1: $dimangle1, dimangle2: $dimangle2, dimm1: $dimm1, dimm2: $dimm2, nameimg: $nameimg, arborescence: $arborescence, categorie: $categorie}';
  }
}

/// generated route for
/// [_i10.OutilsAddPage]
class OutilsAddRoute extends _i11.PageRouteInfo<void> {
  const OutilsAddRoute() : super(OutilsAddRoute.name, path: 'outils-add-page');

  static const String name = 'OutilsAddRoute';
}
