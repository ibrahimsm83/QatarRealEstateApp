import 'package:flutter/material.dart';
import 'package:bonyanaldoha/utils/index_utils.dart';
import 'package:bonyanaldoha/screens/index_screens.dart';
import 'package:bonyanaldoha/widgets/simple_appbar.dart';

class AboutPg extends StatefulWidget {
  const AboutPg({Key? key}) : super(key: key);
  @override
  State<AboutPg> createState() => _AboutPgState();
}

class _AboutPgState extends State<AboutPg> {
  List teamMember = [
    {
      'image': 'assets/images/profile.jpg',
      'title': 'Kathleen Grant',
      'subtitle': 'Funder',
    },
    {
      'image': 'assets/images/user3.jpg',
      'title': 'Keith Bailey',
      'subtitle': 'CEO',
    },
    {
      'image': 'assets/images/user3.jpg',
      'title': 'Danielle Murray',
      'subtitle': 'Manager',
    },
    {
      'image': 'assets/images/profile.jpg',
      'title': 'Thomas Stevens',
      'subtitle': 'Manager',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: SimpleAppBar(
            onTapLeading: () => Navigator.pop(context),
            backgroundColor: whiteColor,
            abtitle: "About Us",
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
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
                        width: sizeWidth(context) * 0.4,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        child: ElevatedButton(
                          child: Text(
                            'CONTACT US',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: primaryColor,
                            textStyle: TextStyle(
                              fontSize: 16,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: sizeheight(context) * 0.01,
                    ),
                    Divider(
                      height: 1.0,
                      color: Colors.grey,
                    ),
                    Text(
                      "Meet Our Team ",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.0),
                    Text('Lorem ipsum dolor sit amet,'),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        temaMemberinfo(index: 0),
                        temaMemberinfo(index: 1),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        temaMemberinfo(index: 2),
                        temaMemberinfo(index: 3),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget temaMemberinfo({int? index}) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 2.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.16,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                        topRight: Radius.circular(10.0)),
                    image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage(
                          teamMember[index!]['image'],
                        ))),
              ),
              Text(
                teamMember[index]['title'],
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 3.0),
              Text(
                teamMember[index]['subtitle'],
                style: TextStyle(
                  fontSize: 14,
                  color: primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
