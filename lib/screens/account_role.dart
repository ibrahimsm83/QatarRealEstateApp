import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:bonyanaldoha/utils/index_utils.dart';
import 'package:bonyanaldoha/widgets/index_widgets.dart';
import 'package:bonyanaldoha/screens/index_screens.dart';

class AccountRolePage extends StatefulWidget {
  const AccountRolePage({Key? key}) : super(key: key);

  @override
  State<AccountRolePage> createState() => _AccountRolePageState();
}

class _AccountRolePageState extends State<AccountRolePage> {
  final items1 = [
    'Agent',
    'Agent2',
    'Agent3',
  ];
  String val1 = 'Agent';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        onTapLeading: () => Navigator.pop(context),
        backgroundColor: whiteColor,
        abtitle: constanText['accountRole'],
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: sizeWidth(context) * 0.06),
                child: Text(
                  constanText['accountRole'],
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 3.h),
              CustomeDropDownButton(
                  label: constanText['accountRole'],
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  value: val1,
                  itemList: items1,
                  onChanged: (String? value) {
                    return setState(
                      () => val1 = value!,
                    );
                  }),
              SizedBox(height: 3.h),
              AppButton(
                buttonText: constanText['updatedAccount'],
                fontSize: 14,
              )
            ],
          ),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
