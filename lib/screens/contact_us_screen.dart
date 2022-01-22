import 'package:bonyanaldoha/screens/notification_screen.dart';

import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';

import 'package:bonyanaldoha/widgets/simple_appbar.dart';
import 'package:bonyanaldoha/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class ContactUsPg extends StatefulWidget {
  const ContactUsPg({Key? key}) : super(key: key);

  @override
  State<ContactUsPg> createState() => _ContactUsPgState();
}

class _ContactUsPgState extends State<ContactUsPg> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: SimpleAppBar(
          onTapLeading: () => Navigator.pop(context),
          backgroundColor: whiteColor,
          abtitle: "Contact Us",
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => NotificationPg())),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 2.h),

                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                      child: Text(
                        "Send Message",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                      child: richText(label: 'Your Name'),
                    ),
                    //FirstName
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            child: SizedBox(
                              // width: sizeWidth(context) * 0.42,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "First Name",
                                  contentPadding:
                                      EdgeInsets.fromLTRB(14, 14.0, 0, 14.0),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide:
                                          BorderSide(color: primaryColor)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide:
                                          BorderSide(color: primaryColor)),
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide:
                                          BorderSide(color: errorColor)),
                                  errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide:
                                          BorderSide(color: errorColor)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Flexible(
                            child: SizedBox(
                              //  width: sizeWidth(context) * 0.42,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Last Name",
                                  contentPadding:
                                      EdgeInsets.fromLTRB(14, 14.0, 0, 14.0),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide:
                                          BorderSide(color: primaryColor)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide:
                                          BorderSide(color: primaryColor)),
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide:
                                          BorderSide(color: errorColor)),
                                  errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide:
                                          BorderSide(color: errorColor)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //Email
                SizedBox(
                  // height: sizeheight(context)*0.9,
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                              child: richText(label: 'Email Address'),
                            ),
                          ),
                          CustomeTextFormField(
                            horizontalMergin: 0.03,
                            hintText: 'Email Address',
                            validator: (String? val) {
                              if (val == null || val.isEmpty) {
                                return '';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 10.0,
                      ),
                      //Phone Number
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                              child: richText(label: 'Phone Number'),
                            ),
                          ),
                          CustomeTextFormField(
                            horizontalMergin: 0.03,
                            hintText: 'Phone Number',
                            validator: (String? val) {
                              if (val == null || val.isEmpty) {
                                return '';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                      //MessageBox
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                              child: richText(label: 'Your Message'),
                            ),
                          ),
                          CustomeTextFormField(
                            horizontalMergin: 0.03,
                            hintText: 'Message Here',
                            maxLines: 5,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                        child: Text(
                          "GDPR Agreement",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      //switch
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: sizeWidth(context) * 0.04),
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
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: SizedBox(
                                width: sizeWidth(context) * 0.7,
                                child: Text(
                                  'I consent to having this website store my submitted information',
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 20.0,
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
                            'SUBMIT NOW',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: primaryColor,
                            textStyle: TextStyle(
                              fontSize: 16,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget richText({String? label}) {
    return RichText(
      text: TextSpan(
          text: label,
          style: TextStyle(color: Colors.black, fontSize: 18),
          children: const [
            TextSpan(
              text: '*',
              style: TextStyle(color: Colors.red, fontSize: 18),
            ),
          ]),
    );
  }
}
