import 'package:bonyanaldoha/screens/about_screen.dart';
import 'package:bonyanaldoha/screens/blog_screen.dart';
import 'package:bonyanaldoha/screens/buy_screen.dart';
import 'package:bonyanaldoha/screens/contact_us_screen.dart';
import 'package:bonyanaldoha/screens/create_listing_screen.dart';
import 'package:bonyanaldoha/screens/deshboard_screen.dart';
import 'package:bonyanaldoha/screens/help_screen.dart';
import 'package:bonyanaldoha/screens/rent_screen.dart';
import 'package:bonyanaldoha/screens/sell_screen.dart';
import 'package:bonyanaldoha/screens/term_of_use_screen.dart';
import 'package:bonyanaldoha/services/api_data.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:bonyanaldoha/widgets/custome_appbar.dart';
import 'package:bonyanaldoha/widgets/custome_drawer.dart';
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
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  var currentPage = DrawerSections.home;

  int index = 0;
  @override
  Widget build(BuildContext context) {
    dynamic container;
    if (currentPage == DrawerSections.home) {
      container = DeshboardPg();
    } else if (currentPage == DrawerSections.buy) {
      container = BuyPage();
    } else if (currentPage == DrawerSections.rent) {
      container = RentPg();
    } else if (currentPage == DrawerSections.sell) {
      container = SellPg();
    } else if (currentPage == DrawerSections.help) {
      container = HelpPg();
    } else if (currentPage == DrawerSections.createAListing) {
      container = CreateListigPg();
    } else if (currentPage == DrawerSections.blog) {
      container = BlogPg();
    } else if (currentPage == DrawerSections.about) {
      container = AboutPg();
    } else if (currentPage == DrawerSections.termOfUse) {
      container = TermOfUsePg();
    } else if (currentPage == DrawerSections.contactUs) {
      container = ContactUsPg();
    }
    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
        appBar: CustomAppBar("Home"),
// CustomDrawer(),
        drawer: Container(
          width: 200,
          child: Drawer(
            child: Container(
              color: Color(0xff202020),
              child: ListView(
                children: [
                  MyDrawerHeader(),
                  DrawerList(),
                ],
              ),
            ),
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
            elevation: 2.0,
            selectedItemColor: primaryColor,
            unselectedItemColor: Colors.grey,
            currentIndex: index,
            onTap: (int index) {
              setState(() {
                this.index = index;
              });
              //_navigateToScreens(index);
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: Image.asset(
                    'assets/icons/footerhome.png',
                    color: index == 0 ? primaryColor : Colors.grey,
                    height: 30,
                    width: 30,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/footerbuy.png',
                  color: index == 1 ? primaryColor : Colors.grey,
                  height: 30,
                  width: 30,
                ),
                label: "Buy",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/footersell.png',
                  color: index == 2 ? primaryColor : Colors.grey,
                  height: 30,
                  width: 30,
                ),
                label: "Sell",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/footerrent.png',
                  color: index == 3 ? primaryColor : Colors.grey,
                  height: 32,
                  width: 32,
                ),
                label: "Rent",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/footerlocation.png',
                  color: index == 4 ? primaryColor : Colors.grey,
                  height: 30,
                  width: 30,
                ),
                label: "Location",
              ),
            ]),
        body: container,
      ),
    );
  }
//}

  Widget DrawerList() {
    return Container(
      // padding: EdgeInsets.only(
      //   top: 15,
      // ),
      child: Column(
        // shows the list of menu drawer
        children: [
          Divider(
            color: dividerColor,
          ),
          drawerItem(
              id: 1,
              title: "Home",
              pnglogo: 'assets/icons/home.png',
              selected: currentPage == DrawerSections.home ? true : false),
          drawerItem(
              id: 2,
              title: "Buy",
              pnglogo: 'assets/icons/buy.png',
              selected: currentPage == DrawerSections.buy ? true : false),
          drawerItem(
              id: 3,
              title: "Rent",
              pnglogo: 'assets/icons/rent.png',
              selected: currentPage == DrawerSections.rent ? true : false),
          drawerItem(
              id: 4,
              title: "Sell",
              pnglogo: 'assets/icons/sell.png',
              selected: currentPage == DrawerSections.sell ? true : false),
          drawerItem(
              id: 5,
              title: "Help",
              pnglogo: 'assets/icons/help.png',
              selected: currentPage == DrawerSections.help ? true : false),
          drawerItem(
              id: 6,
              title: "Create a Listing",
              pnglogo: 'assets/icons/create.png',
              selected:
                  currentPage == DrawerSections.createAListing ? true : false),
          drawerItem(
              id: 7,
              title: "Blog",
              pnglogo: 'assets/icons/blog.png',
              selected: currentPage == DrawerSections.blog ? true : false),
          drawerItem(
              id: 8,
              title: "About",
              pnglogo: 'assets/icons/about.png',
              selected: currentPage == DrawerSections.about ? true : false),
          drawerItem(
              id: 9,
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
        // Navigator.pop(context, true);

        setState(() {
          if (id == 1) {
            currentPage = DrawerSections.home;
          } else if (id == 2) {
            currentPage = DrawerSections.buy;
          } else if (id == 3) {
            currentPage = DrawerSections.rent;
          } else if (id == 4) {
            currentPage = DrawerSections.sell;
          } else if (id == 5) {
            currentPage = DrawerSections.help;
          } else if (id == 6) {
            currentPage = DrawerSections.createAListing;
          } else if (id == 7) {
            currentPage = DrawerSections.blog;
          } else if (id == 8) {
            currentPage = DrawerSections.about;
          } else if (id == 9) {
            currentPage = DrawerSections.termOfUse;
          } else if (id == 10) {
            currentPage = DrawerSections.contactUs;
          }
        });
        if (_scaffoldKey.currentState!.isDrawerOpen) {
          _scaffoldKey.currentState!.openEndDrawer();
        }
        //Navigator.pop(context);
      },
      child: Container(
        height: 40,
        // color: Colors.white,
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
