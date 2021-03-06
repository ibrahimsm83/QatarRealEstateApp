import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class PropertyList extends StatefulWidget {
  final int index;
 final String address;
  final String imagepath;
 final String btntext;
 final  Function()? onTapArrow;

 const PropertyList({
    Key? key,
    this.index = 0,
    this.address = "",
    this.imagepath = "",
    this.btntext = "",
    this.onTapArrow,
  }) : super(key: key);

  @override
  _PropertyListState createState() => _PropertyListState();
}

class _PropertyListState extends State<PropertyList> {
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
          width: sizeWidth(context) * 0.8,
          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
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
                          widget.imagepath,
                          //houseImg[index - 1]
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
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          Row(
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
                                      widget.btntext,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
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
                                          fontSize: 12,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("QR4,475,300",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Row(
                            children: [
                              InkWell(
                                onTap: widget.onTapArrow,
                                child: Transform.rotate(
                                  angle: 130 * math.pi / 180,
                                  child: Row(
                                    children: const [
                                      CircleAvatar(
                                        maxRadius: 10,
                                        backgroundColor: Colors.transparent,
                                        child: Icon(
                                          Icons.arrow_back,
                                          size: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                      CircleAvatar(
                                        maxRadius: 10,
                                        backgroundColor: Colors.transparent,
                                        child: Icon(
                                          Icons.arrow_forward,
                                          size: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              CircleAvatar(
                                maxRadius: 10,
                                backgroundColor: Colors.transparent,
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                  child: CircleAvatar(
                                    maxRadius: 10,
                                    child: Icon(
                                      Icons.add,
                                      size: 16,
                                      color: Colors.white,
                                    ),
                                    backgroundColor: Colors.transparent,
                                  ),
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    shape: BoxShape.circle,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
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
                    Text(
                      widget.address,
                      style: TextStyle(color: primaryColor, fontSize: 12),
                      // overflow: TextOverflow.ellipsis,
                      // maxLines: 1,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/icons/bed.jpg'
                                          //houseImg[index - 1]
                                          )),
                                ),
                              ),
                              SizedBox(width: 2.0),
                              Text(
                                '2',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage('assets/icons/bathtap.png'
                                              //houseImg[index - 1]
                                              )),
                                ),
                              ),
                              SizedBox(width: 2.0),
                              Text(
                                '1',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/icons/car.png'
                                          //houseImg[index - 1]
                                          )),
                                ),
                              ),
                              SizedBox(width: 2.0),
                              Text(
                                '1',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage('assets/icons/triangle.png'
                                              //houseImg[index - 1]
                                              )),
                                ),
                              ),
                              SizedBox(width: 2.0),
                              Text(
                                '2,16 Sq m',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'COMMERCIAL',
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                        Container(
                          padding: const EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            // color: primaryColor,
                            border: Border.all(color: primaryColor),

                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Center(
                            child: Text(
                              "Details",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
