import 'package:bonyanaldoha/screens/login_screen.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:bonyanaldoha/widgets/text_form_field.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class VerificationScreen extends StatelessWidget {
  final formKeyotp = GlobalKey<FormState>();

  VerificationScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Login_screen.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          // ignore: deprecated_member_use
          brightness: Brightness.dark,
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            'Verification',
            style: TextStyle(color: Colors.black),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formKeyotp,
            child: Padding(
              padding: EdgeInsets.only(top: sizeheight(context) * 0.12),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: sizeWidth(context) * 0.2),
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/logo.png',
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      'Enter verification Code to reset your password',
                      //style: textStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomeTextFormField(
                    hintText: 'Enter Code',
                    keyboardType: TextInputType.number,
                    validator: (String? val) {
                      if (val == null || val.isEmpty) {
                        return '';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: sizeWidth(context),
                    margin: EdgeInsets.symmetric(
                      horizontal: 25.0,
                    ),
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: ElevatedButton(
                      child: Text(
                        'Verify',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        if (formKeyotp.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Verified ')));
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      LoginScreen()));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        textStyle: TextStyle(
                          fontSize: 14,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Text(
                      "Didn't Received Yet?",
                      //  style: textStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Resend Now',
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
