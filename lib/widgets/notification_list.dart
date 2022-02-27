import 'package:bonyanaldoha/utils/app_strings.dart';
import 'package:flutter/material.dart';

class NotificationList extends StatelessWidget {
  final int index;
  final String titleN;
  final String imagepath;
  final String dateTime;
  final String subtitleN;

  const NotificationList({
    Key? key,
    this.index = 0,
    this.titleN = "",
    this.imagepath = "",
    this.subtitleN = "",
    this.dateTime = 'Today 12:30 pm',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, 'HouseDetails');
      },
      child: Card(
        elevation: 2.5,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Container(
          width: sizeWidth(context),
          // margin: EdgeInsets.symmetric(
          //     horizontal: 10.0, vertical: 10.0),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //image
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.28,
                  height: MediaQuery.of(context).size.height * 0.13,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                          topRight: Radius.circular(10.0)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            // 'assets/images/city3.jpg',
                            imagepath,
                            //houseImg[index - 1]
                          ))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      titleN,
                      // 'Modern Apartment With Balcony',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    SizedBox(
                      // color: Colors.red,

                      width: MediaQuery.of(context).size.width * 0.60,
                      child: Text(
                        subtitleN,
                        //'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ''',
                        //titleN,
                        style: TextStyle(color: Colors.black87, fontSize: 12),
                        textAlign: TextAlign.start,
                        //maxLines: 5,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        dateTime,
                        // "Read More",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
