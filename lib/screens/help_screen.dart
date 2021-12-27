import 'package:bonyanaldoha/model/drawer_list_model.dart';
import 'package:bonyanaldoha/screens/about_screen.dart';
import 'package:bonyanaldoha/screens/blog_screen.dart';
import 'package:bonyanaldoha/screens/compare_screen.dart';
import 'package:bonyanaldoha/screens/contact_us_screen.dart';

import 'package:bonyanaldoha/screens/favorite_screen.dart';
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
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HelpPg extends StatefulWidget {
  const HelpPg({Key? key}) : super(key: key);

  @override
  State<HelpPg> createState() => _HelpPgState();
}

class _HelpPgState extends State<HelpPg> {
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
            abtitle: "Help",
            imageno: 7,
            showPreferedSize: true,
            apbarheight: 200,
            abCtitle: "Help & Support",
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
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Help & Support ",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    ''' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.''',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black45,
                      //fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '''Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.''',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black45,
                    ),
                  ),
                ),
                SizedBox(
                  height: sizeheight(context) * 0.08,
                ),
                Container(
                  width: sizeWidth(context) * 0.5,
                  margin: EdgeInsets.symmetric(
                      horizontal: sizeWidth(context) * 0.06),
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  child: ElevatedButton(
                    child: Text(
                      'LOGIN - REGISTER',
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
              ],
            ),
          ),
        ),
      ),
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
