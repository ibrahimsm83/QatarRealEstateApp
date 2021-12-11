import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyDrawerHeader extends StatefulWidget {
  const MyDrawerHeader({Key? key}) : super(key: key);
  @override
  _MyDrawerHeaderState createState() => _MyDrawerHeaderState();
}

class _MyDrawerHeaderState extends State<MyDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
          height: 75,
          margin: EdgeInsets.only(left: 12, right: 6.0),
          width: 75,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.greenAccent,
            // borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/profile.jpg',
                ),
                fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'John Smith',
          style: TextStyle(
              //   color: drawerTextColor,
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 2.0,
        ),
        Text(
          'Login to your access',
          style: TextStyle(fontSize: 12, color: Colors.white),
        ),
        SizedBox(
          height: 5.0,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 25,
            width: sizeWidth(context) * 0.2,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Center(
              child: Text(
                "LOGIN",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ],
      //),
    );
  }
}
