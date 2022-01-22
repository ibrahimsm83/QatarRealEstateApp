import 'package:bonyanaldoha/services/api_data.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/widgets/notification_list.dart';
import 'package:bonyanaldoha/widgets/simple_appbar.dart';
import 'package:flutter/material.dart';

class NotificationPg extends StatefulWidget {
  const NotificationPg({Key? key}) : super(key: key);

  @override
  State<NotificationPg> createState() => _NotificationPgState();
}

class _NotificationPgState extends State<NotificationPg> {
  List notificationTitle = [
    {'titleNoti': 'Appartement Discount 10% Off'},
    {'details': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed'},
    {'dateTime': 'Today 12:30 pm'},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: SimpleAppBar(
          onTapLeading: () => Navigator.pop(context),
          backgroundColor: whiteColor,
          abtitle: "Noftification",
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => NotificationPg())),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                      return NotificationList(
                        index: index,
                        titleN: notificationTitle[0]['titleNoti'],
                        imagepath: cityImg[index],
                        subtitleN: notificationTitle[1]['details'],
                        dateTime: notificationTitle[2]['dateTime'],
                      );
                    },
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
