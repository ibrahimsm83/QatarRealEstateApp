import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';

import 'package:bonyanaldoha/widgets/simple_appbar.dart';
import 'package:flutter/material.dart';

class ListAPropertypg extends StatefulWidget {
  const ListAPropertypg({Key? key}) : super(key: key);

  @override
  _ListAPropertypgState createState() => _ListAPropertypgState();
}

class _ListAPropertypgState extends State<ListAPropertypg> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: SimpleAppBar(
          onTapLeading: () => Navigator.pop(context),
          backgroundColor: whiteColor,
          abtitle: "Property",
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => NotificationPg())),
        ),
      ),
    );
  }
}
