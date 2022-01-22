
import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:bonyanaldoha/widgets/simple_appbar.dart';
import 'package:flutter/material.dart';

class TermOfUsePg extends StatefulWidget {
  const TermOfUsePg({Key? key}) : super(key: key);

  @override
  State<TermOfUsePg> createState() => _TermOfUsePgState();
}

class _TermOfUsePgState extends State<TermOfUsePg> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: SimpleAppBar(
          onTapLeading: () => Navigator.pop(context),
          backgroundColor: whiteColor,
          abtitle: "Term Of Use",
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => NotificationPg())),
        ),
        body: SingleChildScrollView(
          child: Container(
            // height: sizeheight(context),
            width: sizeWidth(context),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Term Of Use ",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      ''' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.''',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black45,
                        //fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      '''Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.''',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: sizeheight(context) * 0.01,
                  ),
                  Text(
                    "Acceptance Of Terms ",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  acceptanceOfTerms(text: 'Lorem ipsum dolor sit amet,'),
                  SizedBox(height: 10.0),
                  acceptanceOfTerms(
                      text: 'Consectetur adipiscing elit sed do eiusmod,'),
                  SizedBox(height: 10.0),
                  acceptanceOfTerms(
                      text: 'Tempor incididunt ut labore et dolore,'),
                  SizedBox(height: 10.0),
                  //   nisi ut aliquip ex ea commodo consequat.
                  acceptanceOfTerms(
                      text: 'Magna aliqua. Ut enim ad minim veniam,'),
                  SizedBox(height: 10.0),
                  acceptanceOfTerms(
                      text: 'Quis nostrud exercitation ullamco laboris,'),
                  SizedBox(height: 10.0),
                  acceptanceOfTerms(
                      text: 'Nisi ut aliquip ex ea commodo consequat,'),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    ''' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.''',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget acceptanceOfTerms({String? text}) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: primaryColor,
              //borderRadius: BorderRadius.circular(5.0),
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            text!,
            //"Lorem ipsum dolor sit amet, ",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black45,
            ),
          ),
        ],
      ),
    );
  }
}
