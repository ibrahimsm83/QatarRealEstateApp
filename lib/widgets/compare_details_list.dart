import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:flutter/material.dart';

class CompareDetailsList extends StatelessWidget {
  final String imagepath;
  const CompareDetailsList({Key? key, this.imagepath = ""}) : super(key: key);
  
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
          width: sizeWidth(context) * 0.46,
          margin: EdgeInsets.symmetric(horizontal: 3.0, vertical: 10.0),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                        topRight: Radius.circular(10.0)),
                    image: DecorationImage(
                        colorFilter:
                            ColorFilter.mode(Colors.black26, BlendMode.darken),
                        fit: BoxFit.cover,
                        image: AssetImage(
                          //'assets/images/city5.jpg',
                          imagepath,
                         
                        ))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(5.0),
                              height: 25,
                              decoration: BoxDecoration(
                                color: Color(0xff7498d3),
                                borderRadius: BorderRadius.circular(1.0),
                              ),
                              child: Center(
                                child: Text(
                                  "FEATURED",
                                  // widget.btntext,
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(5.0),
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade600,
                                borderRadius: BorderRadius.circular(1.0),
                              ),
                              child: Center(
                                child: Text(
                                  'DELETE',
                                  // widget.btntext,
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(5.0),
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade600,
                                borderRadius: BorderRadius.circular(1.0),
                              ),
                              child: Center(
                                child: Text(
                                  "BUY",
                                  // widget.btntext,
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(5.0),
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade600,
                                borderRadius: BorderRadius.circular(1.0),
                              ),
                              child: Center(
                                child: Text(
                                  "HOT OFFER",
                                  // widget.btntext,
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Modern Apartment With Balcony',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: const [
                        Text(
                          'PRICE :',
                          // widget.address,
                          style: TextStyle(color: Colors.black, fontSize: 12),
                          // overflow: TextOverflow.ellipsis,
                          // maxLines: 1,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text("QR4,475,300",
                            style: TextStyle(
                                fontSize: 12,
                                color: primaryColor,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'TYPE :',
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          'COMMERCIAL',
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    housedetails('assets/icons/triangle.png',
                        "Area: 2,1645 sqm", context),
                    SizedBox(
                      height: 2,
                    ),
                    housedetails(
                        'assets/icons/bed.jpg', "Bed Room :05", context),
                    SizedBox(
                      height: 2,
                    ),
                    housedetails(
                        'assets/icons/bathtap.png', "Bath Room :03", context),
                    SizedBox(
                      height: 2,
                    ),
                    housedetails(
                        'assets/icons/car.png', "Car Garage :03", context),
                    SizedBox(
                      height: 2,
                    ),
                    housedetails('assets/icons/footerlocation.png',
                        "The pearl-Qatae,Doha,Qatar", context),
                    SizedBox(
                      height: 5,
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

  Widget housedetails(String iconpath, String detail, BuildContext context) {
    return Row(
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                iconpath,

                //'assets/icons/bed.jpg'
                //houseImg[index - 1]
              ),
            ),
          ),
        ),
        SizedBox(width: 3.0),
        SizedBox(
          width: sizeWidth(context) * 0.28,
          child: Text(
            detail,
            style: TextStyle(color: Colors.grey, fontSize: 13),
          ),
        ),
      ],
    );
  }
}
