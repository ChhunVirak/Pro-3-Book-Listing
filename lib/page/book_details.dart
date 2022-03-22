import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({Key? key, @PathParam("id") this.id}) : super(key: key);
  final int? id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book Detail $id"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.router.pop();
          },
          child: const Text("Back To Home Screen"),
        ),
      ),
    );
  }
}
