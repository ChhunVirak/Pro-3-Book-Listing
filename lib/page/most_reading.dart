import 'package:flutter/material.dart';

class MostReading extends StatelessWidget {
  const MostReading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (value, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Text("${index + 1} /. This is Item ${index + 1}"),
            ),
          );
        },
      ),
    );
  }
}
