import 'package:bustick/utils/custom_style.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:bustick/screens/onboard/on_board_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  final List<Color> colors = <Color>[Colors.red, Colors.blue,Colors.amber];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
        Duration(
            seconds: 3
        ),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>
            OnBoardScreen()
        ))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: CustomStyle.bgColor
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/splash_logo.png',
              width: MediaQuery.of(context).size.width / 2,
            ),
          ],
        ),
      ),
    );
  }
}
