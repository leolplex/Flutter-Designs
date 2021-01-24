import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image(
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2019/12/20/23/07/landscape-4709500_960_720.jpg")),
        Row(
          children: [
            Column(
              children: [
                Text("A lake with a bridge"),
                Text("A lake that lies")
              ],
            )
          ],
        )
      ],
    ));
  }
}
