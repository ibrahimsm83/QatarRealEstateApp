import 'package:bonyanaldoha/screens/add_new_leads_screen.dart';
import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/utils/index_utils.dart';
import 'package:bonyanaldoha/widgets/simple_appbar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LeadsPage extends StatefulWidget {
  const LeadsPage({Key? key}) : super(key: key);

  @override
  _LeadsPageState createState() => _LeadsPageState();
}

class _LeadsPageState extends State<LeadsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        onTapLeading: () => Navigator.pop(context),
        backgroundColor: whiteColor,
        abtitle: "Leads",
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => NotificationPg())),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
                        color: primaryColor,
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
                      style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                    ),
                  ),
                  SizedBox(height: 3.h),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Leads",
                    style:
                        TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: sizeWidth(context) * 0.4,
                    height: 40,
                    child: ElevatedButton(
                      child: Text(
                        'ADD NEW LEADS',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    AddNewLeads()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        textStyle: TextStyle(
                          fontSize: 13.sp,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //  Text(
            //     "You don't have any contact at this moment ",
            //     style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
            //   ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: sizeWidth(context) / 1.5,
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      text: "You don't have any contact at this moment. ",
                      // textAlign: TextAlign.justify,
                      style:
                          TextStyle(color: Colors.grey[700], fontSize: 13.sp),
                      children: <TextSpan>[
                        TextSpan(
                          text: ('Add New Lead'),
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (BuildContext context) =>
                              //             SignupScreen()));
                            },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
