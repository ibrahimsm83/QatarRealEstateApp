import 'package:bonyanaldoha/screens/about_screen.dart';
import 'package:bonyanaldoha/screens/contact_us_screen.dart';
import 'package:bonyanaldoha/screens/create_listing_screen.dart';
import 'package:bonyanaldoha/screens/help_screen.dart';
import 'package:bonyanaldoha/screens/home_screen.dart';
import 'package:bonyanaldoha/screens/term_of_use_screen.dart';
import 'package:bonyanaldoha/services/api_data.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:bonyanaldoha/widgets/blog_list.dart';
import 'package:bonyanaldoha/widgets/custom_drawer.dart';
import 'package:bonyanaldoha/widgets/custom_vert_property_list.dart';
import 'package:bonyanaldoha/widgets/custome_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BlogPg extends StatefulWidget {
  const BlogPg({Key? key}) : super(key: key);

  @override
  State<BlogPg> createState() => _BlogPgState();
}

class _BlogPgState extends State<BlogPg> {
  String apptitle = 'Home';
  int _currentSelected = 0;
  GlobalKey<ScaffoldState> _scaffoldKey1 = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          key: _scaffoldKey1,
          appBar: CustomAppBar(
            abtitle: "Blog",
            bgcolor: Colors.white,
          ),
          drawer: CustomeDrower(
            drawerlist: DrawerList(),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: sizeWidth(context),
                height: 45,
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 2,
                      offset: Offset(0, 5), // Shadow position
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 8, 0, 8),
                      child: Container(
                        child: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Container(
                      width: sizeWidth(context) * 0.68,
                      child: TextField(
                        //showCursor: false,
                        decoration: InputDecoration(
                          hintText: "Search Property..",
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: InputBorder.none,
                          border: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: sizeWidth(context) * 0.09,
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/icons/filtericon.png',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Text(
                    "Our Blog",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: cityImg.length,
                      shrinkWrap: true,
                      // physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return BlogList(
                          index: index,
                          address: addresses[7],
                          imagepath: cityImg[index],
                        );
                      },
                    ),
                  ),
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
            apptitle = "Commerical";
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => HomeScreen(
                          currrentid: 3,
                          title: "Commerical",
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
          } else if (id == 9) {
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
