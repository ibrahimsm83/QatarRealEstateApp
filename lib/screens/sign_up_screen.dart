import 'package:bonyanaldoha/widgets/text_form_field.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/gestures.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:sizer/sizer.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool rememberMe = false;
  final formKey1 = GlobalKey<FormState>();
  bool _pwShow = true;
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    var logoImg = Image.asset(
      'assets/images/logo.png',
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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Form(
                key: formKey1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 2.h,
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
                    CustomeTextFormField(
                      hintText: 'fullName'.tr(),
                      validator: (String? val) {
                        if (val == null || val.isEmpty) {
                          return '';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10.0),
                    //Email name
                    CustomeTextFormField(
                      hintText: 'Email_Address'.tr(),
                      validator: (String? val) {
                        if (val == null || val.isEmpty) {
                          return '';
                        }
                        return null;
                      },
                    ),

                    SizedBox(height: 10.0),
                    //Email name
                    CustomeTextFormField(
                      hintText: 'phoneNumber'.tr(),
                      validator: (String? val) {
                        if (val == null || val.isEmpty) {
                          return '';
                        }
                        return null;
                      },
                    ),

                    SizedBox(
                      height: 10.0,
                    ),
                    CustomeTextFormField(
                      obscureText: true,
                      hintText: 'Password'.tr(),
                      validator: (String? val) {
                        if (val == null || val.isEmpty) {
                          return '';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    CustomeTextFormField(
                      obscureText: true,
                      hintText: 're-type_Password'.tr(),
                      validator: (String? val) {
                        if (val == null || val.isEmpty) {
                          return '';
                        }
                        return null;
                      },
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
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text('select-your-Account-Type').tr(),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: sizeWidth(context),
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: sizeWidth(context) * 0.06),
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      child: ElevatedButton(
                        child: Text(
                          'registerNow',
                          style: TextStyle(color: Colors.black),
                        ).tr(),
                        onPressed: () {
                          if (formKey1.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Processing ')));
                            // Navigator.pushReplacement(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (BuildContext context) =>
                            //             HomeScreen()));
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
            ),
          ),
        ),
      ),
    );
  }
}
