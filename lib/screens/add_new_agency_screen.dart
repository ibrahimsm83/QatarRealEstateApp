import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:bonyanaldoha/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AddNewAgencypage extends StatefulWidget {
  const AddNewAgencypage({Key? key}) : super(key: key);
  @override
  _AddNewAgencypageState createState() => _AddNewAgencypageState();
}

class _AddNewAgencypageState extends State<AddNewAgencypage> {
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar(
          backgroundColor: whiteColor,
          abtitle: "Agencies",
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => NotificationPg())),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 1.h),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                      child: Text(
                        "Add New Agency",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    //Phone Number
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                            child:
                                headingText(heading: 'Company Name'),
                          ),
                        ),
                        CustomeTextFormField(
                          horizontalMergin: 0.03,
                          hintText: 'Enter Company Title',
                          validator: (String? val) {
                            if (val == null || val.isEmpty) {
                              return '';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                            child: headingText(heading: 'First Name'),
                          ),
                        ),
                        CustomeTextFormField(
                          horizontalMergin: 0.03,
                          hintText: 'Enter First Name',
                          validator: (String? val) {
                            if (val == null || val.isEmpty) {
                              return '';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    //Last Name
                    SizedBox(height: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                            child: headingText(heading: 'Last Name'),
                          ),
                        ),
                        CustomeTextFormField(
                          horizontalMergin: 0.03,
                          hintText: 'Enter Last Name',
                          validator: (String? val) {
                            if (val == null || val.isEmpty) {
                              return '';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                            child: headingText(heading: 'Email'),
                          ),
                        ),
                        CustomeTextFormField(
                          horizontalMergin: 0.03,
                          hintText: 'Enter Email Address',
                          validator: (String? val) {
                            if (val == null || val.isEmpty) {
                              return '';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),

                    SizedBox(height: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                            child: headingText(heading: 'Phone Number'),
                          ),
                        ),
                        CustomeTextFormField(
                          horizontalMergin: 0.03,
                          hintText: 'Enter Phone Number',
                          validator: (String? val) {
                            if (val == null || val.isEmpty) {
                              return '';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                      child: Text(
                        "Address",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                            child: headingText(heading: 'Address'),
                          ),
                        ),
                        CustomeTextFormField(
                          horizontalMergin: 0.03,
                          hintText: 'Enter Your Address',
                          validator: (String? val) {
                            if (val == null || val.isEmpty) {
                              return '';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),

                    //FirstName
                  ],
                ),
                //Email
                Column(
                  children: [
                    SizedBox(height: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                            child: richText(label: 'Country / Region'),
                          ),
                        ),
                        CustomeTextFormField(
                          horizontalMergin: 0.03,
                          hintText: 'Country / Region',
                          validator: (String? val) {
                            if (val == null || val.isEmpty) {
                              return '';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                            child: richText(label: 'Street Address'),
                          ),
                        ),
                        CustomeTextFormField(
                          horizontalMergin: 0.03,
                          hintText: 'Street Address',
                          validator: (String? val) {
                            if (val == null || val.isEmpty) {
                              return '';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                            child: richText(label: 'State / Country'),
                          ),
                        ),
                        CustomeTextFormField(
                          horizontalMergin: 0.03,
                          hintText: 'State / Country',
                          validator: (String? val) {
                            if (val == null || val.isEmpty) {
                              return '';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),

                    //-------------------------------town postcode

                    // //FirstName
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding:
                                      EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                                  child: richText(label: 'Town / City'),
                                ),
                                rowTextFiled(hinttext: "Town / City"),
                              ],
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding:
                                      EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                                  child: richText(label: 'Postcode / ZIP'),
                                ),
                                rowTextFiled(hinttext: "Postcode / ZIP"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //   ],
                    // ),
                    SizedBox(width: 10.0),
                    //-------------------------------end town postcode

                    //MessageBox
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 1.h),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 0.0),
                          child: Text(
                            "Socila Media",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                                child: headingText(heading: 'Facebook'),
                              ),
                            ),
                            CustomeTextFormField(
                              horizontalMergin: 0.03,
                              hintText: 'Enter the Facebook URL',
                              validator: (String? val) {
                                if (val == null || val.isEmpty) {
                                  return '';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                                child: headingText(heading: 'Twitter '),
                              ),
                            ),
                            CustomeTextFormField(
                              horizontalMergin: 0.03,
                              hintText: 'Enter the Twitter URL',
                              validator: (String? val) {
                                if (val == null || val.isEmpty) {
                                  return '';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                                child: headingText(heading: 'Linkedin'),
                              ),
                            ),
                            CustomeTextFormField(
                              horizontalMergin: 0.03,
                              hintText: 'Enter the Linkedin URL',
                              validator: (String? val) {
                                if (val == null || val.isEmpty) {
                                  return '';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                              padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                              child: Text(
                                "Private Message",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        CustomeTextFormField(
                          horizontalMergin: 0.03,
                          hintText: 'Enter the Message',
                          maxLines: 5,
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h),

                    SizedBox(
                      height: 20.0,
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
                          'Save',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: primaryColor,
                          textStyle: TextStyle(
                            fontSize: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget richText({String? label}) {
    return RichText(
      text: TextSpan(
          text: label,
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          children: const [
            TextSpan(
              text: '*',
              style: TextStyle(color: Colors.red, fontSize: 18),
            ),
          ]),
    );
  }

  Widget rowTextFiled({String? hinttext}) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hinttext!, //"Town / City",
        contentPadding: EdgeInsets.fromLTRB(14, 14.0, 0, 14.0),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: primaryColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: primaryColor)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: errorColor)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: errorColor)),
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

  Widget headingText({String? heading}) {
    return Text(
      heading!,
      style: TextStyle(
          color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
    );
  }
}
