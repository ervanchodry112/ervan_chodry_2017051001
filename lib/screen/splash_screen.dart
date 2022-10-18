import 'dart:async';

import 'package:flutter/material.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  // _SplashScreen _createState() => _SplashScreen();

  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    start();
  }

  start() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/bg-splash.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage(
                  "assets/img/yubis-logo.png",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
