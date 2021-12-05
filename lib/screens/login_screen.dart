import 'package:bonyanaldoha/screens/forgot_password.dart';
import 'package:bonyanaldoha/screens/home_screen.dart';
import 'package:bonyanaldoha/services/helper.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/gestures.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:sizer/sizer.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:flutter/material.dart';

import 'sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

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
                    height: 5.h,
                  ),
                  // Container(
                  //   padding: EdgeInsets.all(10.0),
                  //   alignment: Alignment.centerLeft,
                  //   child: TextButton(
                  //       onPressed: () {
                  //         // setState(() {
                  //         //   flag = !flag;
                  //         // });
                  //         // flag
                  //         //     ? context.locale = Locale('en', 'US')
                  //         //     : context.locale = Locale('ar', 'DZ');

                  //         // // print(context.locale.toString());
                  //         // print("language changer");
                  //         // // context.locale = Locale('Us', 'ar');
                  //       },
                  //       child: Text(
                  //         flag ? "عربي" : "English",
                  //         style: TextStyle(color: Colors.black),
                  //       )),
                  // ),
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
                      'welcome',
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.bold),
                    ).tr(),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 17),
                    child: Text(
                      'pleaselogintocountinue',
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
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                    child: TextField(
                      controller: _emailController,
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
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    ForgetPassword()));
                      },
                      child: Text(
                        'forgotpassword',
                        style: TextStyle(fontSize: 15, color: primaryColor),
                      ).tr(),
                    ),
                  ),
                  Container(
                    height: 45,
                    color: Colors.white,
                    //padding: EdgeInsets.only(bottom: 15.0),
                    margin:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                    child: TextField(
                      controller: _passController,
                      textAlign: TextAlign.left,
                      obscureText: _pwShow,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: primaryColor)),
                        hintText: '********',
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
                  Container(
                    child: Row(
                      children: [
                        Checkbox(
                          value: rememberMe,
                          activeColor: primaryColor,
                          onChanged: (value) => setState(
                            () => rememberMe = value!,
                          ),
                        ),
                        Text(
                          'Rememberme',
                          style: TextStyle(color: Colors.grey[700]),
                        ).tr(),
                      ],
                    ),
                  ),
                  Container(
                    width: sizeWidth(context),
                    margin: EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: ElevatedButton(
                      child: Text(
                        'loginNow',
                        style: TextStyle(color: Colors.black),
                      ).tr(),
                      onPressed: () async {
                        var res = await Helper.login(
                            email: _emailController.text.toString(),
                            password: _passController.text.toString());

                        if (res['error'] == false && res['code'] == 200) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      HomeScreen()));
                        } else {
                          print("errror");
                        }
                      },
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
                    margin: EdgeInsets.symmetric(vertical: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 1.0,
                          width: 30.0.w,
                          color: Colors.grey,
                        ),
                        Text('or').tr(),
                        Container(
                          height: 1.0,
                          width: 30.0.w,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),

                  //Google Button
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Container(
                          height: 25,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 2.0.w,
                              ),
                              Container(
                                child: Image.asset(
                                  'assets/icons/google.png',
                                  height: 8.h,
                                  width: 8.w,
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Container(
                                child: Text(
                                  'continue_w_g',
                                  style: TextStyle(color: Colors.grey[700]),
                                ).tr(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  //Facebook Button
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 15, 10, 10),
                    child: GestureDetector(
                      onTap: () => null,
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Container(
                          height: 25,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 2.0.w,
                              ),
                              Container(
                                child: Image.asset(
                                  'assets/icons/facebook.png',
                                  height: 8.h,
                                  width: 8.w,
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Container(
                                child: Text(
                                  'continue_W_F',
                                  style: TextStyle(color: Colors.grey[700]),
                                ).tr(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10.0),
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        text: 'dont_have_an_account'.tr(),
                        style: TextStyle(color: Colors.black, fontSize: 14),
                        children: <TextSpan>[
                          TextSpan(
                            text: ('Sign_Up').tr(),
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.black,
                                fontSize: 16),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            SignupScreen()));

                                // Get.to(HomePage());
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
