import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final styleTitle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final styleSubtitle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          _createImage(),
          _createTitle(),
          _createActions(),
          _createText(),
          _createText(),
          _createText(),
          _createText(),
          _createText(),
          _createText(),
          _createText(),
          _createText(),
          _createText(),
          _createText(),
          _createText(),
        ],
      ),
    ));
  }

  Widget _createImage() {
    return Image(
        image: NetworkImage(
            "https://cdn.pixabay.com/photo/2019/12/20/23/07/landscape-4709500_960_720.jpg"));
  }

  Widget _createTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "A lake with a bridge",
                    style: styleTitle,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "A lake that lies in Colombia",
                    style: styleSubtitle,
                  )
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _createAction(Icons.call, "CALL"),
        _createAction(Icons.near_me, "ROUTE"),
        _createAction(Icons.share, "SHARE")
      ],
    );
  }

  Widget _createAction(IconData icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _createText() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          "Aliquip consequat nisi dolor labore veniam Lorem veniam magna pariatur consequat ipsum. ",
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
