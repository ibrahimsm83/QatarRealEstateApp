//Update List-a property screen into add property screen.dart

import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:bonyanaldoha/widgets/custome_dropdown_button.dart';
import 'package:bonyanaldoha/widgets/simple_appbar.dart';
import 'package:bonyanaldoha/widgets/text_form_field.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AddPropertyScreen extends StatefulWidget {
  const AddPropertyScreen({Key? key}) : super(key: key);

  @override
  _AddPropertyScreenState createState() => _AddPropertyScreenState();
}

class _AddPropertyScreenState extends State<AddPropertyScreen> {
  final typeList = ['Select', 'option1', 'option2'];
  final statusList = ['Select', 'option1', 'option2'];
  final lableList = ['Select', 'option1', 'option2'];
  String type = 'Select';
  String status = 'Select';
  String label = 'Select';
  bool airCondition = false;
  bool landry = false;
  bool refigerator = false;
  bool washer = false;
  bool brabeque = false;
  bool lawn = false;
  bool sauna = false;
  bool wifi = false;
  bool dryer = false;
  bool microwave = false;
  bool swimingPhool = false;
  bool windowCovering = false;
  bool gym = false;
  bool outdoorShower = false;
  bool tvTable = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: SimpleAppBar(
          onTapLeading: () => Navigator.pop(context),
          backgroundColor: whiteColor,
          abtitle: "Add property",
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => NotificationPg())),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 2.h),
                Text("Your Information",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 12.sp)),
                SizedBox(height: 1.h),
                description(),
                SizedBox(height: 2.h),
                Text("Price",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 12.sp)),
                SizedBox(height: 1.h),
                price(),
                SizedBox(height: 2.h),
                Text("Media",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 12.sp)),
                SizedBox(height: 1.h),
                media(),
                SizedBox(height: 2.h),
                Text("Video",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 12.sp)),
                SizedBox(height: 1.h),
                video(),
                SizedBox(height: 2.h),
                Text("Details",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 12.sp)),
                SizedBox(height: 1.h),
                details(),
                SizedBox(height: 2.h),
                Text("Additional Details",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 12.sp)),
                SizedBox(height: 1.h),
                additionalDetails(),
                SizedBox(height: 2.h),
                otherFeature(),
                SizedBox(height: 2.h),
                Text(
                  "Address",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                address(),
                SizedBox(height: 2.h),
                submitbutton(),
                SizedBox(height: 2.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget description() {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
                child: Text("Property Title*",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                //richText(label: 'Phone Number'),
              ),
            ),
            CustomeTextFormField(
              horizontalMergin: 0.00,
              hintText: 'Enter Your Property Tittle',
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
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
                child: Text("Content",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                // richText(label: 'Your Message'),
              ),
            ),
            CustomeTextFormField(
              horizontalMergin: 0.00,
              hintText: 'Enter the Message',
              maxLines: 5,
            ),
          ],
        ),
        SizedBox(height: 8.0),
        CustomeDropDownButton(
            horizantalmergin: 0.0,
            label: 'Type*',
            value: type,
            itemList: typeList,
            onChanged: (String? value) {
              return setState(
                () => type = value!,
              );
            }),
        SizedBox(height: 10.0),
        CustomeDropDownButton(
            horizantalmergin: 0.0,
            label: 'Status*',
            value: status,
            itemList: statusList,
            onChanged: (String? value) {
              return setState(
                () => status = value!,
              );
            }),
        SizedBox(height: 10.0),
        CustomeDropDownButton(
            horizantalmergin: 0.0,
            label: 'Label*',
            value: label,
            itemList: lableList,
            onChanged: (String? value) {
              return setState(
                () => label = value!,
              );
            }),
        SizedBox(height: 10.0),
      ],
    );
  }

  Widget price() {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
                child: Text("Sale or Rent Price*",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                //richText(label: 'Phone Number'),
              ),
            ),
            CustomeTextFormField(
              horizontalMergin: 0.00,
              hintText: 'Enter The Price',
              validator: (String? val) {
                if (val == null || val.isEmpty) {
                  return '';
                }
                return null;
              },
            ),
          ],
        ),
        //second price
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
                child: Text("Second Price (Optional)",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                //richText(label: 'Phone Number'),
              ),
            ),
            CustomeTextFormField(
              horizontalMergin: 0.00,
              hintText: 'Enter The Price',
              validator: (String? val) {
                if (val == null || val.isEmpty) {
                  return '';
                }
                return null;
              },
            ),
          ],
        ),
        //After The Price
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
                child: Text("After The Price",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                //richText(label: 'Phone Number'),
              ),
            ),
            CustomeTextFormField(
              horizontalMergin: 0.00,
              hintText: 'Enter After The Price',
              validator: (String? val) {
                if (val == null || val.isEmpty) {
                  return '';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 15.0, bottom: 8.0),
              child: Text(
                'For Example Monthly',
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
        //price prefix
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
                child: Text("Price Prefix",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                //richText(label: 'Phone Number'),
              ),
            ),
            CustomeTextFormField(
              horizontalMergin: 0.00,
              hintText: 'Enter The Price Prefix',
              validator: (String? val) {
                if (val == null || val.isEmpty) {
                  return '';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 15.0, bottom: 8.0),
              child: Text(
                'For Example Start From',
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget media() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Drag and drop the images to cutomize the image gallery order.",
          ),
        ),
        DottedBorder(
          color: Colors.black45,
          radius: Radius.circular(12),
          borderType: BorderType.RRect,
          padding: EdgeInsets.all(6),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            child: Container(
              width: sizeWidth(context),
              height: 200,
              color: whiteColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.image,
                    size: 60,
                  ),
                  Text(
                    "Select the gallery Image here",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 35.0,
                    width: sizeWidth(context) / 2.5,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 4.0),
                      child: Center(
                          child: Text(
                        "SELECT",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Click on the star icon to select the cover images.",
          ),
        ),
      ],
    );
  }

  Widget video() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
            child: Text("After The Price",
                style: TextStyle(fontWeight: FontWeight.bold)),
            //richText(label: 'Phone Number'),
          ),
        ),
        CustomeTextFormField(
          horizontalMergin: 0.00,
          hintText: 'Enter After The Price',
          validator: (String? val) {
            if (val == null || val.isEmpty) {
              return '';
            }
            return null;
          },
        ),
        Container(
          padding: EdgeInsets.fromLTRB(15.0, 8.0, 0, 8.0),
          child: Text(
              "For Example : https://www.youtube.com/watch?v=llD0fUrr9tI",
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.black45)),
          //richText(label: 'Phone Number'),
        ),
      ],
    );
  }

  Widget details() {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
                child: Text("Bedrooms",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                //richText(label: 'Phone Number'),
              ),
            ),
            CustomeTextFormField(
              horizontalMergin: 0.00,
              hintText: 'Enter No. of Bedrooms',
              validator: (String? val) {
                if (val == null || val.isEmpty) {
                  return '';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 15.0, bottom: 8.0),
              child: Text(
                'Only Digits',
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
        //second price
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
                child: Text("Bathrooms",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                //richText(label: 'Phone Number'),
              ),
            ),
            CustomeTextFormField(
              horizontalMergin: 0.00,
              hintText: 'Enter No. of Bathrooms',
              validator: (String? val) {
                if (val == null || val.isEmpty) {
                  return '';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 15.0, bottom: 8.0),
              child: Text(
                'Only Digits',
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
        //After The Price
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
                child: Text("Area Size*",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                //richText(label: 'Phone Number'),
              ),
            ),
            CustomeTextFormField(
              horizontalMergin: 0.00,
              hintText: 'Enter Property Area Size',
              validator: (String? val) {
                if (val == null || val.isEmpty) {
                  return '';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 15.0, bottom: 8.0),
              child: Text(
                'Only Digits',
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
        //price prefix
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
                child: Text("Area Postfix",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                //richText(label: 'Phone Number'),
              ),
            ),
            CustomeTextFormField(
              horizontalMergin: 0.00,
              hintText: 'm2',
              enabled: false,
              fillColor: Colors.grey.shade300,
              validator: (String? val) {
                if (val == null || val.isEmpty) {
                  return '';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 15.0, bottom: 8.0),
              child: Text(
                'For Example Sq Ft',
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
                child: Text("Land Area",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                //richText(label: 'Phone Number'),
              ),
            ),
            CustomeTextFormField(
              horizontalMergin: 0.00,
              hintText: 'Enter Property Land Area',
              validator: (String? val) {
                if (val == null || val.isEmpty) {
                  return '';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 15.0, bottom: 8.0),
              child: Text(
                'Only Digits',
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
                child: Text("Land Area Size Postfix",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                //richText(label: 'Phone Number'),
              ),
            ),
            CustomeTextFormField(
              horizontalMergin: 0.00,
              hintText: 'm2',
              enabled: false,
              fillColor: Colors.grey.shade300,
              validator: (String? val) {
                if (val == null || val.isEmpty) {
                  return '';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 15.0, bottom: 8.0),
              child: Text(
                'For Example Sq Ft',
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
                child: Text("Garages",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                //richText(label: 'Phone Number'),
              ),
            ),
            CustomeTextFormField(
              horizontalMergin: 0.00,
              hintText: 'Enter No. OF Garages',
              validator: (String? val) {
                if (val == null || val.isEmpty) {
                  return '';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 15.0, bottom: 8.0),
              child: Text(
                'Only Digits',
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
                child: Text("Garage Area",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                //richText(label: 'Phone Number'),
              ),
            ),
            CustomeTextFormField(
              horizontalMergin: 0.00,
              hintText: 'Enter Garage Area',
              validator: (String? val) {
                if (val == null || val.isEmpty) {
                  return '';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 15.0, bottom: 8.0),
              child: Text(
                'For Example 200 Sq Ft',
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
                child: Text("Year Built",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                //richText(label: 'Phone Number'),
              ),
            ),
            CustomeTextFormField(
              horizontalMergin: 0.00,
              hintText: 'Enter Year Built',
              validator: (String? val) {
                if (val == null || val.isEmpty) {
                  return '';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 15.0, bottom: 8.0),
              child: Text(
                'Only Digits',
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget additionalDetails() {
    return DottedBorder(
      color: Colors.black45,
      radius: Radius.circular(12),
      borderType: BorderType.RRect,
      padding: EdgeInsets.all(6),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        child: Container(
          width: sizeWidth(context),
          color: whiteColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Icon(
              //   Icons.image,
              //   size: 60,
              // ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
                      child: Text("Tittle",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      //richText(label: 'Phone Number'),
                    ),
                  ),
                  CustomeTextFormField(
                    horizontalMergin: 0.04,
                    //hintText: 'Enter The Price',
                    validator: (String? val) {
                      if (val == null || val.isEmpty) {
                        return '';
                      }
                      return null;
                    },
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
                      child: Text("Value",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      //richText(label: 'Phone Number'),
                    ),
                  ),
                  CustomeTextFormField(
                    horizontalMergin: 0.04,
                    //hintText: 'Enter The Price',
                    validator: (String? val) {
                      if (val == null || val.isEmpty) {
                        return '';
                      }
                      return null;
                    },
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              Container(
                height: 35.0,
                width: sizeWidth(context) / 2.5,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 4.0),
                  child: Center(
                      child: Text(
                    "ADD NEW",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget otherFeature() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(" Other Features",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 2.h),
                FeatureBullet(
                  text: "Air Conditioning",
                  value: airCondition,
                  onChanged: (value) => setState(
                    () => airCondition = value!,
                  ),
                ),
                SizedBox(height: 1.h),
                FeatureBullet(
                  text: "Landry",
                  value: landry,
                  onChanged: (value) => setState(
                    () => landry = value!,
                  ),
                ),
                SizedBox(height: 1.h),
                FeatureBullet(
                  text: "Refrigerator",
                  value: refigerator,
                  onChanged: (value) => setState(
                    () => refigerator = value!,
                  ),
                ),
                SizedBox(height: 1.h),
                FeatureBullet(
                  text: "Washer",
                  value: washer,
                  onChanged: (value) => setState(
                    () => washer = value!,
                  ),
                ),
                SizedBox(height: 1.h),
                FeatureBullet(
                  text: "Barbeque",
                  value: brabeque,
                  onChanged: (value) => setState(
                    () => brabeque = value!,
                  ),
                ),
                SizedBox(height: 1.h),
                FeatureBullet(
                  text: "Lawn",
                  value: lawn,
                  onChanged: (value) => setState(
                    () => lawn = value!,
                  ),
                ),
                SizedBox(height: 1.h),
                FeatureBullet(
                  text: "Sauna",
                  value: sauna,
                  onChanged: (value) => setState(
                    () => sauna = value!,
                  ),
                ),
                SizedBox(height: 1.h),
                FeatureBullet(
                  text: "WiFi",
                  value: wifi,
                  onChanged: (value) => setState(
                    () => wifi = value!,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FeatureBullet(
                  text: "Dryer",
                  value: dryer,
                  onChanged: (value) => setState(
                    () => dryer = value!,
                  ),
                ),
                SizedBox(height: 1.h),
                FeatureBullet(
                  text: "Microwave",
                  value: microwave,
                  onChanged: (value) => setState(
                    () => microwave = value!,
                  ),
                ),
                SizedBox(height: 1.h),
                FeatureBullet(
                  text: "Swiming Phool",
                  value: swimingPhool,
                  onChanged: (value) => setState(
                    () => swimingPhool = value!,
                  ),
                ),
                SizedBox(height: 1.h),
                FeatureBullet(
                  text: "Window Covering",
                  value: windowCovering,
                  onChanged: (value) => setState(
                    () => windowCovering = value!,
                  ),
                ),
                SizedBox(height: 1.h),
                FeatureBullet(
                  text: "Gym",
                  value: gym,
                  onChanged: (value) => setState(
                    () => gym = value!,
                  ),
                ),
                SizedBox(height: 1.h),
                FeatureBullet(
                  text: "Outdoor shower",
                  value: outdoorShower,
                  onChanged: (value) => setState(
                    () => outdoorShower = value!,
                  ),
                ),
                SizedBox(height: 1.h),
                FeatureBullet(
                  text: "TV Table",
                  value: tvTable,
                  onChanged: (value) => setState(
                    () => tvTable = value!,
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }

  Widget FeatureBullet(
      {String? text,
      required void Function(bool?)? onChanged,
      required bool? value}) {
    return Row(
      children: [
        SizedBox(
          height: 40.0,
          width: 40.0,
          child: Checkbox(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            value: value,
            activeColor: primaryColor,
            onChanged: onChanged,
          ),
        ),
        SizedBox(width: 10.0),
        Text(
          text!,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget address() {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
                child: Text("Address",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
            CustomeTextFormField(
              horizontalMergin: 0.0,
              hintText: 'Enter Your Address',
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
                padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
                child: richText(label: 'Country / Region'),
              ),
            ),
            CustomeTextFormField(
              horizontalMergin: 0.00,
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
                padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
                child: richText(label: 'City'),
              ),
            ),
            CustomeTextFormField(
              horizontalMergin: 0.0,
              hintText: 'Enter City',
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
                padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
                child: richText(label: 'Area'),
              ),
            ),
            CustomeTextFormField(
              horizontalMergin: 0.0,
              hintText: 'Enter Area',
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
                padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
                child: richText(label: 'Pascode / ZIP'),
              ),
            ),
            CustomeTextFormField(
              horizontalMergin: 0.0,
              hintText: 'Enter Pascode / ZIP',
              validator: (String? val) {
                if (val == null || val.isEmpty) {
                  return '';
                }
                return null;
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget submitbutton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Container(
            height: 40.0,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 4.0),
              child: Center(
                  child: Text(
                "CANCEL",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ),
          ),
        ),
        SizedBox(width: 4.w),
        Flexible(
          child: Container(
            height: 40.0,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 4.0),
              child: Center(
                  child: Text(
                "SUBMIT PROPERTY",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ),
          ),
        ),
      ],
    );
  }

  Widget richText({String? label}) {
    return RichText(
      text: TextSpan(
          text: label,
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          children: const [
            TextSpan(
              text: '*',
              style: TextStyle(color: Colors.red, fontSize: 18),
            ),
          ]),
    );
  }
}
