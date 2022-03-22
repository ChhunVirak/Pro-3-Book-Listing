import 'package:flutter/material.dart';

class Popular extends StatelessWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 50,
      itemBuilder: (value, index) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Text("${index + 1} /. This is Popular Item ${index + 1}"),
          ),
        );
      },
    );
  }
}
