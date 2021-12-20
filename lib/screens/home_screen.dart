import 'package:bonyanaldoha/screens/about_screen.dart';
import 'package:bonyanaldoha/screens/blog_screen.dart';
import 'package:bonyanaldoha/screens/buy_screen.dart';
import 'package:bonyanaldoha/screens/contact_us_screen.dart';
import 'package:bonyanaldoha/screens/create_listing_screen.dart';
import 'package:bonyanaldoha/screens/deshboard_screen.dart';
import 'package:bonyanaldoha/screens/help_screen.dart';
import 'package:bonyanaldoha/screens/location_screen.dart';
import 'package:bonyanaldoha/screens/rent_screen.dart';
import 'package:bonyanaldoha/screens/sell_screen.dart';
import 'package:bonyanaldoha/screens/term_of_use_screen.dart';
import 'package:bonyanaldoha/services/api_data.dart';
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
                    icon: Image.asset(
                      'assets/icons/footerhome.png',
                      color: _currentSelected == 0 ? primaryColor : Colors.grey,
                      height: 30,
                      width: 30,
                    ),
                    label: "Home"),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/footerbuy.png',
                    color: _currentSelected == 1 ? primaryColor : Colors.grey,
                    height: 30,
                    width: 30,
                  ),
                  label: "Buy",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/footerrent.png',
                    color: _currentSelected == 2 ? primaryColor : Colors.grey,
                    height: 32,
                    width: 32,
                  ),
                  label: "Rent",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/footersell.png',
                    color: _currentSelected == 3 ? primaryColor : Colors.grey,
                    height: 30,
                    width: 30,
                  ),
                  label: "Commercial",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/footerlocation.png',
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
          ) //_widgetOptions.elementAt(_currentSelected),
          //container,
          ),
    );
  }
//}

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
              selected: currentPage == DrawerSections.home ? true : false),
          drawerItem(
              id: 1,
              title: "Buy",
              pnglogo: 'assets/icons/buy.png',
              selected: currentPage == DrawerSections.buy ? true : false),
          drawerItem(
              id: 2,
              title: "Rent",
              pnglogo: 'assets/icons/rent.png',
              selected: currentPage == DrawerSections.rent ? true : false),
          drawerItem(
              id: 3,
              title: "Commercial",
              pnglogo: 'assets/icons/sell.png',
              selected: currentPage == DrawerSections.sell ? true : false),
          drawerItem(
              id: 4,
              title: "Help",
              pnglogo: 'assets/icons/help.png',
              selected: currentPage == DrawerSections.help ? true : false),
          drawerItem(
              id: 5,
              title: "Create a Listing",
              pnglogo: 'assets/icons/create.png',
              selected:
                  currentPage == DrawerSections.createAListing ? true : false),
          drawerItem(
              id: 6,
              title: "Blog",
              pnglogo: 'assets/icons/blog.png',
              selected: currentPage == DrawerSections.blog ? true : false),
          drawerItem(
              id: 7,
              title: "About",
              pnglogo: 'assets/icons/about.png',
              selected: currentPage == DrawerSections.about ? true : false),
          drawerItem(
              id: 8,
              title: "Term of Use",
              pnglogo: 'assets/icons/terms.png',
              selected: currentPage == DrawerSections.termOfUse ? true : false),
          drawerItem(
              id: 10,
              title: "Contact Us",
              pnglogo: 'assets/icons/contact.png',
              selected: currentPage == DrawerSections.contactUs ? true : false),
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
            //currentPage = DrawerSections.home;
          } else if (id == 1) {
            // currentPage = DrawerSections.buy;
            _currentSelected = 1;
            apptitle = "Buy";
          } else if (id == 2) {
            // currentPage = DrawerSections.rent;
            _currentSelected = 2;
            apptitle = "Rent";
          } else if (id == 3) {
            // currentPage = DrawerSections.sell;
            _currentSelected = 3;
            apptitle = "Commerical";
          } else if (id == 4) {
            // _currentSelected = 4;
            // apptitle = "Help";
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) => HelpPg()));

            // currentPage = DrawerSections.help;
          } else if (id == 5) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => CreateListigPg()));
            // currentPage = DrawerSections.createAListing;
          } else if (id == 6) {
            currentPage = DrawerSections.blog;
          } else if (id == 7) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => AboutPg()));
          } else if (id == 8) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => TermOfUsePg()));
            // currentPage = DrawerSections.termOfUse;
          } else if (id == 10) {
            currentPage = DrawerSections.contactUs;
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
