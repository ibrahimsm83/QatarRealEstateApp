
import 'package:bonyanaldoha/widgets/custome_drawer_header.dart';
import 'package:flutter/material.dart';


class CustomeDrower extends StatefulWidget {
  final Widget? drawerlist;

  const CustomeDrower({Key? key, this.drawerlist}) : super(key: key);

  @override
  _CustomeDrowerState createState() => _CustomeDrowerState();
}

class _CustomeDrowerState extends State<CustomeDrower> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
