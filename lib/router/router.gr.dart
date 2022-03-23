// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i10;

import '../page/book.dart' as _i4;
import '../page/book_details.dart' as _i5;
import '../page/favourite.dart' as _i3;
import '../page/homepage.dart' as _i1;
import '../page/most_reading.dart' as _i7;
import '../page/popular.dart' as _i6;
import '../page/profile.dart' as _i8;
import '../page/setting.dart' as _i9;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomePageRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    BookRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    FavouriteRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.FavouritePage());
    },
    Book.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.Book());
    },
    PopularBookDetail.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<PopularBookDetailArgs>(
          orElse: () => PopularBookDetailArgs(id: pathParams.optInt('id')));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.BookDetails(key: args.key, id: args.id));
    },
    MostReadBookDetail.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MostReadBookDetailArgs>(
          orElse: () => MostReadBookDetailArgs(id: pathParams.optInt('id')));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.BookDetails(key: args.key, id: args.id));
    },
    PopularBook.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.Popular());
    },
    MostRead.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<MostReadArgs>(
          orElse: () => MostReadArgs(author: queryParams.optString('author')));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.MostReading(key: args.key, author: args.author));
    },
    ProfileRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.Profile());
    },
    SettingRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.Setting());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(HomePageRouter.name, path: '/', children: [
          _i2.RouteConfig('#redirect',
              path: '',
              parent: HomePageRouter.name,
              redirectTo: 'book',
              fullMatch: true),
          _i2.RouteConfig(BookRouter.name,
              path: 'book',
              parent: HomePageRouter.name,
              children: [
                _i2.RouteConfig(Book.name,
                    path: '',
                    parent: BookRouter.name,
                    children: [
                      _i2.RouteConfig('#redirect',
                          path: '',
                          parent: Book.name,
                          redirectTo: 'popular',
                          fullMatch: true),
                      _i2.RouteConfig(PopularBook.name,
                          path: 'popular', parent: Book.name),
                      _i2.RouteConfig(MostRead.name,
                          path: 'most-reading', parent: Book.name),
                      _i2.RouteConfig('*#redirect',
                          path: '*',
                          parent: Book.name,
                          redirectTo: 'popular',
                          fullMatch: true)
                    ]),
                _i2.RouteConfig(PopularBookDetail.name,
                    path: 'popular/:id', parent: BookRouter.name),
                _i2.RouteConfig(MostReadBookDetail.name,
                    path: 'most-reading/:id', parent: BookRouter.name),
                _i2.RouteConfig('*#redirect',
                    path: '*',
                    parent: BookRouter.name,
                    redirectTo: '',
                    fullMatch: true)
              ]),
          _i2.RouteConfig(ProfileRouter.name,
              path: 'profile',
              parent: HomePageRouter.name,
              children: [
                _i2.RouteConfig(ProfileRoute.name,
                    path: '', parent: ProfileRouter.name),
                _i2.RouteConfig(SettingRouter.name,
                    path: 'setting', parent: ProfileRouter.name),
                _i2.RouteConfig('*#redirect',
                    path: '*',
                    parent: ProfileRouter.name,
                    redirectTo: '',
                    fullMatch: true)
              ]),
          _i2.RouteConfig(FavouriteRouter.name,
              path: 'favourite', parent: HomePageRouter.name)
        ]),
        _i2.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRouter extends _i2.PageRouteInfo<void> {
  const HomePageRouter({List<_i2.PageRouteInfo>? children})
      : super(HomePageRouter.name, path: '/', initialChildren: children);

  static const String name = 'HomePageRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class BookRouter extends _i2.PageRouteInfo<void> {
  const BookRouter({List<_i2.PageRouteInfo>? children})
      : super(BookRouter.name, path: 'book', initialChildren: children);

  static const String name = 'BookRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ProfileRouter extends _i2.PageRouteInfo<void> {
  const ProfileRouter({List<_i2.PageRouteInfo>? children})
      : super(ProfileRouter.name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i3.FavouritePage]
class FavouriteRouter extends _i2.PageRouteInfo<void> {
  const FavouriteRouter() : super(FavouriteRouter.name, path: 'favourite');

  static const String name = 'FavouriteRouter';
}

/// generated route for
/// [_i4.Book]
class Book extends _i2.PageRouteInfo<void> {
  const Book({List<_i2.PageRouteInfo>? children})
      : super(Book.name, path: '', initialChildren: children);

  static const String name = 'Book';
}

/// generated route for
/// [_i5.BookDetails]
class PopularBookDetail extends _i2.PageRouteInfo<PopularBookDetailArgs> {
  PopularBookDetail({_i10.Key? key, int? id})
      : super(PopularBookDetail.name,
            path: 'popular/:id',
            args: PopularBookDetailArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'PopularBookDetail';
}

class PopularBookDetailArgs {
  const PopularBookDetailArgs({this.key, this.id});

  final _i10.Key? key;

  final int? id;

  @override
  String toString() {
    return 'PopularBookDetailArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i5.BookDetails]
class MostReadBookDetail extends _i2.PageRouteInfo<MostReadBookDetailArgs> {
  MostReadBookDetail({_i10.Key? key, int? id})
      : super(MostReadBookDetail.name,
            path: 'most-reading/:id',
            args: MostReadBookDetailArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'MostReadBookDetail';
}

class MostReadBookDetailArgs {
  const MostReadBookDetailArgs({this.key, this.id});

  final _i10.Key? key;

  final int? id;

  @override
  String toString() {
    return 'MostReadBookDetailArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i6.Popular]
class PopularBook extends _i2.PageRouteInfo<void> {
  const PopularBook() : super(PopularBook.name, path: 'popular');

  static const String name = 'PopularBook';
}

/// generated route for
/// [_i7.MostReading]
class MostRead extends _i2.PageRouteInfo<MostReadArgs> {
  MostRead({_i10.Key? key, String? author})
      : super(MostRead.name,
            path: 'most-reading',
            args: MostReadArgs(key: key, author: author),
            rawQueryParams: {'author': author});

  static const String name = 'MostRead';
}

class MostReadArgs {
  const MostReadArgs({this.key, this.author});

  final _i10.Key? key;

  final String? author;

  @override
  String toString() {
    return 'MostReadArgs{key: $key, author: $author}';
  }
}

/// generated route for
/// [_i8.Profile]
class ProfileRoute extends _i2.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i9.Setting]
class SettingRouter extends _i2.PageRouteInfo<void> {
  const SettingRouter() : super(SettingRouter.name, path: 'setting');

  static const String name = 'SettingRouter';
}
