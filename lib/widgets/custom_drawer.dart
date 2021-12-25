import 'package:bonyanaldoha/screens/buy_screen.dart';
import 'package:bonyanaldoha/screens/deshboard_screen.dart';
import 'package:bonyanaldoha/screens/help_screen.dart';
import 'package:bonyanaldoha/screens/home_screen.dart';
import 'package:bonyanaldoha/screens/location_screen.dart';
import 'package:bonyanaldoha/screens/rent_screen.dart';
import 'package:bonyanaldoha/screens/sell_screen.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/widgets/custome_drawer_header.dart';
import 'package:flutter/material.dart';
import 'package:bonyanaldoha/screens/contact_us_screen.dart';
import 'package:bonyanaldoha/screens/create_listing_screen.dart';

class CustomeDrower extends StatefulWidget {
  final Widget? drawerlist;

  const CustomeDrower({Key? key, this.drawerlist}) : super(key: key);

  @override
  _CustomeDrowerState createState() => _CustomeDrowerState();
}

class _CustomeDrowerState extends State<CustomeDrower> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Drawer(
        child: Container(
          color: Color(0xff202020),
          child: ListView(
            children: [
              MyDrawerHeader(),
              widget.drawerlist!,
              // DrawerList(),
            ],
          ),
        ),
      ),
    );
  }
}
