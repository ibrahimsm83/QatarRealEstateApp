import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';

import 'package:bonyanaldoha/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AddNewAgentPage extends StatefulWidget {
  const AddNewAgentPage({Key? key}) : super(key: key);

  @override
  _AddNewAgentPageState createState() => _AddNewAgentPageState();
}

class _AddNewAgentPageState extends State<AddNewAgentPage> {
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: appbar(
          backgroundColor: lightGreyColor,
          abtitle: "Add New Agent",
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => NotificationPg())),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: lightGreyColor,
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
                            fontWeight: FontWeight.bold, fontSize: 16.sp),
                      ),
                    ),
                    SizedBox(height: 5),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Agency",
                        style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                      ),
                    ),
                    SizedBox(height: 3.h),
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Add New Agent',
                    style:
                        TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: sizeWidth(context) * 0.06, vertical: 8.0),
                    child: Text(
                      "User Name",
                      style: TextStyle(fontSize: 12.sp),
                    ),
                  ),

                  CustomeTextFormField(
                    hintText: 'agent123',
                    validator: (String? val) {
                      if (val == null || val.isEmpty) {
                        return '';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 5.0),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: sizeWidth(context) * 0.06, vertical: 8.0),
                    child: Text(
                      "Email",
                      style: TextStyle(fontSize: 12.sp),
                    ),
                  ),
                  //Email name
                  CustomeTextFormField(
                    hintText: 'Enter Email Address',
                    validator: (String? val) {
                      if (val == null || val.isEmpty) {
                        return '';
                      }
                      return null;
                    },
                  ),

                  SizedBox(height: 5.0),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: sizeWidth(context) * 0.06, vertical: 8.0),
                    child: Text(
                      "First Name",
                      style: TextStyle(fontSize: 12.sp),
                    ),
                  ),
                  //Email name
                  CustomeTextFormField(
                    hintText: 'Enter First Name',
                    validator: (String? val) {
                      if (val == null || val.isEmpty) {
                        return '';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 5.0),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: sizeWidth(context) * 0.06, vertical: 8.0),
                    child: Text(
                      "Last Name",
                      style: TextStyle(fontSize: 12.sp),
                    ),
                  ),
                  //Email name
                  CustomeTextFormField(
                    hintText: 'Enter Last Name',
                    validator: (String? val) {
                      if (val == null || val.isEmpty) {
                        return '';
                      }
                      return null;
                    },
                  ),

                  SizedBox(height: 5.0),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: sizeWidth(context) * 0.06, vertical: 8.0),
                    child: Text(
                      "Password",
                      style: TextStyle(fontSize: 12.sp),
                    ),
                  ),
                  CustomeTextFormField(
                    obscureText: true,
                    hintText: 'Enter Password',
                    validator: (String? val) {
                      if (val == null || val.isEmpty) {
                        return '';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: sizeWidth(context) * 0.04),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40.0,
                          width: 40.0,
                          child: Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: rememberMe,
                            activeColor: primaryColor,
                            onChanged: (value) => setState(
                              () => rememberMe = value!,
                            ),
                          ),
                        ),
                        Text(
                          'Send the new User an email about their account.',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),

                  Container(
                    width: sizeWidth(context),
                    margin: EdgeInsets.symmetric(
                        horizontal: sizeWidth(context) * 0.06),
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: ElevatedButton(
                      child: Text(
                        'SAVE',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        textStyle: TextStyle(
                          fontSize: 14,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3.h),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget? appbar(
      {Function()? onTap, String? abtitle, Color? backgroundColor}) {
    return AppBar(
      titleSpacing: 0,
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor,
      // Colors.white,
      elevation: 1.0,
      title: Text(
        abtitle!,
        style: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      leading: InkWell(
        onTap: () => Navigator.pop(context),
        child: Icon(
          Icons.arrow_back,
          color: primaryColor,
          size: 28.0,
        ),
      ),
      actions: [
        SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
          child: Container(
            width: 50,
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              border: Border.all(color: primaryColor),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Center(
              child: Text(
                "Add",
                style: TextStyle(
                    fontSize: 12,
                    color: primaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: SizedBox(
                height: 25,
                width: 25,
                child: Image.asset('assets/icons/notification.png',
                    color: primaryColor)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Container(
            // height: 30,
            width: 40,
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage('assets/images/profile.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
