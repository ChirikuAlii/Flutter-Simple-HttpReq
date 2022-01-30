// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../pages/detail_page.dart' as _i2;
import '../pages/homepage.dart' as _i1;

class Router extends _i3.RootStackRouter {
  Router([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      final args = routeData.argsAs<HomePageRouteArgs>(
          orElse: () => const HomePageRouteArgs());
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.HomePage(key: args.key));
    },
    DetailPageRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.DetailPage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(HomePageRoute.name, path: '/'),
        _i3.RouteConfig(DetailPageRoute.name, path: '/detail-page')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i3.PageRouteInfo<HomePageRouteArgs> {
  HomePageRoute({_i4.Key? key})
      : super(HomePageRoute.name, path: '/', args: HomePageRouteArgs(key: key));

  static const String name = 'HomePageRoute';
}

class HomePageRouteArgs {
  const HomePageRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'HomePageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.DetailPage]
class DetailPageRoute extends _i3.PageRouteInfo<void> {
  const DetailPageRoute() : super(DetailPageRoute.name, path: '/detail-page');

  static const String name = 'DetailPageRoute';
}
