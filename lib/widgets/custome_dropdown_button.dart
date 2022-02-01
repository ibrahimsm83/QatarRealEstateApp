import 'dart:ui';

import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomeDropDownButton extends StatelessWidget {
  final String label;
  final String value;
  final double? fontSize;
  final List<dynamic>? itemList;
  final FontWeight? fontWeight;
  final Function(String?)? onChanged;

  const CustomeDropDownButton({
    Key? key,
    this.label = "",
    this.value = "",
    this.fontSize = 10,
    this.onChanged,
    this.itemList,
    this.fontWeight = FontWeight.bold,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: sizeWidth(context) * 0.06),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
                fontSize: fontSize!.sp,
                color: Colors.black,
                fontWeight: fontWeight),
          ),
          SizedBox(height: label.isEmpty ? 0.0 : 8.0),
          Container(
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: primaryColor, width: 1.5),
            ),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: value,
                iconSize: 32,
                isExpanded: true,
                onChanged:
                    onChanged, // (value) => setState(() => this.value = value),
                items: List.generate(itemList!.length,
                    (index) => buildMenuItem(itemList![index])),
              ),
            ),
          ),
        ],
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontSize: 16, color: Colors.grey[700]),
        ),
      );
}
