import 'package:bonyanaldoha/model/drawer_list_model.dart';
import 'package:bonyanaldoha/screens/about_screen.dart';
import 'package:bonyanaldoha/screens/blog_screen.dart';
import 'package:bonyanaldoha/screens/buy_screen.dart';
import 'package:bonyanaldoha/screens/compare_screen.dart';
import 'package:bonyanaldoha/screens/contact_us_screen.dart';

import 'package:bonyanaldoha/screens/deshboard_screen.dart';
import 'package:bonyanaldoha/screens/favorite_screen.dart';
import 'package:bonyanaldoha/screens/help_screen.dart';
import 'package:bonyanaldoha/screens/list_a_property_screen.dart';
import 'package:bonyanaldoha/screens/location_screen.dart';
import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/screens/package_screen.dart';
import 'package:bonyanaldoha/screens/rent_screen.dart';
import 'package:bonyanaldoha/screens/sell_screen.dart';
import 'package:bonyanaldoha/screens/setting_screen.dart';
import 'package:bonyanaldoha/screens/term_of_use_screen.dart';

import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:bonyanaldoha/widgets/custom_drawer.dart';
import 'package:bonyanaldoha/widgets/custome_appbar.dart';
import 'package:bonyanaldoha/widgets/custome_drawer_header.dart';
import 'package:bonyanaldoha/widgets/home_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum DrawerSections {
  home,
  buy,
  rent,
  sell,
  help,
  createAListing,
  blog,
  about,
  termOfUse,
  contactUs
}

class HomeScreen extends StatefulWidget {
  final int currrentid;
  final String title;
  const HomeScreen({Key? key, this.currrentid = 0, this.title = "Home"})
      : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> screenList = <Widget>[
    DeshboardPg(),
    BuyPage(),
    RentPg(),
    SellPg(),
    Location(),
  ];
  String apptitle = 'Home';

  int _currentSelected = 0;
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  var currentPage = DrawerSections.home;

  dynamic container;

  void _onItemTapped(int index) {
    setState(() {
      _currentSelected = index;
      switch (index) {
        case 0:
          {
            apptitle = 'Home';
          }
          break;
        case 1:
          {
            apptitle = 'Buy';
          }
          break;
        case 2:
          {
            apptitle = 'Rent';
          }
          break;
        case 3:
          {
            apptitle = 'Commercial';
          }
          break;
        case 4:
          {
            apptitle = 'Location';
          }
          break;
      }
      //  _currentScreen
    });
  }

  @override
  void initState() {
    _currentSelected = widget.currrentid;
    apptitle = widget.title;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          key: _scaffoldKey,
          appBar: CustomAppBar(
            abtitle: apptitle,
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
          bottomNavigationBar: BottomNavigationBar(
              elevation: 2.0,
              onTap: _onItemTapped,
              currentIndex: _currentSelected,
              selectedItemColor: primaryColor,
              unselectedItemColor: Colors.grey,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    backgroundColor: Colors.white,
                    icon: SvgPicture.asset(
                      "$iconpath/Home.svg",
                      color: _currentSelected == 0 ? primaryColor : Colors.grey,
                      height: 30,
                      width: 30,
                    ),
                    label: "Home"),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "$iconpath/Buy.svg",
                    color: _currentSelected == 1 ? primaryColor : Colors.grey,
                    height: 30,
                    width: 30,
                  ),
                  label: "Buy",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "$iconpath/Rent.svg",
                    color: _currentSelected == 2 ? primaryColor : Colors.grey,
                    height: 32,
                    width: 32,
                  ),
                  label: "Rent",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "$iconpath/Sell.svg",
                    color: _currentSelected == 3 ? primaryColor : Colors.grey,
                    height: 30,
                    width: 30,
                  ),
                  label: "Commercial",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "$iconpath/Location.svg",
                    color: _currentSelected == 4 ? primaryColor : Colors.grey,
                    height: 30,
                    width: 30,
                  ),
                  label: "Location",
                ),
              ]),
          body: IndexedStack(
            index: _currentSelected,
            children: screenList,
          )),
    );
  }
//}

  Widget DrawerList() {
    return Container(
      child: Column(
        // shows the list of menu drawer
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
            _currentSelected = 0;
            apptitle = "Home";
          } else if (dlm.id == 1) {
            _currentSelected = 1;
            apptitle = "Buy";
          } else if (dlm.id == 2) {
            _currentSelected = 2;
            apptitle = "Rent";
          } else if (dlm.id == 3) {
            _currentSelected = 3;
            apptitle = "Commerical";
          } else if (dlm.id == 4) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => ListAPropertypg()));
          } else if (dlm.id == 5) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => Favoritiepg()));
          } else if (dlm.id == 6) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => ComparePg()));
          } else if (dlm.id == 7) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => Packagespg()));
          } else if (dlm.id == 8) {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) => BlogPg()));
          } else if (dlm.id == 9) {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) => HelpPg()));
          } else if (dlm.id == 10) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => AboutPg()));
          } else if (dlm.id == 11) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => SettingsPg()));
          } else if (dlm.id == 12) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => TermOfUsePg()));
          } else if (dlm.id == 13) {
            Navigator.push(
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
