import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:bonyanaldoha/widgets/inputtextfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final double btnmargsize = MediaQuery.of(context).size.width * 0.09;
    var imagebg = const DecorationImage(
      fit: BoxFit.fitHeight,
      image: AssetImage('assets/images/Login_screen.jpg'),
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
            padding: const EdgeInsets.only(top: 50.0),
            //color: primaryColor.withOpacity(0.8),
            alignment: Alignment.center,
            child: Column(
              // mainAxisSize: MainAxisSize.max,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                logoImg,
                SizedBox(height: 10.0),
                Text(
                  "Welcome!",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5.0),
                Text(
                  "Please Login to Countinue",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: addPropertyTextField('Email Address'),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, bottom: 10.0, right: 30.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: primaryColor),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 10,
                // ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: addPropertyTextField('********'),
                ),
                // SizedBox(
                //   width: 300,
                //   child: TextField(
                //     decoration: InputDecoration(
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(10.0),
                //       ),
                //       hintText: 'Email Address',
                //     ),
                //     style: TextStyle(height: 0.5),
                //   ),
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                // //pw
                // SizedBox(
                //   width: 300,
                //   child: TextField(
                //     decoration: InputDecoration(
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(10.0),
                //       ),
                //       hintText: '********',
                //     ),
                //     style: TextStyle(height: 0.5),
                //   ),
                // ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
