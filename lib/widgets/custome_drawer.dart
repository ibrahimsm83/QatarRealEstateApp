import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Drawer(
        child: Container(
          color: Color(0xff202020),
          child: ListView(
            children: [
              Container(
                height: 200,
                color: Color(0xff202020), //primaryColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => DashBoard(
                        //               field: 5,
                        //             )));
                      },
                      child: Container(
                        height: 75,
                        margin: EdgeInsets.only(left: 12, right: 6.0),
                        width: 75,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.greenAccent,
                          // borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/profile.jpg',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'John Smith',
                      style: TextStyle(
                          //   color: drawerTextColor,
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      'Login to your access',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 25,
                        width: sizeWidth(context) * 0.2,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Center(
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: dividerColor,
              ),
              drawerTile(
                  title: 'Home',
                  pnglogo: 'assets/icons/home.png',
                  routeName: 'Dashboard'),
              // Divider(
              //   color: dividerColor,
              // ),
              drawerTile(
                  title: 'Buy',
                  pnglogo: 'assets/icons/buy.png',
                  // svgIconLoc: 'assets/icons/add_property.svg',
                  routeName: 'AddProperty'),
              // Divider(
              //   color: dividerColor,
              // ),
              drawerTile(
                  title: 'Rent',
                  pnglogo: 'assets/icons/rent.png',
                  // svgIconLoc: 'assets/icons/search_property.svg',
                  routeName: 'SearchProperty'),
              // Divider(
              //   color: dividerColor,
              // ),
              //   drawerTile(title: 'New Projects',svgIconLoc: 'assets/icons/new_project.svg',routeName: 'Dashboard'),

              //     Divider(color:dividerColor,),
              //     drawerTile(title: 'Favourites',svgIconLoc:'assets/icons/favourite.svg',routeName: null),
              // GestureDetector(
              //   // onTap: (){
              //   //   Navigator.pushReplacement(
              //   //     context,
              //   //     MaterialPageRoute(builder: (context) => DashBoard(page: 2)),
              //   //   );
              //   // },
              //   child: Container(
              //     height: 40,
              //     child: Row(
              //       children: [
              //         SizedBox(width: 10,),
              //         SvgPicture.asset('assets/icons/favourite.svg',color: Colors.white,),
              //         SizedBox(width: 10,),
              //         Text('Favourites',style: TextStyle(color: Colors.white),)
              //       ],
              //     ),
              //   ),
              // ),
              /// Divider(color: dividerColor,),
              drawerTile(
                  title: 'Sell',
                  pnglogo: 'assets/icons/sell.png',
                  //svgIconLoc: 'assets/icons/saved_searches.svg',
                  routeName: 'SavedSearches'),

              // drawerTile(title: 'Agents',svgIconLoc:'assets/icons/agents.svg',routeName: 'Agents'),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.pushReplacement(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => Agents()));
              //   },
              //   child: Container(
              //     height: 40,
              //     child: Row(
              //       children: [
              //         SizedBox(
              //           width: 10,
              //         ),
              //         SvgPicture.asset(
              //           'assets/icons/agents.svg',
              //           color: Colors.black,
              //         ),
              //         SizedBox(
              //           width: 10,
              //         ),
              //         Text(
              //           'Agents',
              //           style: TextStyle(color: Colors.black),
              //         )
              //       ],
              //     ),
              //   ),
              // ),
              // Divider(
              //   color: dividerColor,
              // ),
              drawerTile(
                  title: 'Help',
                  pnglogo: 'assets/icons/help.png',
                  //   svgIconLoc: 'assets/icons/news_and_blog.svg',
                  routeName: 'NewsAndBlog'),
              // Divider(
              //   color: dividerColor,
              // ),
              drawerTile(
                  title: 'Create a Listing',
                  pnglogo: 'assets/icons/create.png',
                  //svgIconLoc: 'assets/icons/about_us.svg',
                  routeName: 'AboutUs'),
              // Divider(
              //   color: dividerColor,
              // ),
              drawerTile(
                  title: 'Blog',
                  pnglogo: 'assets/icons/blog.png',
                  //svgIconLoc: 'assets/icons/contact_us.svg',
                  routeName: 'ContactUs'),
              // Divider(
              //   color: dividerColor,
              // ),
              drawerTile(
                  title: 'About',
                  pnglogo: 'assets/icons/about.png',
                  // svgIconLoc: 'assets/icons/terms_and_privacy.svg',
                  routeName: 'TermsAndConditions'),
              // Divider(
              //   color: dividerColor,
              // ),
              drawerTile(
                  title: 'Terms of Use',
                  pnglogo: 'assets/icons/terms.png',
                  // svgIconLoc: 'assets/icons/setting.svg',
                  routeName: 'Settings'),
              // Divider(
              //   color: dividerColor,
              // ),
              drawerTile(
                  title: 'Contact Us',
                  pnglogo: 'assets/icons/contact.png',
                  // svgIconLoc: 'assets/icons/setting.svg',
                  routeName: 'Settings'),
              // drawerTile(
              //     title: 'Log Out',
              //     // svgIconLoc: 'assets/icons/logout.svg',
              //     routeName: 'LogOut'),
              // Divider(
              //   color: dividerColor,
              // ),

              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  drawerTile({String? title, String? pnglogo, String? routeName}) {
    return GestureDetector(
      onTap: () {
        // if (routeName == 'Dashboard') {
        //   Navigator.pushAndRemoveUntil(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) {}(), // DashBoard(field: 1),
        //       ),
        //       (Route<dynamic> route) => false);
        // } else if (routeName == 'LogOut')
        //   Navigator.pushNamedAndRemoveUntil(
        //       context, routeName, (route) => false);
        // else
        //   Navigator.pushNamed(context, routeName);
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
