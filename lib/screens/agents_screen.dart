import 'package:bonyanaldoha/screens/add_new_agent_screen.dart';
import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/utils/index_utils.dart';
import 'package:bonyanaldoha/widgets/simple_appbar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AgentsPage extends StatefulWidget {
  const AgentsPage({Key? key}) : super(key: key);

  @override
  _AgentsPageState createState() => _AgentsPageState();
}

class _AgentsPageState extends State<AgentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        onTapLeading: () => Navigator.pop(context),
        backgroundColor: whiteColor,
        abtitle: "Agents",
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => NotificationPg())),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.brown[50],
              //height: 25.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 3.h),
                  Container(
                    height: 12.h,
                    width: 12.w,
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
                      "John Smith ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14.sp),
                    ),
                  ),
                  SizedBox(height: 5),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Agency",
                      style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                    ),
                  ),
                  SizedBox(height: 3.h),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All Agents",
                    style:
                        TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: sizeWidth(context) * 0.4,
                    height: 40,
                    child: ElevatedButton(
                      child: Text(
                        'ADD NEW AGENT',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    AddNewAgentPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        textStyle: TextStyle(
                          fontSize: 13.sp,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  agentsRow(name: "John Smith", destination: "Property Agent"),
                  agentsRow(name: "John Smith", destination: "Property Agent"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  agentsRow(name: "John Smith", destination: "Property Agent"),
                  agentsRow(name: "John Smith", destination: "Property Agent"),
                ],
              ),
            ),
            SizedBox(height: 3.h),
          ],
        ),
      ),
    );
  }

  Widget agentsRow({String? name, String? destination}) {
    return Container(
      width: 42.w,
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
