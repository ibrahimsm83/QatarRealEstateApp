import 'package:bonyanaldoha/screens/about_screen.dart';
import 'package:bonyanaldoha/screens/create_listing_screen.dart';
import 'package:bonyanaldoha/screens/home_screen.dart';
import 'package:bonyanaldoha/screens/term_of_use_screen.dart';
import 'package:bonyanaldoha/services/api_data.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:bonyanaldoha/widgets/custom_drawer.dart';
import 'package:bonyanaldoha/widgets/custome_appbar.dart';
import 'package:flutter/material.dart';

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
        // shows the list of menu drawer
        children: [
          Divider(
            color: dividerColor,
          ),
          drawerItem(
            id: 0,
            title: "Home",
            pnglogo: 'assets/icons/home.png',
            // selected: currentPage == DrawerSections.home ? true : false
          ),
          drawerItem(
            id: 1,
            title: "Buy",
            pnglogo: 'assets/icons/buy.png',
            //selected: currentPage == DrawerSections.buy ? true : false
          ),
          drawerItem(
            id: 2,
            title: "Sell",
            pnglogo: 'assets/icons/sell.png',
            //selected: currentPage == DrawerSections.sell ? true : false
          ),
          drawerItem(
            id: 3,
            title: "Rent",
            pnglogo: 'assets/icons/rent.png',
            // selected: currentPage == DrawerSections.rent ? true : false
          ),
          drawerItem(
            id: 4,
            title: "Help",
            pnglogo: 'assets/icons/help.png',
            //  selected: currentPage == DrawerSections.help ? true : false
          ),
          drawerItem(
            id: 5,
            title: "Create a Listing",
            pnglogo: 'assets/icons/create.png',
            //  selected:
            //   currentPage == DrawerSections.createAListing ? true : false
          ),
          drawerItem(
            id: 6,
            title: "Blog",
            pnglogo: 'assets/icons/blog.png',
            // selected: currentPage == DrawerSections.blog ? true : false
          ),
          drawerItem(
            id: 7,
            title: "About",
            pnglogo: 'assets/icons/about.png',
            // selected: currentPage == DrawerSections.about ? true : false
          ),
          drawerItem(
            id: 8,
            title: "Term of Use",
            pnglogo: 'assets/icons/terms.png',
            // selected: currentPage == DrawerSections.termOfUse ? true : false
          ),
          drawerItem(
            id: 10,
            title: "Contact Us",
            pnglogo: 'assets/icons/contact.png',
            //  selected: currentPage == DrawerSections.contactUs ? true : false
          ),
        ],
      ),
    );
  }

  drawerItem({int? id, String? title, String? pnglogo, bool? selected}) {
    return InkWell(
      onTap: () {
        setState(() {
          if (id == 0) {
            _currentSelected = 0;
            apptitle = "Home";
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => HomeScreen()));

            //currentPage = DrawerSections.home;
          } else if (id == 1) {
            // currentPage = DrawerSections.buy;
            _currentSelected = 1;
            apptitle = "Buy";

            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => HomeScreen(
                          currrentid: 1,
                          title: "Buy",
                        )));
          } else if (id == 2) {
            // currentPage = DrawerSections.rent;
            _currentSelected = 2;
            apptitle = "Sell";
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => HomeScreen(
                          currrentid: 2,
                          title: "Sell",
                        )));
          } else if (id == 3) {
            // currentPage = DrawerSections.sell;
            _currentSelected = 3;
            apptitle = "Rent";
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => HomeScreen(
                          currrentid: 3,
                          title: "Rent",
                        )));
          } else if (id == 4) {
            // _currentSelected = 4;
            apptitle = "Help";
            // Navigator.pop(context);
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (BuildContext context) => HelpPg()));

            // currentPage = DrawerSections.help;
          } else if (id == 5) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => CreateListigPg()));
            // currentPage = DrawerSections.createAListing;
          } else if (id == 6) {
            // currentPage = DrawerSections.blog;
          } else if (id == 7) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => AboutPg()));
            //currentPage = DrawerSections.about;
          } else if (id == 8) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => TermOfUsePg()));

            // currentPage = DrawerSections.termOfUse;
          } else if (id == 10) {
            // currentPage = DrawerSections.contactUs;
          }
        });
        if (_scaffoldKey.currentState!.isDrawerOpen) {
          _scaffoldKey.currentState!.openEndDrawer();
        }
      },
      child: Container(
        height: 40,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Image.asset(pnglogo ?? ""),
            // SvgPicture.asset(
            //   svgIconLoc,
            //   color: Colors.black,
            // ),
            SizedBox(
              width: 10,
            ),
            Text(
              title ?? "",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
