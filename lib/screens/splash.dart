import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(milliseconds: 500),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const LoginScreen(),
        ),
      ),
    );

    var imagebg = const DecorationImage(
      fit: BoxFit.fitHeight,
      image: AssetImage('assets/images/Slpace_Screen.jpg'),
    );

    var logoImg = Image.asset(
      'assets/images/logo.png',
    );
    return Scaffold(
      body: AnnotatedRegion(
        value: const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        child: Container(
          decoration: BoxDecoration(
            image: imagebg,
          ),
          child: Container(
            padding:  EdgeInsets.only(top: 120.0),
            alignment: Alignment.center,
            child: Column(
              children: [
                logoImg,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
