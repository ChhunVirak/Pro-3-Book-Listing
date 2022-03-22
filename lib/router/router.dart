import 'package:auto_route/auto_route.dart';

import '../page/book.dart';
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
      page: HomePage,
      children: <AutoRoute>[
        AutoRoute(
          path: "book",
          name: "BookRouter",
          page: Book,
          children: <AutoRoute>[
            AutoRoute(
                path: 'most-reading',
                page: MostReading,
                name: "MostRead",
                initial: true),
            AutoRoute(path: 'popular', page: Popular, name: "Popular"),
          ],
        ),
        AutoRoute(
          initial: true,
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
