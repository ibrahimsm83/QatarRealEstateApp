import 'package:bonyanaldoha/screens/add_new_agency_screen.dart';
import 'package:bonyanaldoha/screens/add_new_agent_screen.dart';
import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/services/api_data.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:bonyanaldoha/widgets/blog_list.dart';
import 'package:bonyanaldoha/widgets/simple_appbar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AgencyListPage extends StatefulWidget {
  const AgencyListPage({Key? key}) : super(key: key);

  @override
  _AgencyListPageState createState() => _AgencyListPageState();
}

class _AgencyListPageState extends State<AgencyListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        onTapLeading: () => Navigator.pop(context),
        backgroundColor: whiteColor,
        abtitle: "Agencies",
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
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      "Agencies List",
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Flexible(
                    child: SizedBox(
                      height: 40,
                      child: ElevatedButton(
                        child: Text(
                          'ADD NEW AGENCY',
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
                                      AddNewAgencypage()));
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
                  ),
                ],
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
                  return BlogList(
                    index: index,
                    address: addresses[7],
                    imagepath: cityImg[index],
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
