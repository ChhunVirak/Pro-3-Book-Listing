import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        SizedBox(
          height: 20,
        ),
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1612151855475-877969f4a6cc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aGQlMjBpbWFnZXxlbnwwfHwwfHw%3D&w=1000&q=80"),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Chhoeung Chhun Virak",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 150, vertical: 20),
          child: Divider(
            thickness: 2,
            color: Colors.black,
          ),
        ),
        Text(
          "I'm 19 years old.\n Status : Single",
          style: TextStyle(fontWeight: FontWeight.w900, height: 3),
        )
      ],
    );
  }
}
