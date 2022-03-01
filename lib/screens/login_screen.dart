import 'dart:async';

import 'package:bonyanaldoha/controller/language_controller.dart';
import 'package:bonyanaldoha/screens/forgot_password.dart';
import 'package:bonyanaldoha/screens/home_screen.dart';

import 'package:bonyanaldoha/widgets/text_form_field.dart';

import 'package:flutter/gestures.dart';
import 'package:bonyanaldoha/utils/app_colors.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:bonyanaldoha/utils/app_strings.dart';
import 'package:flutter/material.dart';

import 'sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool _loading = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  MyController myController = Get.put(MyController());
  bool rememberMe = false;

  bool _pwShow = true;
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    var logoImg = Image.asset(
      'assets/images/logo.png',
      fit: BoxFit.cover,
    );
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Login_screen.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Column(
                  children: [
                    // SizedBox(height: 2.h),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              flag = !flag;
                            });

                            flag
                                ? myController.changeLanguages('en', 'US')
                                : myController.changeLanguages('ar', 'SA');

                            print("language changer");
                          },
                          child: Text(
                            flag ? "عربي" : "English",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),

                    SizedBox(height: 3.h),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: sizeWidth(context) * 0.2),
                      child: Container(
                        alignment: Alignment.center,
                        child: logoImg,
                      ),
                    ),

                    SizedBox(height: 2.h),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'welcome'.tr,
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 17),
                      child: Text(
                        'pleaselogintocountinue'.tr,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                    ),

                    CustomeTextFormField(
                      hintText: 'Email_Address'.tr,
                      validator: (String? val) {
                        if (val == null || val.isEmpty) {
                          return '';
                        }
                        return null;
                      },
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(right: sizeWidth(context) * 0.05),
                      child: Container(
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
                            'forgotpassword'.tr,
                            style: TextStyle(fontSize: 15, color: primaryColor),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 10.0,
                    ),
                    CustomeTextFormField(
                      obscureText: true,
                      hintText: 'Password'.tr,
                      validator: (String? val) {
                        if (val == null || val.isEmpty) {
                          return '';
                        }
                        return null;
                      },
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: sizeWidth(context) * 0.04),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40.0,
                            width: 40.0,
                            child: Checkbox(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: rememberMe,
                              activeColor: primaryColor,
                              onChanged: (value) => setState(
                                () => rememberMe = value!,
                              ),
                            ),
                          ),
                          Text(
                            'Rememberme'.tr,
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      width: sizeWidth(context),
                      margin: EdgeInsets.symmetric(
                          horizontal: sizeWidth(context) * 0.06),
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      child: ElevatedButton(
                        child: Text(
                          'loginNow'.tr,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            showLoaderDialog(context);
                            Timer(Duration(seconds: 2), () {
                              Navigator.pop(context);
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          HomeScreen()));
                            });
                            // Navigator.pop(context);
                            // ScaffoldMessenger.of(context).showSnackBar(
                            //     const SnackBar(content: Text('Processing ')));

                          }
                        },
                        //     async {
                        //   if (formKey.currentState!.validate()) {
                        //     setState(() => _loading = true);
                        //     try {
                        //       await Helper.login(
                        //         email: _emailController.text.toString(),
                        //         password: _passController.text.toString(),
                        //       );
                        //       Navigator.pushReplacement(
                        //           context,
                        //           MaterialPageRoute(
                        //               builder: (BuildContext context) =>
                        //                   HomeScreen()));
                        //     } catch (error) {
                        //       print(error);
                        //       //ErrorHelper.toaster(context, error);
                        //     } finally {
                        //       setState(() => _loading = false);
                        //     }

                        //     var res = await Helper.login(
                        //         email: _emailController.text.toString(),
                        //         password: _passController.text.toString());

                        //     if (res['error'] == false && res['code'] == 200) {
                        //       Navigator.push(
                        //           context,
                        //           MaterialPageRoute(
                        //               builder: (BuildContext context) =>
                        //                   HomeScreen()));
                        //     } else {
                        //       print("errror");
                        //     }
                        //   }
                        // },
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
                          Text('or'.tr),
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
                          vertical: 10.0,
                          horizontal: sizeWidth(context) * 0.06),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: SizedBox(
                            height: 25,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 2.0.w,
                                ),
                                Image.asset(
                                  'assets/icons/google.png',
                                  height: 8.h,
                                  width: 8.w,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Container(
                                  child: Text(
                                    'continue_w_g'.tr,
                                    style: TextStyle(color: Colors.grey[700]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    //Facebook Button
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: sizeWidth(context) * 0.06),
                      child: GestureDetector(
                        onTap: () => {},
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: SizedBox(
                            height: 25,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 2.0.w,
                                ),
                                Image.asset(
                                  'assets/icons/facebook.png',
                                  height: 8.h,
                                  width: 8.w,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Container(
                                  child: Text(
                                    'continue_W_F'.tr,
                                    style: TextStyle(color: Colors.grey[700]),
                                  ),
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
                          text: 'dont_have_an_account'.tr,
                          style: TextStyle(color: Colors.black, fontSize: 14),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Sign_Up'.tr,
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
            ),
          ),
        ),
      ),
    );
  }

  showLoaderDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: Row(
        children: [
          const CircularProgressIndicator(),
          Container(
              margin: EdgeInsets.only(left: 7), child: Text("Loading...")),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
