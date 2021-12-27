import 'package:bonyanaldoha/model/drawer_list_model.dart';
import 'package:bonyanaldoha/screens/about_screen.dart';
import 'package:bonyanaldoha/screens/blog_screen.dart';
import 'package:bonyanaldoha/screens/compare_screen.dart';
import 'package:bonyanaldoha/screens/favorite_screen.dart';
import 'package:bonyanaldoha/screens/help_screen.dart';
import 'package:bonyanaldoha/screens/home_screen.dart';
import 'package:bonyanaldoha/screens/list_a_property_screen.dart';
import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/screens/package_screen.dart';
import 'package:bonyanaldoha/screens/setting_screen.dart';
import 'package:bonyanaldoha/screens/term_of_use_screen.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:bonyanaldoha/widgets/custom_drawer.dart';
import 'package:bonyanaldoha/widgets/custome_appbar.dart';
import 'package:bonyanaldoha/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactUsPg extends StatefulWidget {
  const ContactUsPg({Key? key}) : super(key: key);

  @override
  State<ContactUsPg> createState() => _ContactUsPgState();
}

class _ContactUsPgState extends State<ContactUsPg> {
  bool rememberMe = false;
  String apptitle = 'Home';
  int _currentSelected = 0;
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  // var currentPage = DrawerSections.home;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          appBar: CustomAppBar(
            abtitle: "Contact Us",
            imageno: 2,
            showPreferedSize: true,
            apbarheight: 200,
            abCtitle: "Contact Us",
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => NotificationPg()));
            },
          ),
          drawer: CustomeDrower(
            drawerlist: DrawerList(),
          ),
          body: Container(
            height: sizeheight(context),
            width: sizeWidth(context),
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                    child: Text(
                      "Send Message",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                    child: richText(label: 'Your Name'),
                  ),
                  //FirstName
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: sizeWidth(context) * 0.42,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "First Name",
                                contentPadding:
                                    EdgeInsets.fromLTRB(14, 14.0, 0, 14.0),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide:
                                        BorderSide(color: primaryColor)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide:
                                        BorderSide(color: primaryColor)),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: errorColor)),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: errorColor)),
                              ),
                            ),
                          ),
                          Container(
                            width: sizeWidth(context) * 0.42,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Last Name",
                                contentPadding:
                                    EdgeInsets.fromLTRB(14, 14.0, 0, 14.0),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide:
                                        BorderSide(color: primaryColor)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide:
                                        BorderSide(color: primaryColor)),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: errorColor)),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: errorColor)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //Email
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: richText(label: 'Email Address'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Email Address',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 10.0,
                  ),
                  //Phone Number
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: richText(label: 'Phone Number'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Phone Number',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  //MessageBox
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: richText(label: 'Your Message'),
                        ),
                      ),
                      CustomeTextFormField(
                        horizontalMergin: 0.03,
                        hintText: 'Message Here',
                        maxLines: 5,
                      ),
                      // CustomeTextFormField(
                      //   horizontalMergin: 0.03,
                      //   hintText: 'Phone Number',
                      //   validator: (String? val) {
                      //     if (val == null || val.isEmpty) {
                      //       return '';
                      //     }
                      //     return null;
                      //   },
                      // ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                    child: Text(
                      "GDPR Agreement",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  //switch
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
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            width: sizeWidth(context) * 0.7,
                            child: Text(
                              'I consent to having this website store my submitted information',
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

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
                        'SUBMIT NOW',
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
          style: TextStyle(color: Colors.black, fontSize: 18),
          children: const [
            TextSpan(
              text: '*',
              style: TextStyle(color: Colors.red, fontSize: 18),
            ),
          ]),
    );
  }

  Widget DrawerList() {
    return Container(
      child: Column(
        children: List.generate(
            drawerMenueList.length, (i) => drawerItem(drawerMenueList[i])),
      ),
    );
  }

  drawerItem(DrawerListModel dlm) {
    return InkWell(
      onTap: () {
        setState(() {
          if (dlm.id == 0) {
            apptitle = "Home";
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => HomeScreen()));
          } else if (dlm.id == 1) {
            apptitle = "Buy";
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => HomeScreen(
                          currrentid: 1,
                          title: "Buy",
                        )));
          } else if (dlm.id == 2) {
            apptitle = "Rent";
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => HomeScreen(
                          currrentid: 2,
                          title: "Rent",
                        )));
          } else if (dlm.id == 3) {
            apptitle = "Commercial";
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => HomeScreen(
                          currrentid: 3,
                          title: "Commercial",
                        )));
          } else if (dlm.id == 4) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => ListAPropertypg()));
          } else if (dlm.id == 5) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => Favoritiepg()));
          } else if (dlm.id == 6) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => ComparePg()));
          } else if (dlm.id == 7) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => Packagespg()));
          } else if (dlm.id == 8) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (BuildContext context) => BlogPg()));
          } else if (dlm.id == 9) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (BuildContext context) => HelpPg()));
          } else if (dlm.id == 10) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => AboutPg()));
          } else if (dlm.id == 11) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => SettingsPg()));
          } else if (dlm.id == 12) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => TermOfUsePg()));
          } else if (dlm.id == 13) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => ContactUsPg()));
          }
        });
        if (_scaffoldKey.currentState!.isDrawerOpen) {
          _scaffoldKey.currentState!.openEndDrawer();
        }
      },
      child: Column(
        children: [
          dlm.id == 0
              ? Divider(
                  color: dividerColor,
                )
              : SizedBox(),
          Container(
            height: 40,
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                SvgPicture.asset(
                  dlm.iconpath,
                  color: primaryColor,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  dlm.title,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
