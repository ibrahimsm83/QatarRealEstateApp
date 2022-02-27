import 'package:bonyanaldoha/utils/app_colors.dart';
import 'package:bonyanaldoha/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyOrderList extends StatelessWidget {
  final int index;
  final String address;

  const MyOrderList({
    Key? key,
    this.index = 0,
    this.address = "",
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
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            width: sizeWidth(context),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Package Name',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 12.sp),
                    ),
                    Icon(Icons.delete),
                  ],
                ),
                SizedBox(height: 10.0),
                SizedBox(
                  child: Text(
                    '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ''',
                    style: TextStyle(color: Colors.black87, fontSize: 10.sp),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(height: 10.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        "Price:",
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "\$200",
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
