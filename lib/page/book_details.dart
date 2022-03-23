import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../router/router.gr.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({Key? key, @PathParam("id") this.id}) : super(key: key);
  final int? id;

  @override
  Widget build(BuildContext context) {
    return id == null
        ? Scaffold(
            body: Center(
              child: LottieBuilder.network(
                "https://assets3.lottiefiles.com/packages/lf20_scqggbnw.json",
              ),
            ),
          )
        : Scaffold(
            appBar: AppBar(
              title: Text("Book Detail $id"),
            ),
            body: Center(
              child: ElevatedButton(
                onPressed: () {
                  context.navigateTo(
                    const ProfileRouter(),
                  );
                },
                child: const Text("Back To Home Screen"),
              ),
            ),
          );
  }
}
