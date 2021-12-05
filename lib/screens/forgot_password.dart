import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var logoImg = Image.asset(
      'assets/images/logo.png',
    );
    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Text(
            "FORGOT PASSWORD",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        body: Stack(
          children: [
            Container(
              height: sizeheight(context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Login_screen.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 4.h,
                    ),
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
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 40, 10.0, 10),
                      child: Container(
                        height: 45,
                        color: Colors.white,
                        margin: EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10.0),
                        child: TextField(
                          // controller: nameController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(color: primaryColor)),
                            hintText: 'Email Address',
                          ),
                        ),
                      ),
                    ),
                    // Container(
                    //   width: sizeWidth(context),
                    //   margin: EdgeInsets.only(
                    //       top: 40,
                    //       left: sizeWidth(context) * 0.08,
                    //       right: sizeWidth(context) * 0.08),
                    //   child: TextField(
                    //     //controller: Controller_sales,

                    //     decoration: InputDecoration(
                    //       hintText: "Email Address",
                    //       border: OutlineInputBorder(),
                    //       hintStyle: TextStyle(color: Colors.grey),
                    //     ),
                    //     onChanged: (value) => () {},
                    //   ),
                    // ),
                    //pw
                    SizedBox(
                      height: 40,
                    ),
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
                          'send_now',
                          style: TextStyle(color: Colors.black),
                        ).tr(),
                        onPressed: () {
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
                        child: Container(
                          child: Text(
                            "CANCEL",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    //Expanded(child: SizedBox(height: 10,)),
                    //dont have any account
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
