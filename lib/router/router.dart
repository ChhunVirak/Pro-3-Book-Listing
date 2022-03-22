import 'package:auto_route/auto_route.dart';
import 'package:auto_route1/page/book.dart';

import '../page/favourite.dart';
import '../page/most_reading.dart';
import '../page/popular.dart';
import '../page/profile.dart';
import '../page/homepage.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      name: "HomePageRouter",
      page: HomePage,
      children: <AutoRoute>[
        AutoRoute(
          path: "book",
          name: "BookRouter",
          page: EmptyRouterPage,
          children: <AutoRoute>[
            AutoRoute(path: "", page: Book, initial: true, children: [
              AutoRoute(
                  path: 'popular',
                  page: Popular,
                  name: "PopularBook",
                  initial: true),
              AutoRoute(
                  path: 'most-reading', page: MostReading, name: "MostRead"),
            ]),
          ],
        ),
        AutoRoute(
          // initial: true,
          path: "profile",
          name: "ProfileRouter",
          page: Profile,
        ),
        AutoRoute(
          path: "favourite",
          name: "FavouriteRouter",
          page: FavouritePage,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
