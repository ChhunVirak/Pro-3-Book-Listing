// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../page/book.dart' as _i2;
import '../page/favourite.dart' as _i4;
import '../page/homepage.dart' as _i1;
import '../page/most_reading.dart' as _i5;
import '../page/popular.dart' as _i6;
import '../page/profile.dart' as _i3;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    BookRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.Book());
    },
    ProfileRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.Profile());
    },
    FavouriteRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.FavouritePage());
    },
    MostRead.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.MostReading());
    },
    Popular.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.Popular());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(HomeRoute.name, path: '/', children: [
          _i7.RouteConfig('#redirect',
              path: '',
              parent: HomeRoute.name,
              redirectTo: 'profile',
              fullMatch: true),
          _i7.RouteConfig(BookRouter.name,
              path: 'book',
              parent: HomeRoute.name,
              children: [
                _i7.RouteConfig('#redirect',
                    path: '',
                    parent: BookRouter.name,
                    redirectTo: 'most-reading',
                    fullMatch: true),
                _i7.RouteConfig(MostRead.name,
                    path: 'most-reading', parent: BookRouter.name),
                _i7.RouteConfig(Popular.name,
                    path: 'popular', parent: BookRouter.name)
              ]),
          _i7.RouteConfig(ProfileRouter.name,
              path: 'profile', parent: HomeRoute.name),
          _i7.RouteConfig(FavouriteRouter.name,
              path: 'favourite', parent: HomeRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.Book]
class BookRouter extends _i7.PageRouteInfo<void> {
  const BookRouter({List<_i7.PageRouteInfo>? children})
      : super(BookRouter.name, path: 'book', initialChildren: children);

  static const String name = 'BookRouter';
}

/// generated route for
/// [_i3.Profile]
class ProfileRouter extends _i7.PageRouteInfo<void> {
  const ProfileRouter() : super(ProfileRouter.name, path: 'profile');

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i4.FavouritePage]
class FavouriteRouter extends _i7.PageRouteInfo<void> {
  const FavouriteRouter() : super(FavouriteRouter.name, path: 'favourite');

  static const String name = 'FavouriteRouter';
}

/// generated route for
/// [_i5.MostReading]
class MostRead extends _i7.PageRouteInfo<void> {
  const MostRead() : super(MostRead.name, path: 'most-reading');

  static const String name = 'MostRead';
}

/// generated route for
/// [_i6.Popular]
class Popular extends _i7.PageRouteInfo<void> {
  const Popular() : super(Popular.name, path: 'popular');

  static const String name = 'Popular';
}
