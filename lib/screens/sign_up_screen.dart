import 'package:bonyanaldoha/widgets/custome_dropdown_button.dart';
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
  bool flag = false;
  final items1 = [
    'Select your account type',
    'Agent',
    'Agency',
    'Owner',
    'Buyer',
    'Seller',
    'Manager'
  ];
  String val1 = 'Select your account type';
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
                    SizedBox(height: 5.h),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: sizeWidth(context) * 0.2),
                      child: Container(
                        alignment: Alignment.center,
                        child: logoImg,
                      ),
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
                      hintText: "First Name", //'fullName'.tr(),
                      validator: (String? val) {
                        if (val == null || val.isEmpty) {
                          return '';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10.0),
                    CustomeTextFormField(
                      hintText: "Last Name", //'fullName'.tr(),
                      validator: (String? val) {
                        if (val == null || val.isEmpty) {
                          return '';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10.0),
                    CustomeTextFormField(
                      hintText: "Username", //'fullName'.tr(),
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
                    SizedBox(height: 10.0),
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
                    // Padding(
                    //   padding: EdgeInsets.symmetric(
                    //       vertical: 10.0,
                    //       horizontal: sizeWidth(context) * 0.06),
                    //   child: InkWell(
                    //     onTap: () {},
                    //     child: Container(
                    //       height: 45,
                    //       width: double.infinity,
                    //       decoration: BoxDecoration(
                    //         color: Colors.white,
                    //         border: Border.all(color: Colors.grey),
                    //         borderRadius:
                    //             BorderRadius.all(Radius.circular(10.0)),
                    //       ),
                    //       child: Center(
                    //         child: Text('select-your-Account-Type').tr(),
                    //       ),
                    //     ),
                    //   ),
                    // ),

                    CustomeDropDownButton(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      value: val1,
                      itemList: items1,
                      onChanged: (String? value) {
                        return setState(
                          () => val1 = value!,
                        );
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
                          RichText(
                            text: TextSpan(
                              text: "I agree with your ",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 12.sp),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Terms & Conditions",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                      color: Colors.black,
                                      fontSize: 11.sp),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const LoginScreen(),
                                        ),
                                      );
                                    },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
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
                    SizedBox(height: 10.0),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: sizeWidth(context) * 0.06),
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
                      padding: EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: sizeWidth(context) * 0.06),
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
