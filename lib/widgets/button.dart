import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  final String? buttonText;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? buttonTextcolor;

  const AppButton({
    Key? key,
    this.buttonText,
    this.fontWeight = FontWeight.bold,
    this.fontSize = 16.0,
    this.buttonTextcolor = Colors.black,
  }) : super(key: key);

  @override
  _AppButtonState createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeWidth(context),
      margin: EdgeInsets.symmetric(horizontal: sizeWidth(context) * 0.06),
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
      ),
      child: ElevatedButton(
        child: Text(
          widget.buttonText!,
          // 'SUBMIT NOW',
          style: TextStyle(
            color: widget.buttonTextcolor,
            fontWeight: widget.fontWeight,
          ),
        ),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: primaryColor,
          textStyle: TextStyle(
            fontSize: widget.fontSize,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
