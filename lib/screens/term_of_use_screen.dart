import 'package:bonyanaldoha/screens/about_screen.dart';
import 'package:bonyanaldoha/screens/blog_screen.dart';
import 'package:bonyanaldoha/screens/contact_us_screen.dart';
import 'package:bonyanaldoha/screens/create_listing_screen.dart';
import 'package:bonyanaldoha/screens/help_screen.dart';
import 'package:bonyanaldoha/screens/home_screen.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:bonyanaldoha/widgets/blog_list.dart';
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
        // shows the list of menu drawer
        children: [
          Divider(
            color: dividerColor,
          ),
          drawerItem(
            id: 0,
            title: "Home",
            pnglogo: "$iconpath/Home.svg",
          ),
          drawerItem(
            id: 1,
            title: "Buy",
            pnglogo: "$iconpath/Buy.svg",
          ),
          drawerItem(
            id: 2,
            title: "Rent",
            pnglogo: "$iconpath/Rent.svg",
          ),
          drawerItem(
            id: 3,
            title: "Commercial",
            pnglogo: "$iconpath/Sell.svg",
          ),
          drawerItem(
            id: 4,
            title: "Help",
            pnglogo: "$iconpath/Help.svg",
          ),
          drawerItem(
            id: 5,
            title: "Create a Listing",
            pnglogo: "$iconpath/CreateAListing.svg",
          ),
          drawerItem(
            id: 6,
            title: "Blog",
            pnglogo: "$iconpath/Blog.svg",
          ),
          drawerItem(
            id: 7,
            title: "About",
            pnglogo: "$iconpath/About_Us.svg",
          ),
          drawerItem(
            id: 8,
            title: "Term of Use",
            pnglogo: "$iconpath/Terms_Of_Use.svg",
          ),
          drawerItem(
            id: 9,
            title: "Contact Us",
            pnglogo: "$iconpath/Contact _Us.svg",
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
                    builder: (BuildContext context) => AboutPg()));
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
            //  Image.asset(pnglogo ?? ""),
            SvgPicture.asset(
              pnglogo ?? "",
              color: primaryColor,
            ),
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
