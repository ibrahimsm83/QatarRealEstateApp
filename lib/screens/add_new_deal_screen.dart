import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/utils/index_utils.dart';
import 'package:bonyanaldoha/widgets/button.dart';
import 'package:bonyanaldoha/widgets/custome_dropdown_button.dart';
import 'package:bonyanaldoha/widgets/simple_appbar.dart';
import 'package:bonyanaldoha/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AddNewDeal extends StatefulWidget {
  const AddNewDeal({Key? key}) : super(key: key);

  @override
  State<AddNewDeal> createState() => _AddNewDealState();
}

class _AddNewDealState extends State<AddNewDeal> {
  final items1 = ['Select', 'Group 1', 'Group 2'];
  final items2 = ['Select', 'Group 1', 'Group 2'];

  String val1 = 'Select';
  String val2 = 'Select';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        onTapLeading: () => Navigator.pop(context),
        backgroundColor: whiteColor,
        abtitle: constanText['addNewDeal'],
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => NotificationPg())),
      ),
      body: SingleChildScrollView(
        child: Column(
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
            SizedBox(height: 4.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: sizeWidth(context) * 0.06),
                  child: Text(
                    constanText['addNewDeal'],
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 3.h),
                CustomeDropDownButton(
                    label: constanText['group'],
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    value: val1,
                    itemList: items1,
                    onChanged: (String? value) {
                      return setState(
                        () => val1 = value!,
                      );
                    }),
                SizedBox(height: 2.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: headingText(heading: constanText['title']),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Enter the Deal Title',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 3.h),
                CustomeDropDownButton(
                    label: constanText['contactName'],
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    value: val2,
                    itemList: items2,
                    onChanged: (String? value) {
                      return setState(
                        () => val2 = value!,
                      );
                    }),
                SizedBox(height: 2.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: headingText(heading: constanText['dealValue']),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Enter the Deal Title',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 3.h),
                AppButton(
                  buttonText: "Add",
                  fontSize: 16,
                )
              ],
            ),
            SizedBox(height: 3.h),
          ],
        ),
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
