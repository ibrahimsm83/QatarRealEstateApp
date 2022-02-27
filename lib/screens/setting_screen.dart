import 'package:bonyanaldoha/screens/change_password.dart';
import 'package:bonyanaldoha/screens/my_profile_screen.dart';
import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/utils/index_utils.dart';
import 'package:bonyanaldoha/widgets/simple_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'account_role.dart';
import 'delete_account_screen.dart';

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
            iconpath: "$iconpath/My Profile.svg",
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
            iconpath: "$iconpath/Account Role.svg",
            title: "Account Role",
            subtitle: "Edit  You Account Role ",
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => AccountRolePage())),
          ),
          SizedBox(
            height: 10,
          ),
          settingList(
            iconpath: "$iconpath/Change Password.svg",
            title: "Change Password",
            subtitle: "Change Your Password",
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => ChangePasswordPage())),
          ),
          SizedBox(height: 10),
          settingList(
            iconpath: "$iconpath/Delete Account.svg",
            title: "Delete Account",
            subtitle: "Delete Your Account",
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => DeleteAccountPage())),
          ),
        ],
      ),
    );
  }

  Widget settingList({
    String? title,
    String? subtitle,
    dynamic iconpath,
    void Function()? onTap,
  }) {
    return Container(
      color: Colors.brown[50],
      //padding: EdgeInsets.all(20),
      child: ListTile(
        onTap: onTap,
        leading: SvgPicture.asset(
          iconpath,
          color: primaryColor,
          height: 40,
          width: 40,
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
