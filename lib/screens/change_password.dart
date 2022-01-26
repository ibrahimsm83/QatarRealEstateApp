import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:bonyanaldoha/widgets/button.dart';

import 'package:bonyanaldoha/widgets/simple_appbar.dart';
import 'package:bonyanaldoha/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        onTapLeading: () => Navigator.pop(context),
        backgroundColor: whiteColor,
        abtitle: constanText['changePassword'],
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => NotificationPg())),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.brown[50],
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
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
                  ),
                ),
                SizedBox(height: 5),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Agency",
                    style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                  ),
                ),
                SizedBox(height: 3.h),
              ],
            ),
          ),
          SizedBox(height: 5.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  constanText['changePassword'],
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 3.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                        child: headingText(heading: 'New Password'),
                      ),
                    ),
                    CustomeTextFormField(
                      horizontalMergin: 0.03,
                      hintText: 'Enter New Password',
                      validator: (String? val) {
                        if (val == null || val.isEmpty) {
                          return '';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
                SizedBox(height: 3.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                        child: headingText(heading: 'Confirm Password'),
                      ),
                    ),
                    CustomeTextFormField(
                      horizontalMergin: 0.03,
                      hintText: 'Enter Confirm Password',
                      validator: (String? val) {
                        if (val == null || val.isEmpty) {
                          return '';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 4.h),
          AppButton(
            buttonText: constanText['updatedPassword'],
            fontSize: 14,
          ),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }

  Widget headingText({String? heading}) {
    return Text(
      heading!,
      style: TextStyle(color: Colors.black, fontSize: 18),
    );
  }
}
