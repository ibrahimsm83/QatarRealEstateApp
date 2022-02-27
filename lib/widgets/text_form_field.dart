import 'package:bonyanaldoha/utils/app_colors.dart';
import 'package:bonyanaldoha/utils/app_strings.dart';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomeTextFormField extends StatefulWidget {
  String? hintText;
  bool obscureText;
  bool? enabled;
  double horizontalMergin;
  int maxLines;
  Color fillColor;
  TextInputType? keyboardType;
  String? Function(String?)? validator;
  CustomeTextFormField({
    Key? key,
    this.hintText,
    this.validator,
    this.keyboardType,
    this.maxLines = 1,
    this.enabled = true,
    this.fillColor = whiteColor,
    this.horizontalMergin = 0.06,
    this.obscureText = false,
  }) : super(key: key);

  @override
  State<CustomeTextFormField> createState() => _CustomeTextFormFieldState();
}

class _CustomeTextFormFieldState extends State<CustomeTextFormField> {
  late bool _pwShow;
  @override
  void initState() {
    _pwShow = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: sizeWidth(context) * widget.horizontalMergin),
      child: TextFormField(
        keyboardType: widget.keyboardType,
        validator: widget.validator,
        obscureText: _pwShow,
        maxLines: widget.maxLines,
        enabled: widget.enabled,
        decoration: InputDecoration(
          filled: true,
          isCollapsed: true,
          fillColor: widget.fillColor,
          hintText: widget.hintText,
          contentPadding: EdgeInsets.fromLTRB(14, 14.0, 0, 14.0),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: primaryColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: primaryColor)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: errorColor)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: errorColor)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: primaryColor)),
          suffixIcon: Visibility(
            visible: widget.obscureText,
            child: InkWell(
              onTap: () {
                setState(() {
                  _pwShow = !_pwShow;
                });
              },
              child: _pwShow
                  ? Icon(
                      Icons.visibility_off,
                      color: primaryColor,
                    )
                  : Icon(
                      Icons.visibility,
                      color: Colors.grey[700],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
