import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: [_page1(), _page2()],
        ),
      ),
    );
  }

  Widget _page1() {
    return Center(child: Text('Page 1'),);
  }

  Widget _page2() {
    return Center(child: Text('Page 2'),);
  }
}
