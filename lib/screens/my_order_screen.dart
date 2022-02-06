import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/services/api_data.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/widgets/blog_list.dart';
import 'package:bonyanaldoha/widgets/my_order_list.dart';
import 'package:bonyanaldoha/widgets/simple_appbar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyOrderPage extends StatefulWidget {
  const MyOrderPage({Key? key}) : super(key: key);

  @override
  _MyOrderPageState createState() => _MyOrderPageState();
}

class _MyOrderPageState extends State<MyOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        onTapLeading: () => Navigator.pop(context),
        backgroundColor: whiteColor,
        abtitle: "My Order",
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => NotificationPg())),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'My Order',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: cityImg.length,
                shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return MyOrderList(
                    index: index,
                    address: addresses[7],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
