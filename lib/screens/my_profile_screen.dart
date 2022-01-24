import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:bonyanaldoha/widgets/simple_appbar.dart';
import 'package:bonyanaldoha/widgets/text_form_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({Key? key}) : super(key: key);

  @override
  _MyprofileState createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        onTapLeading: () => Navigator.pop(context),
        backgroundColor: whiteColor,
        abtitle: "My Profile",
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
                  Container(
                    // color: lightGreyColor,
                    color: Colors.brown[50],
                    //height: 25.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(height: 3.h),
                        Container(
                          height: 12.h,
                          width: 12.w,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('$imgpath/profile.jpg'),
                                fit: BoxFit.contain,
                              ),
                              color: Color(0xffd8b476),
                              // color: primaryColor,
                              shape: BoxShape.circle),
                        ),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "John Smith ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14.sp),
                          ),
                        ),
                        SizedBox(height: 5),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Agency",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 12.sp),
                          ),
                        ),
                        SizedBox(height: 3.h),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                    child: Text(
                      "Information",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.fromLTRB(12.0, 12.0, 0, 8.0),
                    child: headingText(heading: 'Your Name'),
                  ),
                  //FirstName
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: Container(
                            child: rowTextFiled(hinttext: "AgentF"),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Flexible(
                          child: Container(
                            child: rowTextFiled(hinttext: "AgentL"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //Email
              Column(
                children: [
                  SizedBox(height: 10.0),
                  //Phone Number
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: headingText(heading: 'Username'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'agent123',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child:
                              headingText(heading: 'Select Your Public Name'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Agent123',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: headingText(heading: 'Title / Position'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Enter Title / Position',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: headingText(heading: 'License'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Enter Lisence',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: headingText(heading: 'Mobile'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: '123 456 7890',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: headingText(heading: 'Whatsapp'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Enter Whatsapp Number & Code',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),

                  //-------------------------------phone
                  SizedBox(height: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: headingText(heading: 'Tax Number'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Enter Tax Number',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),

                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: headingText(heading: 'Phone'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Enter Phone Number',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: headingText(heading: 'Fax Number'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Enter Fax Number',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: headingText(heading: 'Language'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Enter Language',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: headingText(heading: 'Company Name'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Enter Company Name',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: headingText(heading: 'Address'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Enter your Address',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: headingText(heading: 'Service Area'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Enter Service Areas',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),

                  SizedBox(height: 10.0),
                  //Phone Number
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: headingText(heading: 'Specialties'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Enter Specialties',
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
                      SizedBox(height: 1.h),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: headingText(heading: 'About Me'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        //hintText: 'Note about your order e.g',
                        maxLines: 5,
                      ),
                    ],
                  ),
                   SizedBox(height: 20.0),
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
                        'UPDATE PROFILE',
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
                  SizedBox(height: 20.0),
                  // SizedBox(height: 1.h),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 0.0),
                      child: Text(
                        " Social Media",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: headingText(heading: 'Facebook'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Enter the Facebook URL',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: headingText(heading: 'Twitter'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Enter the Twitter URL',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: headingText(heading: 'Linkedin'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Enter the Linkedin URL',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: headingText(heading: 'Instagram'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Enter the Instagram URL',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: headingText(heading: 'Google Plus'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Enter the Facebook URL',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: headingText(heading: 'Google Plus'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Enter the Facebook URL',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: headingText(heading: 'Youtube'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Enter the Youtube URL',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: headingText(heading: 'Pinterest'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Enter the Pinterest URL',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: headingText(heading: 'Vimeo'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Enter the Vimeo URL',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: headingText(heading: 'Skype'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Enter the Skype URL',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: headingText(heading: 'Website'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Enter the Website URL',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
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
                        'UPDATE PROFILE',
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
                  SizedBox(height: 20.0),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    // );
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

  Widget headingText({String? heading}) {
    return Text(
      heading!,
      style: TextStyle(color: Colors.black, fontSize: 18),
    );
  }

  Widget rowTextFiled({String? hinttext}) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hinttext!, //"Town / City",
        contentPadding: EdgeInsets.fromLTRB(14, 14.0, 0, 14.0),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: primaryColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: primaryColor)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: errorColor)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: errorColor)),
      ),
    );
  }

  PreferredSizeWidget? appbar(
      {Function()? onTap, String? abtitle, Color? backgroundColor}) {
    return AppBar(
      titleSpacing: 0,
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor,
      // Colors.white,
      elevation: 1.0,
      title: Text(
        abtitle!,
        style: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      leading: InkWell(
        onTap: () => Navigator.pop(context),
        child: Icon(
          Icons.arrow_back,
          color: primaryColor,
          size: 28.0,
        ),
      ),
      actions: [
        SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
          child: Container(
            width: 50,
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              border: Border.all(color: primaryColor),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Center(
              child: Text(
                "Add",
                style: TextStyle(
                    fontSize: 12,
                    color: primaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: SizedBox(
                height: 25,
                width: 25,
                child: Image.asset('assets/icons/notification.png',
                    color: primaryColor)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Container(
            // height: 30,
            width: 40,
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage('assets/images/profile.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
