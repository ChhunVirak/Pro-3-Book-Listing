import 'package:auto_route/auto_route.dart';
import 'package:auto_route1/page/book.dart';
import 'package:auto_route1/page/book_details.dart';
import 'package:auto_route1/page/setting.dart';

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
          initial: true,
          path: "book",
          name: "BookRouter",
          page: EmptyRouterPage,
          children: <AutoRoute>[
            AutoRoute(
              path: "",
              page: Book,
              children: [
                AutoRoute(
                  initial: true,
                  path: 'popular',
                  page: Popular,
                  name: "PopularBook",
                ),
                AutoRoute(
                  path: 'most-reading',
                  page: MostReading,
                  name: "MostRead",
                ),
                RedirectRoute(path: "*", redirectTo: "popular")
              ],
            ),
            AutoRoute(
                path: "popular/:id",
                page: BookDetails,
                name: "PopularBookDetail"),
            AutoRoute(
                path: "most-reading/:id",
                page: BookDetails,
                name: "MostReadBookDetail"),
            RedirectRoute(path: "*", redirectTo: "")
          ],
        ),
        AutoRoute(
          path: "profile",
          name: "ProfileRouter",
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: Profile,
              name: "ProfileRoute",
            ),
            AutoRoute(
              path: 'setting',
              page: Setting,
              name: 'SettingRouter',
            ),
            RedirectRoute(path: "*", redirectTo: "")
          ],
        ),
        AutoRoute(
          path: "favourite",
          name: "FavouriteRouter",
          page: FavouritePage,
        ),
      ],
    ),
    RedirectRoute(path: "*", redirectTo: "/")
  ],
)
class $AppRouter {}
