import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../router/router.gr.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with TickerProviderStateMixin {
// anima
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                // const SizedBox(
                //   height: 120,
                //   width: 120,
                //   child: CircularProgressIndicator(
                //     strokeWidth: 10,
                //     value: 1,
                //     color: Colors.red,
                //   ),
                // ),
                RotationTransition(
                  turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        // Where the linear gradient begins and ends
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        // Add one stop for each color. Stops should increase from 0 to 1
                        stops: [0.1, 0.5, 0.7, 0.9],
                        colors: [
                          // Colors are easy thanks to Flutter's Colors class.
                          Colors.pink,
                          Color.fromARGB(255, 4, 248, 12),
                          Colors.amber,
                          Color.fromARGB(255, 7, 156, 255),
                        ],
                      ),
                    ),
                    height: 105,
                    width: 105,
                  ),
                ),
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Chhoeung Chhun Virak",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 150, vertical: 20),
              child: Divider(
                thickness: 2,
                color: Colors.black,
              ),
            ),
            const Text(
              "I'm 19 years old.\n Status : Single\n",
              style: TextStyle(
                  fontWeight: FontWeight.w900, height: 3, fontSize: 24),
            ),
          ],
        ),
        Positioned(
            top: 30,
            right: 30,
            child: GestureDetector(
                onTap: () {
                  context.pushRoute(const SettingRouter());
                },
                child: const Icon(Icons.settings)))
      ],
    );
  }
}
