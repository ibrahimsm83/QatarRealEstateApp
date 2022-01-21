import 'package:bonyanaldoha/model/drawer_list_model.dart';
import 'package:bonyanaldoha/screens/about_screen.dart';
import 'package:bonyanaldoha/screens/blog_screen.dart';
import 'package:bonyanaldoha/screens/compare_screen.dart';
import 'package:bonyanaldoha/screens/contact_us_screen.dart';
import 'package:bonyanaldoha/screens/favorite_screen.dart';
import 'package:bonyanaldoha/screens/help_screen.dart';
import 'package:bonyanaldoha/screens/home_screen.dart';
import 'package:bonyanaldoha/screens/list_a_property_screen.dart';
import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/screens/membership_screen.dart';
import 'package:bonyanaldoha/screens/setting_screen.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:bonyanaldoha/widgets/custom_drawer.dart';
import 'package:bonyanaldoha/widgets/custome_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TermOfUsePg extends StatefulWidget {
  const TermOfUsePg({Key? key}) : super(key: key);

  @override
  State<TermOfUsePg> createState() => _TermOfUsePgState();
}

class _TermOfUsePgState extends State<TermOfUsePg> {
  String apptitle = 'Home';
  int _currentSelected = 0;
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          appBar: CustomAppBar(
            abtitle: "Term Of Use",
            imageno: 4,
            showPreferedSize: true,
            apbarheight: 200,
            abCtitle: "Term Of Use",
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
          body: SingleChildScrollView(
            child: Container(
              height: sizeheight(context),
              width: sizeWidth(context),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Term Of Use ",
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
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black45,
                          //fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '''Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.''',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black45,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: sizeheight(context) * 0.01,
                    ),
                    Text(
                      "Acceptance Of Terms ",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.0),
                    AcceptanceOfTerms(text: 'Lorem ipsum dolor sit amet,'),
                    SizedBox(height: 10.0),
                    AcceptanceOfTerms(
                        text: 'Consectetur adipiscing elit sed do eiusmod,'),
                    SizedBox(height: 10.0),
                    AcceptanceOfTerms(
                        text: 'Tempor incididunt ut labore et dolore,'),
                    SizedBox(height: 10.0),
                    //   nisi ut aliquip ex ea commodo consequat.
                    AcceptanceOfTerms(
                        text: 'Magna aliqua. Ut enim ad minim veniam,'),
                    SizedBox(height: 10.0),
                    AcceptanceOfTerms(
                        text: 'Quis nostrud exercitation ullamco laboris,'),
                    SizedBox(height: 10.0),
                    AcceptanceOfTerms(
                        text: 'Nisi ut aliquip ex ea commodo consequat,'),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      ''' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.''',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget AcceptanceOfTerms({String? text}) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: primaryColor,
              //borderRadius: BorderRadius.circular(5.0),
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            text!,
            //"Lorem ipsum dolor sit amet, ",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black45,
            ),
          ),
        ],
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
                    builder: (BuildContext context) => MemberShipPage()));
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
