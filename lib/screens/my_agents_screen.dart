import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/utils/index_utils.dart';
import 'package:bonyanaldoha/widgets/simple_appbar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyAgentsPage extends StatefulWidget {
  const MyAgentsPage({Key? key}) : super(key: key);

  @override
  _MyAgentsPageState createState() => _MyAgentsPageState();
}

class _MyAgentsPageState extends State<MyAgentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        onTapLeading: () => Navigator.pop(context),
        backgroundColor: whiteColor,
        abtitle: "My Agents",
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
              "My Agents",
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: agentsRow(
                            name: "John Smith", destination: "Property Agent"),
                      ),
                      SizedBox(width: 3.w),
                      Flexible(
                        child: agentsRow(
                            name: "John Smith", destination: "Property Agent"),
                      ),
                    ],
                  ),
                );
              }),
          SizedBox(height: 2.h),
        ],
      )),
    );
  }

  Widget agentsRow({String? name, String? destination}) {
    return Container(
      // width: 42.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.brown[50],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 3.h),
          Container(
            height: 10.h,
            width: 10.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('$imgpath/profile.jpg'),
                  fit: BoxFit.contain,
                ),
                color: primaryColor,
                shape: BoxShape.circle),
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.center,
            child: Text(
              name!,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
            ),
          ),
          SizedBox(height: 5),
          Align(
            alignment: Alignment.center,
            child: Text(
              destination!,
              style: TextStyle(color: Colors.grey, fontSize: 10.sp),
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('$imgpath/facebook.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(width: 5),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('$imgpath/twitterlogo.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(width: 5),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('$imgpath/instagram.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
