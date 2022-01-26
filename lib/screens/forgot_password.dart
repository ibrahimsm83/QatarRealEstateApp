import 'package:bonyanaldoha/screens/verification_screen.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:bonyanaldoha/widgets/text_form_field.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({Key? key}) : super(key: key);

  final formKeyFw = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var logoImg = Image.asset(
      'assets/images/logo.png',
    );
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Login_screen.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Form(
              key: formKeyFw,
              child: Padding(
                padding: EdgeInsets.only(top: sizeheight(context) * 0.15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: logoImg,
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: sizeWidth(context) * 0.08,
                            right: sizeWidth(context) * 0.08),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Forgot Password",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Please Enter Your Email Address and",
                              style: TextStyle(
                                  // color: text_Color,
                                  // fontSize: 18,
                                  ),
                            ),
                            Text("Reset Your passowrd"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    CustomeTextFormField(
                      hintText: 'Email Address',
                      validator: (String? val) {
                        if (val == null || val.isEmpty) {
                          return '';
                        }
                        return null;
                      },
                    ),
                    //pw
                    SizedBox(height: 40),
                    //Login Buttons
                    Container(
                      width: sizeWidth(context),
                      margin: EdgeInsets.symmetric(
                        horizontal: 25.0,
                      ),
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      child: ElevatedButton(
                        child: Text(
                          'Send Now',
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () {
                          if (formKeyFw.currentState!.validate()) {
                            // ScaffoldMessenger.of(context).showSnackBar(
                            //     const SnackBar(content: Text('Processing ')));
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        VerificationScreen()));
                          }
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (BuildContext context) =>
                          //             HomeScreen()));
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
                    // Container(
                    //     width: sizeWidth(context),
                    //     margin: EdgeInsets.only(
                    //         left: sizeWidth(context) * 0.08,
                    //         right: sizeWidth(context) * 0.08),
                    //     height: 50,
                    //     // decoration: BoxDecoration(
                    //     //   borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    //     // ),
                    //     child: ElevatedButton(
                    //       child: Text("SEND NOW"),
                    //       onPressed: () {
                    //         //Get.to(HomePage());
                    //       },
                    //       style: ElevatedButton.styleFrom(
                    //         primary: primaryColor,
                    //         textStyle: TextStyle(
                    //             fontSize: 18, fontWeight: FontWeight.bold),
                    //         shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(10.0),
                    //         ),
                    //       ),
                    //     )),
                    //Forget your password
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Text(
                          "CANCEL",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    //Expanded(child: SizedBox(height: 10,)),
                    //dont have any account
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
