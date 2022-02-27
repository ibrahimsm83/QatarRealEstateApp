import 'package:bonyanaldoha/screens/activity_screen.dart';
import 'package:bonyanaldoha/screens/add_new_deal_screen.dart';
import 'package:bonyanaldoha/screens/leads_screen.dart';
import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/utils/index_utils.dart';
import 'package:bonyanaldoha/widgets/simple_appbar.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'inquiries_screen.dart';

class BoardPage extends StatefulWidget {
  const BoardPage({Key? key}) : super(key: key);
  @override
  _BoardPageState createState() => _BoardPageState();
}

class _BoardPageState extends State<BoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        onTapLeading: () => Navigator.pop(context),
        backgroundColor: whiteColor,
        abtitle: "Board",
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => NotificationPg())),
      ),
      body: Column(
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
          SizedBox(
            height: 10,
          ),
          settingList(
            // Activities
            iconpath: "$iconpath/Activities.svg",
            title: "Activity",
            subtitle: "View Your Activity",
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => ActivityPage())),
          ),
          SizedBox(
            height: 10,
          ),
          settingList(
            iconpath: "$iconpath/Deals.svg",
            title: "Deals",
            subtitle: "View Your Deals",
            //AddNewDeal
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => AddNewDeal())),
          ),
          SizedBox(
            height: 10,
          ),
          settingList(
            //LeadsPage
            iconpath: "$iconpath/Leads.svg",
            title: "Leads",
            subtitle: "View Your Leads",
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => LeadsPage())),
          ),
          SizedBox(
            height: 10,
          ),
          //InquiriePage
          settingList(
            iconpath: "$iconpath/Inquries.svg",
            title: "Inquiries",
            subtitle: "View Your Inquiries",
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => InquiriePage())),
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
