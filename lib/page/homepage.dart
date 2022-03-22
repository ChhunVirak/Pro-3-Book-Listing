import 'package:auto_route/auto_route.dart';
import 'package:auto_route1/router/router.gr.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        BookRouter(),
        ProfileRouter(),
        FavouriteRouter(),
      ],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
            body: FadeTransition(
              opacity: animation,
              child: child,
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: (index) {
                tabsRouter.setActiveIndex(index);
              },
              items: const [
                BottomNavigationBarItem(
                    label: 'Book', icon: Icon(Icons.book_rounded)),
                BottomNavigationBarItem(
                    label: 'Profile', icon: Icon(Icons.face_rounded)),
                BottomNavigationBarItem(
                    label: 'Favourite', icon: Icon(Icons.favorite)),
              ],
            ));
      },
    );
  }
}
