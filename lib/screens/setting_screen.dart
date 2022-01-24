import 'package:bonyanaldoha/screens/my_profile_screen.dart';
import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:bonyanaldoha/widgets/simple_appbar.dart';
import 'package:flutter/material.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:sizer/sizer.dart';

class SettingsPg extends StatefulWidget {
  const SettingsPg({Key? key}) : super(key: key);

  @override
  _SettingsPgState createState() => _SettingsPgState();
}

class _SettingsPgState extends State<SettingsPg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        onTapLeading: () => Navigator.pop(context),
        backgroundColor: whiteColor,
        abtitle: "Settings",
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => NotificationPg())),
      ),
      body: Column(
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
          SizedBox(
            height: 10,
          ),
          settingList(
            icon: Icons.person_rounded,
            title: "My Profile",
            subtitle: "Edit  You Account Details",
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => Myprofile())),
          ),
          SizedBox(
            height: 10,
          ),
          settingList(
              icon: Icons.person_rounded,
              title: "Account Role",
              subtitle: "Edit  You Account Role ",
              onTap: () {
                print("print");
              }),
          SizedBox(
            height: 10,
          ),
          settingList(
              icon: Icons.password_rounded,
              title: "Change Password",
              subtitle: "Change Your Password",
              onTap: () {
                print("print");
              }),
          SizedBox(
            height: 10,
          ),
          settingList(
              icon: Icons.person_off_outlined,
              title: "Delecte Account",
              subtitle: "Delecte Your Account",
              onTap: () {
                print("print");
              }),
        ],
      ),
    );
  }

  Widget settingList({
    String? title,
    String? subtitle,
    IconData? icon,
    void Function()? onTap,
  }) {
    return Container(
      color: Colors.brown[50],
      //padding: EdgeInsets.all(20),
      child: ListTile(
        onTap: onTap,
        leading: Icon(
          icon,
          size: 50,
          color: primaryColor,
        ),
        title: Text(
          title!,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subtitle!,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
