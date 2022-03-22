import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class MostReading extends StatelessWidget {
  const MostReading({Key? key, @queryParam this.author}) : super(key: key);
  final String? author;

  @override
  Widget build(BuildContext context) {
    return author == null
        ? ListView.builder(
            itemCount: 50,
            itemBuilder: (value, index) {
              return Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Text(
                      "${index + 1} /. This is Most Reading Item ${index + 1}"),
                ),
              );
            },
          )
        : ListView.builder(
            itemCount: 5,
            itemBuilder: (value, index) {
              return Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child:
                      Text("${index + 1} /. This is Most Reading Item $author"),
                ),
              );
            },
          );
  }
}
