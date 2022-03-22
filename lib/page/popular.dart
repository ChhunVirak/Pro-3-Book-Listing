import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../router/router.gr.dart';

class Popular extends StatelessWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 50,
      itemBuilder: (value, index) {
        return GestureDetector(
          onTap: () {
            context.pushRoute(PopularBookDetail(id: index + 1));
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${index + 1} /. This is Popular Item ${index + 1}",
                  ),
                  const Icon(
                    Icons.favorite,
                    color: Colors.teal,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
