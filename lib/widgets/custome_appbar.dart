import 'package:bonyanaldoha/screens/list_a_property_screen.dart';
import 'package:bonyanaldoha/screens/profile_screen.dart';
import 'package:bonyanaldoha/services/api_data.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? abtitle;
  final String? abCtitle;
  final int imageno;
  final Color? bgcolor;
  bool showPreferedSize;
  double? apbarheight;
  final Function()? onTap;
  @override
  CustomAppBar(
      {Key? key,
      this.abtitle,
      this.bgcolor,
      this.abCtitle,
      this.imageno = 0,
      this.onTap,
      this.showPreferedSize = false,
      this.apbarheight = 56.0})
      : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(apbarheight!);

  @override
  Widget build(BuildContext context) {
    return showPreferedSize
        ? PreferredSize(
            preferredSize: preferredSize,
            child: AppBar(
              title: Text(abtitle!),
              flexibleSpace: Container(
                child: Center(
                  child: Text(
                    abCtitle!,
                    //"Help & Support",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0),
                  ),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        colorFilter:
                            ColorFilter.mode(Colors.black38, BlendMode.darken),
                        fit: BoxFit.cover,
                        image: AssetImage(
                          cityImg[imageno],
                          //houseImg[index - 1]
                        ))),
              ),
              leading: GestureDetector(
                onTap: () => Scaffold.of(context).openDrawer(),
                child: Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    //color: Colors.white,
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 2,
                        offset: Offset(0, 5), // Shadow position
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Image.asset(
                      'assets/icons/menuicon.png',
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              actions: [
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 8.0),
                  child: Container(
                    width: 50.0,
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      // color: primaryColor,
                      border: Border.all(color: primaryColor),

                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Center(
                      child: Text(
                        "Add",
                        style: TextStyle(
                            fontSize: 12,
                            color: primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: onTap,
                  //  () {
                  //   print("notification screen tabed");
                  // },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: SizedBox(
                        height: 25,
                        width: 25,
                        child: Image.asset('assets/icons/notification.png',
                            color: primaryColor)),
                  ),
                ),
                InkWell(
                  //ProfilePage
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => ProfilePage())),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      // height: 30,
                      width: 40,
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage('assets/images/profile.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        : AppBar(
            backgroundColor: bgcolor,
            // Colors.white,
            elevation: 2.5,
            title: Text(
              abtitle!,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            leading: GestureDetector(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 2,
                      offset: Offset(0, 5), // Shadow position
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Image.asset(
                    'assets/icons/menuicon.png',
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            actions: [
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ListAPropertypg())),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 8.0),
                  child: Container(
                    width: 50,
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: primaryColor),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Center(
                      child: Text(
                        "Add",
                        style: TextStyle(
                            fontSize: 12,
                            color: primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: onTap,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: SizedBox(
                      height: 25,
                      width: 25,
                      child: Image.asset('assets/icons/notification.png',
                          color: primaryColor)),
                ),
              ),
              InkWell(
                //ProfilePage
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ProfilePage())),
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    // height: 30,
                    width: 40,
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}
