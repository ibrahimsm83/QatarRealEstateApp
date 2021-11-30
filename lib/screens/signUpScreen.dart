import 'package:bonyanaldoha/screens/forgotpassword.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/gestures.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:sizer/sizer.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool rememberMe = false;

  bool _pwShow = true;
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    var imagebg = const DecorationImage(
      fit: BoxFit.contain,
      image: AssetImage('assets/images/Login_screen.jpg'),
    );
    var logoImg = Image.asset(
      'assets/images/logo.png',
    );
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          // height: 95.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Login_screen.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Sign_Up',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ).tr(),
                      SizedBox(),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: logoImg,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'createAccount',
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.bold),
                    ).tr(),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 17),
                    child: Text(
                      'pleaseCreateAnAccount',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ).tr(),
                  ),
                  Container(
                    height: 45,
                    color: Colors.white,
                    margin:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: TextField(
                      // controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: primaryColor)),
                        hintText: 'fullName'.tr(),
                      ),
                    ),
                  ),
                  //Email name
                  Container(
                    height: 45,
                    color: Colors.white,
                    margin:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: TextField(
                      // controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: primaryColor)),
                        hintText: 'Email_Address'.tr(),
                      ),
                    ),
                  ),
                  Container(
                    height: 45,
                    color: Colors.white,
                    margin:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: TextField(
                      // controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: primaryColor)),
                        hintText: 'phoneNumber'.tr(),
                      ),
                    ),
                  ),

                  Container(
                    height: 45,
                    color: Colors.white,
                    //padding: EdgeInsets.only(bottom: 15.0),
                    margin:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: TextField(
                      // controller: nameController,
                      textAlign: TextAlign.left,
                      obscureText: _pwShow,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: primaryColor)),
                        hintText: 'Password'.tr(),
                        contentPadding: EdgeInsets.fromLTRB(10, 20, 0, 10),
                        suffixIcon: Visibility(
                          visible: true,
                          child: InkWell(
                              onTap: () {
                                setState(
                                  () {
                                    _pwShow = !_pwShow;
                                  },
                                );
                              },
                              child: !_pwShow
                                  ? Icon(
                                      Icons.visibility,
                                      color: Colors.grey[700],
                                    )
                                  : Icon(
                                      Icons.visibility_off,
                                      color: primaryColor,
                                    )),
                        ),
                      ),
                    ),
                  ),
                  //re-password
                  Container(
                    height: 45,
                    color: Colors.white,
                    //padding: EdgeInsets.only(bottom: 15.0),
                    margin:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: TextField(
                      // controller: nameController,
                      textAlign: TextAlign.left,
                      obscureText: _pwShow,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: primaryColor)),
                        hintText: 're-type_Password'.tr(),
                        contentPadding: EdgeInsets.fromLTRB(10, 20, 0, 10),
                        suffixIcon: Visibility(
                          visible: true,
                          child: InkWell(
                              onTap: () {
                                setState(
                                  () {
                                    _pwShow = !_pwShow;
                                  },
                                );
                              },
                              child: !_pwShow
                                  ? Icon(
                                      Icons.visibility,
                                      color: Colors.grey[700],
                                    )
                                  : Icon(
                                      Icons.visibility_off,
                                      color: primaryColor,
                                    )),
                        ),
                      ),
                    ),
                  ),
                  //Google Button
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 45,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Center(
                          child: Text('select-your-Account-Type').tr(),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: sizeWidth(context),
                    margin:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: ElevatedButton(
                      child: Text(
                        'registerNow',
                        style: TextStyle(color: Colors.black),
                      ).tr(),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        textStyle: TextStyle(
                          fontSize: 14,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(top: 10.0),
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        text: 'already_have_an_account'.tr(),
                        style: TextStyle(color: Colors.black, fontSize: 14),
                        children: <TextSpan>[
                          TextSpan(
                            text: ('login').tr(),
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.black,
                                fontSize: 16),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const LoginScreen(),
                                  ),
                                );
                              },
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                ],
              ),
            ),
            //  ),
          ),
        ),
      ),
    );
  }
}
