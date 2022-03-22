import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../router/router.gr.dart';

class MostReading extends StatelessWidget {
  const MostReading({Key? key, @queryParam this.author}) : super(key: key);
  final String? author;

  @override
  Widget build(BuildContext context) {
    return author == null
        ? ListView.builder(
            itemCount: 50,
            itemBuilder: (value, index) {
              return GestureDetector(
                onTap: () {
                  context.pushRoute(
                    MostReadBookDetail(id: index + 1),
                  );
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${index + 1} /. This is Most Reading Item ${index + 1}",
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
          )
        : ListView.builder(
            itemCount: 5,
            itemBuilder: (value, index) {
              return GestureDetector(
                onTap: () {
                  context.pushRoute(
                    MostReadBookDetail(id: index + 1),
                  );
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${index + 1} /. This is Most Reading Item $author",
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
