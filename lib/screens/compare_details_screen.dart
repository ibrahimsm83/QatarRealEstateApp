
import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/services/api_data.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/widgets/compare_details_list.dart';
import 'package:flutter/material.dart';


class ComapreDetailsPg extends StatefulWidget {
  const ComapreDetailsPg({Key? key}) : super(key: key);

  @override
  _ComapreDetailsPgState createState() => _ComapreDetailsPgState();
}

class _ComapreDetailsPgState extends State<ComapreDetailsPg> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 2.5,
          title: Text(
            'Compare Details',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back,
              color: primaryColor,
            ),
          ),
          actions: [
            SizedBox(
              width: 10,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
              child: Container(
                width: 50,
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  border: Border.all(color: primaryColor),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(
                  child: Text(
                    "Add",
                    style: TextStyle(
                        fontSize: 12,
                        color: primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => NotificationPg()));
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Container(
                    height: 25,
                    width: 25,
                    child: Image.asset('assets/icons/notification.png',
                        color: primaryColor)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Container(
                // height: 30,
                width: 40,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CompareDetailsList(imagepath: cityImg[0]),
                  CompareDetailsList(imagepath: cityImg[1]),
                ],
              ),
              SizedBox(
                height: 6.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CompareDetailsList(imagepath: cityImg[4]),
                  CompareDetailsList(imagepath: cityImg[5]),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
