import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../router/router.gr.dart';

class Book extends StatefulWidget {
  const Book({Key? key}) : super(key: key);

  @override
  State<Book> createState() => _BookState();
}

class _BookState extends State<Book> {
  final menuList = ["Popular Book", "Most Reading Book"];

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        const PopularBook(),
        MostRead(),
      ],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Column(
                    children: menuList
                        .asMap()
                        .entries
                        .map(
                          (e) => GestureDetector(
                            onTap: () {
                              setState(() {
                                tabsRouter.setActiveIndex(e.key);
                              });
                            },
                            child: Card(
                              elevation:
                                  tabsRouter.activeIndex == e.key ? 5 : 1,
                              child: Container(
                                width: 200,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                child: Text(
                                  e.value,
                                  style: TextStyle(
                                      color: tabsRouter.activeIndex == e.key
                                          ? Colors.teal
                                          : Colors.black,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  GestureDetector(
                    onTap: () {
                      debugPrint("Workkkkk");
                      context.navigateTo(
                        const ProfileRouter(children: [SettingRouter()]),
                      );
                      //context.router.push(const SettingRouter());
                    },
                    child: const Icon(Icons.settings),
                  )
                ],
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Card(
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    // width: 200,
                    // height: 300,
                    child: FadeTransition(
                      opacity: animation,
                      child: child,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
