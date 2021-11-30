import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TextInputFieldC extends StatefulWidget {
  double height;
  double fontSize;
  String hinttext;
  bool obscuretext;
  TextInputFieldC({
    Key? key,
    this.height = 50,
    this.fontSize = 16,
    this.hinttext = "",
    this.obscuretext = false,
  }) : super(key: key);

  @override
  _TextInputFieldCState createState() => _TextInputFieldCState();
}

class _TextInputFieldCState extends State<TextInputFieldC> {
  final TextEditingController _controller = TextEditingController();
  bool _pwShow = false;
  @override
  void initState() {
    _pwShow = widget.obscuretext;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      child: TextFormField(
        controller: _controller,
        textAlign: TextAlign.start,
        obscureText: _pwShow,
        keyboardType: TextInputType.text,
        style: TextStyle(fontSize: widget.fontSize),
        decoration: InputDecoration(
          suffixIcon: Visibility(
            visible: widget.obscuretext,
            child: InkWell(
              onTap: () {
                setState(() {
                  _pwShow = !_pwShow;
                });
              },
              child: SvgPicture.asset(
                'assets/icons/eye.svg',
                color: Colors.grey[700],
              ),
            ),
          ),
          suffixIconConstraints: BoxConstraints(
            maxHeight: 20,
            maxWidth: 40,
            minWidth: 3,
            minHeight: 3,
          ),
          contentPadding:
              EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          hintText: widget.hinttext,
          fillColor: Color(0xfffafafa),
          filled: true,
          hintStyle: TextStyle(color: Colors.grey[500]),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: Colors.grey.shade300)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: primaryColor)
              ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            // borderSide: BorderSide(color: Colors.orange)
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            //borderSide: BorderSide(color: Colors.orange)
          ),
        ),
      ),
    );
  }
}
