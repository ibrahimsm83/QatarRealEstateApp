import 'package:bonyanaldoha/screens/list_a_property_screen.dart';
import 'package:bonyanaldoha/screens/profile_screen.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Function()? onTap;
  final Function()? onTapLeading;
  final String? abtitle;
  final Color? backgroundColor;
  const SimpleAppBar(
      {Key? key,
      this.onTap,
      this.abtitle,
      this.backgroundColor,
      this.onTapLeading})
      : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(56.0);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor,
      // Colors.white,
      elevation: 1.0,
      title: Text(
        abtitle!,
        style: TextStyle(
          fontSize: 14.sp,
          color: Colors.black,
        ),
      ),
      leading: InkWell(
        onTap: onTapLeading,
        child: Icon(
          Icons.arrow_back,
          color: primaryColor,
          size: 28.0,
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
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
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
/*   child: Icon(
                Icons.arrow_back,
                color: primaryColor,
                size: 28.0,
              ), */