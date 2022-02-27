import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:bonyanaldoha/utils/index_utils.dart';
import 'package:bonyanaldoha/widgets/simple_appbar.dart';
import 'package:bonyanaldoha/screens/index_screens.dart';

class InquiriePage extends StatefulWidget {
  const InquiriePage({Key? key}) : super(key: key);

  @override
  _InquiriePageState createState() => _InquiriePageState();
}

class _InquiriePageState extends State<InquiriePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        onTapLeading: () => Navigator.pop(context),
        backgroundColor: whiteColor,
        abtitle: constanText['inquiries'],
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
                  Flexible(
                    child: Text(
                      constanText['inquiries'],
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Flexible(
                    child: SizedBox(
                      //  width: sizeWidth(context) * 0.4,
                      height: 40,
                      child: ElevatedButton(
                        child: Text(
                          constanText['addNewInquiry'],
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
                                      AddNewInquiries()));
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
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    constanText['dontHaveAnyInquiriesAtThisMoment'],
                    style: TextStyle(color: Colors.grey[700], fontSize: 12.sp),
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
