import 'package:auto_route/auto_route.dart';
import 'package:auto_route1/router/router.gr.dart';
import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting"),
        leading: InkWell(
            onTap: () {
              debugPrint("Work . . .");
              context.navigateBack();
            },
            child: const Icon(Icons.arrow_back_ios)),
      ),
    );
  }
}
