import 'package:bonyanaldoha/screens/compare_details_screen.dart';

import 'package:bonyanaldoha/screens/notification_screen.dart';

import 'package:bonyanaldoha/services/api_data.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:bonyanaldoha/widgets/compare_property_list.dart';

import 'package:bonyanaldoha/widgets/simple_appbar.dart';
import 'package:flutter/material.dart';

class ComparePg extends StatefulWidget {
  const ComparePg({Key? key}) : super(key: key);

  @override
  _ComparePgState createState() => _ComparePgState();
}

class _ComparePgState extends State<ComparePg> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: SimpleAppBar(
          onTapLeading: () => Navigator.pop(context),
          backgroundColor: whiteColor,
          abtitle: "Compare",
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => NotificationPg())),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ComparePropertyList(imagepath: cityImg[0]),
                ComparePropertyList(imagepath: cityImg[1]),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ComparePropertyList(imagepath: cityImg[2]),
                ComparePropertyList(imagepath: cityImg[3]),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: sizeWidth(context),
              margin:
                  EdgeInsets.symmetric(horizontal: sizeWidth(context) * 0.06),
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              child: ElevatedButton(
                child: Text(
                  'COMPARE NOW',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  //ComapreDetailsPg
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              ComapreDetailsPg()));
                },
                style: ElevatedButton.styleFrom(
                  primary: primaryColor,
                  textStyle: TextStyle(
                    fontSize: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
