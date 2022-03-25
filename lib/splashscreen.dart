import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
      Timer(Duration(seconds: 3), () {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (_) => Login()));
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo here
            Image.asset(
              'images/BackLash.png',
              height: 270,
            ),
            SizedBox(
              height: 50,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
