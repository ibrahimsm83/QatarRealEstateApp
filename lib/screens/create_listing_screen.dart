import 'package:bonyanaldoha/screens/blog_screen.dart';
import 'package:bonyanaldoha/screens/contact_us_screen.dart';
import 'package:bonyanaldoha/screens/help_screen.dart';
import 'package:bonyanaldoha/screens/home_screen.dart';
import 'package:bonyanaldoha/screens/term_of_use_screen.dart';
import 'package:bonyanaldoha/services/api_data.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/widgets/custom_drawer.dart';
import 'package:bonyanaldoha/widgets/custom_vert_property_list.dart';
import 'package:bonyanaldoha/widgets/custome_appbar.dart';
import 'package:flutter/material.dart';

class CreateListigPg extends StatefulWidget {
  CreateListigPg({Key? key}) : super(key: key);

  @override
  State<CreateListigPg> createState() => _CreateListigPgState();
}

class _CreateListigPgState extends State<CreateListigPg> {
  int _currentSelected = 0;

  String apptitle = 'Home';

  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          appBar: CustomAppBar(
            abtitle: "Create A Listing",
            imageno: 6,
            showPreferedSize: true,
            apbarheight: 200,
            abCtitle: "Create A Listing",
          ),
          drawer: CustomeDrower(
            drawerlist: DrawerList(),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 40,
                      width: 110,
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        border: Border.all(color: primaryColor),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Center(
                        child: Text(
                          "BUY LISTING",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    //
                    Container(
                      height: 40,
                      width: 110,
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        // color: primaryColor,
                        border: Border.all(color: primaryColor),

                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Center(
                        child: Text(
                          "SELL LISTING",
                          style: TextStyle(
                              fontSize: 13,
                              color: primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    //
                    Container(
                      height: 40,
                      width: 110,
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        // color: primaryColor,
                        border: Border.all(color: primaryColor),

                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Center(
                        child: Text(
                          "RENT LISTING",
                          style: TextStyle(
                              fontSize: 13,
                              color: primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  // height: sizeheight(context),
                  // width: double.infinity,

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: cityImg.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return VerticalPropertyList(
                            index: index,
                            btntext: "BUY",
                            address: addresses[0],
                            imagepath: cityImg[index],
                          );
                        },
                      ),
                    ),
                  ),
                ),
                //ListView
                SizedBox(
                  height: 10.0,
                )
              ],
            ),
          ),
          // ),
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
            id: 9,
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
            apptitle = "Rent";
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => HomeScreen(
                          currrentid: 2,
                          title: "Rent",
                        )));
          } else if (id == 3) {
            // currentPage = DrawerSections.sell;
            _currentSelected = 3;
            apptitle = "Commercial";
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => HomeScreen(
                          currrentid: 3,
                          title: "Commercial",
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
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (BuildContext context) => BlogPg()));
          } else if (id == 7) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => AboutDialog()));
            //currentPage = DrawerSections.about;
          } else if (id == 8) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => TermOfUsePg()));
            // currentPage = DrawerSections.termOfUse;
          } else if (id == 9) {
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
