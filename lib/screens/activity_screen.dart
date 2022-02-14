import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:bonyanaldoha/widgets/custome_dropdown_button.dart';
import 'package:bonyanaldoha/widgets/linechartbox.dart';
import 'package:bonyanaldoha/widgets/simple_appbar.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  final items1 = ['Select', 'activity 1', 'activity 2'];
  String val1 = 'Select';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        onTapLeading: () => Navigator.pop(context),
        backgroundColor: whiteColor,
        abtitle: "Activity",
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => NotificationPg())),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 2.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: sizeWidth(context) * 0.06),
                  child: Text(
                    constanText['filterbylisting'],
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
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
              ],
            ),
            SizedBox(height: 1.h),
            SizedBox(
              width: sizeWidth(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: sizeWidth(context) * 0.04,
                      top: 10.0,
                    ),
                    child: Text(
                      "Views",
                      //constanText['filterbylisting'],
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: viewRow(
                              value: 0, subvalue: "0%", time: "Last 24 Hours")),
                      Expanded(
                          child: viewRow(
                              value: 0, subvalue: "0%", time: "Last 7 Days")),
                      Expanded(
                          child: viewRow(
                              value: 0, subvalue: "0%", time: "Last 30 Days")),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.h),
            SizedBox(
              width: sizeWidth(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: sizeWidth(context) * 0.04,
                    ),
                    child: Text(
                      "Unique Views",
                      //constanText['filterbylisting'],
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: viewRow(
                              value: 0, subvalue: "0%", time: "Last 24 Hours")),
                      Expanded(
                          child: viewRow(
                              value: 0, subvalue: "0%", time: "Last 7 Days")),
                      Expanded(
                          child: viewRow(
                              value: 0, subvalue: "0%", time: "Last 30 Days")),
                    ],
                  ),
                ],
              ),
            ),
            /* ---------------------------------------Graph-------------------------------------------- */
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 2.0,
                child: Column(
                  children: [
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Visits",
                          //constanText['filterbylisting'],
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 2.w),
                        Text(
                          "Last 24 Hours",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                        Text(
                          "Last 7 Days",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                        Text(
                          "Last 7 Days",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: LineChartBox(
                          spotsl: const [
                            FlSpot(0, 3),
                            FlSpot(2.6, 2),
                            FlSpot(4.9, 5),
                            FlSpot(6.8, 3.1),
                            FlSpot(8, 4),
                            FlSpot(9.5, 3),
                            FlSpot(11, 4),
                            FlSpot(12, 5),
                            FlSpot(13, 6),
                          ],
                          //  ytitles: _x,
                          // xtitles: _y,
                          // flcolor: [widget.color],
                          // color: [widget.color.withOpacity(.2)],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            categoryRow(
                iconPath1: "$iconpath/Devices.svg",
                title1: "Devices",
                iconPath2: "$iconpath/top-countries.svg",
                title2: "Top Countries"),
            categoryRow(
                iconPath1: "$iconpath/top-platform.svg",
                title1: "Top Platforms",
                iconPath2: "$iconpath/top-browesers.svg",
                title2: "Top Browsers"),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors
                              .grey.shade200 //Color(0xfff6f6f6) lightGreyColor,
                          ),
                      //width: 30.w,
                      padding:
                          EdgeInsets.symmetric(horizontal: 2.w, vertical: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "$iconpath/Referrals.svg",
                            color: primaryColor,
                            height: 50,
                            width: 50,
                          ),
                          Text(
                            "Referrals",
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Expanded(
                    child: Container(
                      height: 130,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget categoryRow(
      {String? iconPath1, String? title1, String? iconPath2, String? title2}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              height: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color:
                      Colors.grey.shade200 //Color(0xfff6f6f6) lightGreyColor,
                  ),
              //width: 30.w,
              padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    iconPath1!,
                    // "$iconpath/Referrals.svg",
                    color: primaryColor,
                    height: 50,
                    width: 50,
                  ),
                  Text(
                    title1!,
                    //"Referrals",
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 5.w),
          Expanded(
            child: Container(
              height: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color:
                      Colors.grey.shade200 //Color(0xfff6f6f6) lightGreyColor,
                  ),
              //width: 30.w,
              padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    iconPath2!,
                    color: primaryColor,
                    height: 50,
                    width: 50,
                  ),
                  Text(
                    title2!,
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget viewRow({int? value, String? subvalue, String? time}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.5.w, vertical: 2.h),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.grey.shade200 //Color(0xfff6f6f6) lightGreyColor,
            ),
        //width: 30.w,
        padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 8.0),
        child: Column(
          children: [
            Text(
              value!.toString(),
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              subvalue!,
              style: TextStyle(
                  fontSize: 16,
                  color: primaryColor,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              time!,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
