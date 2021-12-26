import 'package:bonyanaldoha/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomeDropDownButton extends StatelessWidget {
  final String label;
  final String value;
  final List<dynamic>? itemList;
  final Function(String?)? onChanged;

  const CustomeDropDownButton(
      {Key? key,
      this.label = "",
      this.value = "",
      this.onChanged,
      this.itemList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: sizeWidth(context) * 0.06),
      //  padding: EdgeInsets.fromLTRB(sizeWidth(context) * 0.06, 10, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            //'Buy Or Rent',
            style: TextStyle(
                fontSize: 10.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey, width: 1.5),
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
/*
class CustomeDropDownButton extends StatefulWidget {
  final String label;
  final String value;
  final List<dynamic> itemList;
  final Function(String?)? onChanged;

  const CustomeDropDownButton(
      {Key? key,
      this.label = "",
      this.value = "",
      this.onChanged,
      this.itemList=const[]})
      : super(key: key);

  @override
  State<CustomeDropDownButton> createState() => _CustomeDropDownButtonState();
}

class _CustomeDropDownButtonState extends State<CustomeDropDownButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: sizeWidth(context) * 0.06),
      //  padding: EdgeInsets.fromLTRB(sizeWidth(context) * 0.06, 10, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            //'Buy Or Rent',
            style: TextStyle(
                fontSize: 11.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey, width: 1.5),
            ),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: widget.value,
                iconSize: 36,
                isExpanded: true,
                onChanged: widget
                    .onChanged, // (value) => setState(() => this.value = value),
                items: List.generate(widget.itemList.length,
                    (index) => buildMenuItem(widget.itemList[index])),
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
          style: TextStyle(fontSize: 18, color: Colors.grey[700]),
        ),
      );
}
*/