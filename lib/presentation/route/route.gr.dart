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

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
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
      final args = routeData.argsAs<DetailPageRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.DetailPage(
              idNews: args.idNews,
              titleNews: args.titleNews,
              image: args.image,
              author: args.author,
              caption: args.caption));
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
class DetailPageRoute extends _i3.PageRouteInfo<DetailPageRouteArgs> {
  DetailPageRoute(
      {required String idNews,
      required String titleNews,
      required String image,
      required String author,
      required String caption})
      : super(DetailPageRoute.name,
            path: '/detail-page',
            args: DetailPageRouteArgs(
                idNews: idNews,
                titleNews: titleNews,
                image: image,
                author: author,
                caption: caption));

  static const String name = 'DetailPageRoute';
}

class DetailPageRouteArgs {
  const DetailPageRouteArgs(
      {required this.idNews,
      required this.titleNews,
      required this.image,
      required this.author,
      required this.caption});

  final String idNews;

  final String titleNews;

  final String image;

  final String author;

  final String caption;

  @override
  String toString() {
    return 'DetailPageRouteArgs{idNews: $idNews, titleNews: $titleNews, image: $image, author: $author, caption: $caption}';
  }
}
