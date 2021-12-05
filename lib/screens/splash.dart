import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'login_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const LoginScreen(),
        ),
      ),
    );

    var logoImg = Image.asset(
      'assets/images/logo.png',
    );
    return SafeArea(
      child: Scaffold(
        body: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Slpace_Screen.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 20.h),
              child: Column(
                children: [
                  logoImg,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
