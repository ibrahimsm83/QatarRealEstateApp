import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:bonyanaldoha/utils/index_utils.dart';
import 'package:bonyanaldoha/widgets/index_widgets.dart';
import 'package:bonyanaldoha/screens/index_screens.dart';

class AddNewInquiries extends StatefulWidget {
  const AddNewInquiries({Key? key}) : super(key: key);

  @override
  _AddNewInquiriesState createState() => _AddNewInquiriesState();
}

class _AddNewInquiriesState extends State<AddNewInquiries> {
  final items1 = ['Select', 'Group 1', 'Group 2'];
  final items2 = ['Select', 'Group 1', 'Group 2'];

  String val1 = 'Select';
  String val2 = 'Select';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        onTapLeading: () => Navigator.pop(context),
        backgroundColor: whiteColor,
        abtitle: "Add New Inquiry",
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => NotificationPg())),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.brown[50],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 3.h),
                  Container(
                    height: 12.h,
                    width: 12.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('$imgpath/profile.jpg'),
                          fit: BoxFit.contain,
                        ),
                        color: Color(0xffd8b476),
                        // color: primaryColor,
                        shape: BoxShape.circle),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "John Smith ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14.sp),
                    ),
                  ),
                  SizedBox(height: 5),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Agency",
                      style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                    ),
                  ),
                  SizedBox(height: 3.h),
                ],
              ),
            ),
            SizedBox(height: 3.h),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: sizeWidth(context) * 0.06),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Add New Inquiry",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 2.h),
                  CustomeDropDownButton(
                      horizantalmergin: 0.0,
                      label: constanText['Contact'],
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      value: val1,
                      itemList: items1,
                      onChanged: (String? value) {
                        return setState(
                          () => val1 = value!,
                        );
                      }),
                  SizedBox(height: 2.h),
                  Text(
                    constanText['Information'],
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 2.h),
                  CustomeDropDownButton(
                      horizantalmergin: 0.0,
                      label: constanText['Inquiry_Type'],
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      value: val1,
                      itemList: items1,
                      onChanged: (String? value) {
                        return setState(
                          () => val1 = value!,
                        );
                      }),
                  SizedBox(height: 2.h),
                  CustomeDropDownButton(
                      horizantalmergin: 0.0,
                      label: constanText['Property_Type'],
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      value: val1,
                      itemList: items1,
                      onChanged: (String? value) {
                        return setState(
                          () => val1 = value!,
                        );
                      }),
                  SizedBox(height: 3.h),
                  inputrowbox(
                      label: constanText['Price'],
                      hinttext1: "From",
                      hinttext2: "To"),
                  SizedBox(height: 2.h),
                  inputrowbox(
                      label: constanText['Bedrooms'],
                      hinttext1: "Min",
                      hinttext2: "Max"),
                  SizedBox(height: 2.h),
                  inputrowbox(
                      label: constanText['Bathrooms'],
                      hinttext1: "Min",
                      hinttext2: "Max"),
                  SizedBox(height: 2.h),
                  inputrowbox(
                      label: constanText['Area_Size'],
                      hinttext1: "Min",
                      hinttext2: "Max"),
                  SizedBox(height: 2.h),
                  //Address
                  address(),
                  SizedBox(height: 3.h),
                  AppButton(
                    buttonText: "Save",
                    fontSize: 16,
                  )
                ],
              ),
            ),
            SizedBox(height: 3.h),
          ],
        ),
      ),
    );
  }

  Widget inputrowbox({String? label, String? hinttext1, String? hinttext2}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
          child: richText(label: label),
        ),
        //FirstName
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: SizedBox(
                  // width: sizeWidth(context) * 0.42,
                  child: TextFormField(
                    decoration: InputDecoration(
                      // hintText: "First Name",
                      hintText: hinttext1,
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
                  ),
                ),
              ),
              SizedBox(width: 10.0),
              Flexible(
                child: SizedBox(
                  //  width: sizeWidth(context) * 0.42,
                  child: TextFormField(
                    decoration: InputDecoration(
                      // hintText: "Last Name",
                      hintText: hinttext2,
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
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget headingText({String? heading}) {
    return Text(
      heading!,
      style: TextStyle(color: Colors.black, fontSize: 18),
    );
  }

  Widget address() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.0),
        Text(
          constanText['Address'],
          style: TextStyle(
              fontSize: 15.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold),
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
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
            child: Text("Notes", style: TextStyle(fontWeight: FontWeight.bold)),
            // richText(label: 'Your Message'),
          ),
        ),
        CustomeTextFormField(
          horizontalMergin: 0.00,
          hintText: 'Enter the Notes',
          maxLines: 5,
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
