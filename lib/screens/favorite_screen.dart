import 'package:bonyanaldoha/model/drawer_list_model.dart';
import 'package:bonyanaldoha/screens/about_screen.dart';
import 'package:bonyanaldoha/screens/blog_screen.dart';
import 'package:bonyanaldoha/screens/compare_screen.dart';
import 'package:bonyanaldoha/screens/contact_us_screen.dart';
import 'package:bonyanaldoha/screens/help_screen.dart';
import 'package:bonyanaldoha/screens/home_screen.dart';
import 'package:bonyanaldoha/screens/list_a_property_screen.dart';
import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/screens/membership_screen.dart';
import 'package:bonyanaldoha/screens/setting_screen.dart';
import 'package:bonyanaldoha/screens/term_of_use_screen.dart';
import 'package:bonyanaldoha/services/api_data.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/widgets/custom_drawer.dart';
import 'package:bonyanaldoha/widgets/custome_appbar.dart';
import 'package:bonyanaldoha/widgets/custome_dialog_box.dart';
import 'package:bonyanaldoha/widgets/favorite_property_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Favoritiepg extends StatefulWidget {
  const Favoritiepg({Key? key}) : super(key: key);

  @override
  _FavoritiepgState createState() => _FavoritiepgState();
}

class _FavoritiepgState extends State<Favoritiepg> {
  String apptitle = 'Home';
  int _currentSelected = 0;
  GlobalKey<ScaffoldState> _scaffoldKey1 = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey1,
        appBar: CustomAppBar(
          abtitle: "Favorite",
          bgcolor: Colors.white,
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: cityImg.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return FavoriteList(
                    index: index,
                    btntext: "RENT",
                    address: addresses[0],
                    imagepath: cityImg[index],
                    onTapArrow: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return CustumeDialogBox(
                              imagepath: cityImg[index],
                              textType: "RENT",
                            );
                          });
                    },
                  );
                },
              ),
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
        if (_scaffoldKey1.currentState!.isDrawerOpen) {
          _scaffoldKey1.currentState!.openEndDrawer();
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
