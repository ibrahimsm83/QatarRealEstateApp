import 'package:bonyanaldoha/screens/create_listing_screen.dart';
import 'package:bonyanaldoha/screens/help_screen.dart';
import 'package:bonyanaldoha/screens/home_screen.dart';
import 'package:bonyanaldoha/screens/term_of_use_screen.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:bonyanaldoha/widgets/custom_drawer.dart';
import 'package:bonyanaldoha/widgets/custome_appbar.dart';
import 'package:flutter/material.dart';

class AboutPg extends StatefulWidget {
  const AboutPg({Key? key}) : super(key: key);

  @override
  State<AboutPg> createState() => _AboutPgState();
}

class _AboutPgState extends State<AboutPg> {
  List teamMember = [
    {
      'image': 'assets/images/profile.jpg',
      'title': 'Kathleen Grant',
      'subtitle': 'Funder',
    },
    {
      'image': 'assets/images/user3.jpg',
      'title': 'Keith Bailey',
      'subtitle': 'CEO',
    },
    {
      'image': 'assets/images/user3.jpg',
      'title': 'Danielle Murray',
      'subtitle': 'Manager',
    },
    {
      'image': 'assets/images/profile.jpg',
      'title': 'Thomas Stevens',
      'subtitle': 'Manager',
    },
  ];

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
            abtitle: "About Us",
            imageno: 7,
            showPreferedSize: true,
            apbarheight: 200,
            abCtitle: "About Us",
          ),
          drawer: CustomeDrower(
            drawerlist: DrawerList(),
          ),
          body: SingleChildScrollView(
            child: Container(
              // height: sizeheight(context),
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
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
                        width: sizeWidth(context) * 0.4,
                        // margin: EdgeInsets.symmetric(
                        //     horizontal: sizeWidth(context) * 0.06),
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        child: ElevatedButton(
                          child: Text(
                            'CONTACT US',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
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
                    ),
                    SizedBox(
                      height: sizeheight(context) * 0.01,
                    ),
                    Divider(
                      height: 1.0,
                      color: Colors.grey,
                    ),
                    Text(
                      "Meet Our Team ",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.0),
                    Text('Lorem ipsum dolor sit amet,'),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        temaMemberinfo(index: 0),
                        temaMemberinfo(index: 1),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        temaMemberinfo(index: 2),
                        temaMemberinfo(index: 3),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget temaMemberinfo({int? index}) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      // height:
      //     MediaQuery.of(context).size.height * 0.16,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 2.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // width:
                //     MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.height * 0.16,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                        topRight: Radius.circular(10.0)),
                    image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage(
                          // 'assets/images/city3.jpg',
                          teamMember[index!]['image'],
                          // imagepath,
                          //houseImg[index - 1]
                        ))),
              ),
              Text(
                teamMember[index]['title'],
                //"Kathleen Grant ",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 3.0),
              Text(
                teamMember[index]['subtitle'],
                // "Funder ",
                style: TextStyle(
                  fontSize: 14,
                  color: primaryColor,
                ),
              ),
            ],
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
