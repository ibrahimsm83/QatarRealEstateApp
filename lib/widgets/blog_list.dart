import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:flutter/material.dart';

class BlogList extends StatelessWidget {
 final int index;
  final String address;
  final String imagepath;

 const BlogList({
    Key? key,
    this.index = 0,
    this.address = "",
    this.imagepath = "",
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
              Container(
                width: MediaQuery.of(context).size.width * 0.34,
                height: MediaQuery.of(context).size.height * 0.18,
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
              SizedBox(
                width: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Modern Apartment With Balcony',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    SizedBox(height: 3.0,),
                    SizedBox(
                     // color: Colors.red,
               
                     width:  MediaQuery.of(context).size.width * 0.55,
                      child: Text(
                        '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ''',
                        //address,
                        style: TextStyle(color: Colors.black87, fontSize: 12),
                        textAlign: TextAlign.start,
                        //maxLines: 5,
                      ),
                    ),
                    SizedBox(height: 8.0,),

                    Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        // color: primaryColor,
                        border: Border.all(color: primaryColor),

                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Center(
                        child: Text(
                          "Read More",
                          style: TextStyle(
                              fontSize: 12,
                              color: primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
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
