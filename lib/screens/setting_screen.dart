import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/widgets/simple_appbar.dart';
import 'package:flutter/material.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';

class SettingsPg extends StatefulWidget {
  const SettingsPg({Key? key}) : super(key: key);

  @override
  _SettingsPgState createState() => _SettingsPgState();
}

class _SettingsPgState extends State<SettingsPg> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: SimpleAppBar(
          onTapLeading: () => Navigator.pop(context),
          backgroundColor: whiteColor,
          abtitle: "Settings",
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => NotificationPg())),
        ),
      ),
    );
  }
}
