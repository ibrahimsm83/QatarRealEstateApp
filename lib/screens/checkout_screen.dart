import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/utils/index_utils.dart';
import 'package:bonyanaldoha/widgets/text_form_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Checkoutpage extends StatefulWidget {
  const Checkoutpage({Key? key}) : super(key: key);
  @override
  _CheckoutpageState createState() => _CheckoutpageState();
}

class _CheckoutpageState extends State<Checkoutpage> {
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar(
          backgroundColor: whiteColor,
          abtitle: "Checkout",
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => NotificationPg())),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 1.h),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                      child: Text(
                        "Billing Details",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(12.0, 12.0, 0, 8.0),
                      child: richText(label: 'Your Name'),
                    ),
                    //FirstName
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            child: Container(
                              // width: sizeWidth(context) * 0.42,
                              child: rowTextFiled(hinttext: "First  Name"),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Flexible(
                            child: Container(
                              //  width: sizeWidth(context) * 0.42,
                              child: rowTextFiled(hinttext: "Last Name"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //Email
                Column(
                  children: [
                    SizedBox(height: 10.0),
                    //Phone Number
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                              padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                              child: Text(
                                "Company name (optional)",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              )
                              // richText(label: 'Phone Number'),
                              ),
                        ),
                        CustomeTextFormField(
                          horizontalMergin: 0.03,
                          hintText: 'Company name',
                          validator: (String? val) {
                            if (val == null || val.isEmpty) {
                              return '';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                            child: richText(label: 'Country / Region'),
                          ),
                        ),
                        CustomeTextFormField(
                          horizontalMergin: 0.03,
                          hintText: 'Country / Region',
                          validator: (String? val) {
                            if (val == null || val.isEmpty) {
                              return '';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                            child: richText(label: 'Street Address'),
                          ),
                        ),
                        CustomeTextFormField(
                          horizontalMergin: 0.03,
                          hintText: 'Street Address',
                          validator: (String? val) {
                            if (val == null || val.isEmpty) {
                              return '';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                            child: richText(label: 'State / Country'),
                          ),
                        ),
                        CustomeTextFormField(
                          horizontalMergin: 0.03,
                          hintText: 'State / Country',
                          validator: (String? val) {
                            if (val == null || val.isEmpty) {
                              return '';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),

                    //-------------------------------town postcode

                    // //FirstName
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(
                                      12.0, 8.0, 0, 8.0),
                                  child: richText(label: 'Town / City'),
                                ),
                                rowTextFiled(hinttext: "Town / City"),
                              ],
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(
                                      12.0, 8.0, 0, 8.0),
                                  child: richText(label: 'Postcode / ZIP'),
                                ),
                                rowTextFiled(hinttext: "Postcode / ZIP"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //   ],
                    // ),
                    SizedBox(width: 10.0),
                    //-------------------------------end town postcode
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                            child: richText(label: 'Email Address'),
                          ),
                        ),
                        CustomeTextFormField(
                          horizontalMergin: 0.03,
                          hintText: 'Email Address',
                          validator: (String? val) {
                            if (val == null || val.isEmpty) {
                              return '';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 10.0,
                    ),
                    //Phone Number
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                            child: richText(label: 'Phone Number'),
                          ),
                        ),
                        CustomeTextFormField(
                          horizontalMergin: 0.03,
                          hintText: 'Phone Number',
                          validator: (String? val) {
                            if (val == null || val.isEmpty) {
                              return '';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    //MessageBox
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 1.h),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, top: 0.0),
                          child: Text(
                            "Additional Information",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                              padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                              child: Text(
                                "Order notes (optional)",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              )),
                        ),
                        CustomeTextFormField(
                          horizontalMergin: 0.03,
                          hintText: 'Note about your order e.g',
                          maxLines: 5,
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 0.0),
                        child: Text(
                          " Your Order",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: primaryColor, width: 1.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        "Product",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Subtotal",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Payment for Package 'Plus' X 1",
                                        style: TextStyle(
                                            color: Colors.grey[700]),
                                      ),
                                      Text(
                                        "100QR",
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Subtotal"),
                                      Text(
                                        "100QR",
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Total"),
                                      Text(
                                        "100QR",
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                          child: Text(
                            "Directed Bank transfer",
                            style:
                                TextStyle(color: Colors.black, fontSize: 16),
                          )),
                    ),
                    //switch
                    SizedBox(
                      height: 10.0,
                    ),

                    Padding(
                      padding:
                          EdgeInsets.only(left: sizeWidth(context) * 0.04),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40.0,
                            width: 40.0,
                            child: Checkbox(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: rememberMe,
                              activeColor: primaryColor,
                              onChanged: (value) => setState(
                                () => rememberMe = value!,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: SizedBox(
                              width: sizeWidth(context) * 0.7,
                              child: Text(
                                'I would like to receive exclusive emails with discounts and product information',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                      
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            text:
                                'Your Personal data will be used to process your order, support Your experience thought this website, and for the other purpose described in our ',
                            // textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.grey[700], fontSize: 10.sp),
                            children: <TextSpan>[
                              TextSpan(
                                text: ('Privacy Policy.'),
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: primaryColor,
                                    fontSize: 14),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (BuildContext context) =>
                                    //             SignupScreen()));
                                  },
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: sizeWidth(context),
                      margin: EdgeInsets.symmetric(
                          horizontal: sizeWidth(context) * 0.06),
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      child: ElevatedButton(
                        child: Text(
                          'Place ORDER',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: primaryColor,
                          textStyle: TextStyle(
                            fontSize: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget richText({String? label}) {
    return RichText(
      text: TextSpan(
          text: label,
          style: TextStyle(color: Colors.black, fontSize: 18),
          children: const [
            TextSpan(
              text: '*',
              style: TextStyle(color: Colors.red, fontSize: 18),
            ),
          ]),
    );
  }

  Widget rowTextFiled({String? hinttext}) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hinttext!, //"Town / City",
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
      ),
    );
  }

  PreferredSizeWidget? appbar(
      {Function()? onTap, String? abtitle, Color? backgroundColor}) {
    return AppBar(
      titleSpacing: 0,
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor,
      // Colors.white,
      elevation: 1.0,
      title: Text(
        abtitle!,
        style: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      leading: InkWell(
        onTap: () => Navigator.pop(context),
        child: Icon(
          Icons.arrow_back,
          color: primaryColor,
          size: 28.0,
        ),
      ),
      actions: [
        SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
          child: Container(
            width: 50,
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              border: Border.all(color: primaryColor),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Center(
              child: Text(
                "Add",
                style: TextStyle(
                    fontSize: 12,
                    color: primaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: SizedBox(
                height: 25,
                width: 25,
                child: Image.asset('assets/icons/notification.png',
                    color: primaryColor)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Container(
            // height: 30,
            width: 40,
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage('assets/images/profile.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
