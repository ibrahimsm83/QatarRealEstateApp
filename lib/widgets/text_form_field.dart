import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class CustomeTextFormField extends StatefulWidget {
  String? hintText;
  bool obscureText;
  String? Function(String?)? validator;
  CustomeTextFormField(
      {Key? key, this.hintText, this.validator, this.obscureText = false})
      : super(key: key);

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
    return TextFormField(
      validator: widget.validator,
      obscureText: _pwShow,
      decoration: InputDecoration(
        filled: true,
        isCollapsed: true,
        fillColor: whiteColor,
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
    );
  }
}
