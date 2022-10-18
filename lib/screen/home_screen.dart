import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Image(
            image: AssetImage("assets/img/yubis-logo.png"),
          ),
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined)),
        ],
      ),
      body: ListView(
        children: [
          Image(
            image: AssetImage("assets/banner/banner1.jpeg"),
            width: 300,
          ),
        ],
      ),
    );
  }
}
