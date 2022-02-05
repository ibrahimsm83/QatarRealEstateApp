import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:bonyanaldoha/widgets/custome_dropdown_button.dart';
import 'package:bonyanaldoha/widgets/simple_appbar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AdvanceSearchPage extends StatefulWidget {
  const AdvanceSearchPage({Key? key}) : super(key: key);

  @override
  _AdvanceSearchPageState createState() => _AdvanceSearchPageState();
}

class _AdvanceSearchPageState extends State<AdvanceSearchPage> {
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

  final locationAreaList = ['50KM', '100KM', '150KM'];
  final minAreaList = ['Min. Area', 'option1', 'option2'];
  final maxAreaList = ['Max. Area', 'option1', 'option2'];
  final locationList = ['Location', 'option1', 'option2'];
  final minPriceList = ['Min. Price', 'option1', 'option2'];
  final maxPriceList = ['Max. Price', 'option1', 'option2'];
  final allCitiesList = ['Select City', 'option1', 'option2'];
  final bedroomList = ['Select Bedrooms', 'option1', 'option2'];
  final buyorRentList = ['Select Status', 'option1', 'option2'];
  final propertyTypeList = ['Select Property Type', 'option1', 'option2'];
  String locationArea = '50KM';
  String minArea = 'Min. Area';
  String maxArea = 'Max. Area';
  String loaction = 'Location';
  String maxPrice = 'Max. Price';
  String minPrice = 'Min. Price';
  String allcities = 'Select City';
  String buyRent = 'Select Status';
  String bedroom = 'Select Bedrooms';
  String propertyType = 'Select Property Type';
  bool seacrhProperty = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: Text("Advance Search"),
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
            color: primaryColor,
            size: 28.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.all(10.0),
            //       child: Container(
            //         alignment: Alignment.topLeft,
            //         child: Text(
            //           "Advance Search",
            //           style: TextStyle(
            //               fontSize: 16,
            //               color: Colors.black,
            //               fontWeight: FontWeight.bold),
            //         ),
            //       ),
            //     ),
            //     InkWell(
            //       onTap: () {
            //         setState(() {
            //           seacrhProperty = false;
            //         });
            //       },
            //       child: Padding(
            //         padding: const EdgeInsets.all(10.0),
            //         child: Container(
            //           alignment: Alignment.topLeft,
            //           child: Icon(
            //             Icons.cancel,
            //             color: primaryColor,
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            SizedBox(height: 5.h),
            CustomeDropDownButton(
                label: 'Location',
                value: loaction,
                itemList: locationList,
                onChanged: (String? value) {
                  return setState(
                    () => loaction = value!,
                  );
                }),
            SizedBox(height: 10.0),
            CustomeDropDownButton(
                label: 'Location Area',
                value: locationArea,
                itemList: locationAreaList,
                onChanged: (String? value) {
                  return setState(
                    () => locationArea = value!,
                  );
                }),
            SizedBox(height: 10.0),
            CustomeDropDownButton(
                label: 'All Cities',
                value: allcities,
                itemList: allCitiesList,
                onChanged: (String? value) {
                  return setState(
                    () => allcities = value!,
                  );
                }),
            SizedBox(height: 10.0),
            CustomeDropDownButton(
                label: 'Buy Or Rent',
                value: buyRent,
                itemList: buyorRentList,
                onChanged: (String? value) {
                  return setState(
                    () => buyRent = value!,
                  );
                }),
            SizedBox(height: 10.0),
            CustomeDropDownButton(
                label: 'Property Type',
                value: propertyType,
                itemList: propertyTypeList,
                onChanged: (String? value) {
                  return setState(
                    () => propertyType = value!,
                  );
                }),
            SizedBox(height: 10.0),
            CustomeDropDownButton(
                label: 'Bedrooms',
                value: bedroom,
                itemList: bedroomList,
                onChanged: (String? value) {
                  return setState(
                    () => bedroom = value!,
                  );
                }),
            SizedBox(height: 10.0),
            CustomeDropDownButton(
                label: 'Min. Area',
                value: minArea,
                itemList: minAreaList,
                onChanged: (String? value) {
                  return setState(
                    () => minArea = value!,
                  );
                }),
            SizedBox(height: 10.0),
            CustomeDropDownButton(
                label: 'Max. Area',
                value: maxArea,
                itemList: maxAreaList,
                onChanged: (String? value) {
                  return setState(
                    () => maxArea = value!,
                  );
                }),
            SizedBox(height: 10.0),
            CustomeDropDownButton(
                label: 'Min. Price',
                value: minPrice,
                itemList: minPriceList,
                onChanged: (String? value) {
                  return setState(
                    () => minPrice = value!,
                  );
                }),
            SizedBox(height: 10.0),
            CustomeDropDownButton(
                label: 'Max. Price',
                value: maxPrice,
                itemList: maxPriceList,
                onChanged: (String? value) {
                  return setState(
                    () => maxPrice = value!,
                  );
                }),
            SizedBox(height: 20.0),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(" Other Features",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 12.sp)),
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
            ),
            SizedBox(height: 20.0),
            Container(
              width: sizeWidth(context),
              margin:
                  EdgeInsets.symmetric(horizontal: sizeWidth(context) * 0.06),
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              child: ElevatedButton(
                child: Text(
                  'SEARCH NOW',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    seacrhProperty = false;
                  });
                },
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
            SizedBox(height: 20.0),
          ],
        ),
      ),
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
}
