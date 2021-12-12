import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  @override
  Size get preferredSize => const Size.fromHeight(56);
  CustomAppBar(this.title);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 2.5,
      title: Text(
        title,
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
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Container(
              height: 25,
              width: 25,
              child: Image.asset('assets/icons/notification.png',
                  color: primaryColor)),
        ),
        Padding(
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
      ],
    );
  }
}
