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

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        Popular(),
        MostRead(),
      ],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                        elevation: tabsRouter.activeIndex == e.key ? 5 : 1,
                        child: Container(
                          width: 200,
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          child: Text(
                            e.value,
                            style: TextStyle(
                                color: tabsRouter.activeIndex == e.key
                                    ? Colors.red
                                    : Colors.black,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            Expanded(
              child: Card(
                child: Container(
                  margin: const EdgeInsets.only(left: 30),
                  height: double.infinity,
                  width: 500,
                  child: FadeTransition(
                    opacity: animation,
                    child: child,
                  ),
                ),
              ),
            )
          ],

          // bottomNavigationBar: BottomNavigationBar(
          //   currentIndex: tabsRouter.activeIndex,
          //   onTap: (index) {
          //     tabsRouter.setActiveIndex(index);
          //   },
          //   items: const [
          //     BottomNavigationBarItem(
          //         label: 'Book', icon: Icon(Icons.book_rounded)),
          //     BottomNavigationBarItem(
          //         label: 'Profile', icon: Icon(Icons.face_rounded)),
          //     BottomNavigationBarItem(
          //         label: 'Favourite', icon: Icon(Icons.favorite)),
          //   ],
          // ),
        );
      },
    );
    // Row(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     Column(
    //       children: menuList
    //           .asMap()
    //           .entries
    //           .map(
    //             (e) => GestureDetector(
    //               onTap: () {
    //                 setState(() {
    //                   index = e.key;
    //                 });
    //               },
    //               child: Card(
    //                 elevation: index == e.key ? 5 : 1,
    //                 child: Container(
    //                   width: 200,
    //                   padding: const EdgeInsets.symmetric(
    //                       vertical: 20, horizontal: 20),
    //                   child: Text(
    //                     e.value,
    //                     style: TextStyle(
    //                         color: index == e.key ? Colors.red : Colors.black,
    //                         fontWeight: FontWeight.w900),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           )
    //           .toList(),
    //     ),
    //     Card(
    //       child: Container(
    //         margin: const EdgeInsets.only(left: 30),
    //         height: 500,
    //         width: 500,
    //         child: const Text("Hello"),
    //       ),
    //     )
    //   ],
    // );
  }
}
