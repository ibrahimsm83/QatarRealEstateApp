import 'package:bonyanaldoha/screens/checkout_screen.dart';
import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/widgets/simple_appbar.dart';
import 'package:flutter/material.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:sizer/sizer.dart';

class MemberShipPage extends StatefulWidget {
  const MemberShipPage({Key? key}) : super(key: key);

  @override
  _MemberShipPageState createState() => _MemberShipPageState();
}

class _MemberShipPageState extends State<MemberShipPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: SimpleAppBar(
              onTapLeading: () => Navigator.pop(context),
              backgroundColor: whiteColor,
              abtitle: "Membership",
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => NotificationPg())),
            ),
            body: Container(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MembershipRow(
                              type: "FREE TRAIL",
                              days: "7 days",
                              price: 0.000,
                              properties: "2",
                              featureList: 1),
                          MembershipRow(
                              type: "PLUS",
                              days: "1 Month",
                              price: 100,
                              properties: "5",
                              featureList: 1),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MembershipRow(
                              type: "PREMIUM",
                              days: "1 Month",
                              price: 200,
                              properties: "25",
                              featureList: 1),
                          MembershipRow(
                              type: "GOLD",
                              days: "1 Month",
                              price: 500,
                              properties: "Unlimited",
                              featureList: 10),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }

  Widget MembershipRow({
    String? type,
    String? days,
    num? price,
    String? properties,
    num? featureList,
  }) {
    return Container(
      width: 44.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 1.5.h),
            Text(
              type!,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11.sp),
            ),
            SizedBox(height: 1.h),
            SizedBox(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "QR",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 9.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 2.0,
                  ),
                  Text(
                    price!.toString(),
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.h),
            Row(
              children: [
                bullet(),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  days!,
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h),
            Row(
              children: [
                bullet(),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  "Properties: ",
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  properties!.toString(),
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h),
            Row(
              children: [
                bullet(),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  "Featured Listings:",
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  featureList!.toString(),
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Checkoutpage())),
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: primaryColor,
                  ),
                  height: 4.h,
                  child: Center(
                    child: Text(
                      'GET STARTED',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h),
          ],
        ),
      ),
    );
  }

/*  AcceptanceOfTerms(
                        text: 'Nisi ut aliquip ex ea commodo consequat,'), */
  Widget bullet() {
    return Container(
      height: 2.0.h,
      width: 2.0.w,
      decoration: BoxDecoration(
        color: primaryColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
