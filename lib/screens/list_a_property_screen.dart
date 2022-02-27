import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/utils/app_colors.dart';
import 'package:bonyanaldoha/utils/app_strings.dart';

import 'package:bonyanaldoha/widgets/simple_appbar.dart';
import 'package:bonyanaldoha/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListAPropertypg extends StatefulWidget {
  const ListAPropertypg({Key? key}) : super(key: key);

  @override
  _ListAPropertypgState createState() => _ListAPropertypgState();
}

class _ListAPropertypgState extends State<ListAPropertypg> {
  bool forSaleSelected = true;
  bool forRentSelected = false;
  bool forBuySelected = false;
  List searchPropertyCategories = [true, true, true, true];
  List selectedSearchPropertyCategories = [true, false, false, false];
  bool selectedColorForPropertyType1 = true;
  bool selectedColorForPropertyType2 = false;
  bool selectedColorForPropertyType3 = false;
  late int selectedView;
  List<bool> bedRooms = [
    true,
    false,
    false,
    false,
    false,
  ];
  List<bool> bedRoomsSelected = [true, true, true, true, true];
  List<bool> bathRooms = [
    true,
    false,
    false,
    false,
    false,
  ];
  List<bool> bathRoomsSelected = [true, true, true, true, true];
  final List<String> _provincesName = [
    "Select Province",
    "Province1",
    "Province2",
    'Province3'
  ];
  String _provinceValue = "Select Province";

  final List<dynamic> _countryCode = ['+1', '+98', "+61", '+31', '+51', '+269'];
  String _countryValue = "+1";

  final List<dynamic> _citiesName = ["Qatar", "Qatar1", "Qatar1", 'Qatar3'];
  String _cityValue = "Qatar";

  @override
  void initState() {
    // TODO: implement initState
    selectedView = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> propertyViews = [
      _residentialView(),
      _commercialView(),
      _industrialView()
    ];

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _titleAndDescription(),
              _areaField(),
              _priceField(),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  'Property Type',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              _rowOfButtons(),
              Container(
                child: propertyViews[selectedView],
              ),
              //  //............................Bedrooms.......................
              _bedroomsContainer(),
              _bathroomsContainer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Text(
                  'Select Images',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              //..................Grid View........................
              _customGridView(),
              SizedBox(
                height: 10,
              ),
              //........................Text of Country PKR and Change History...........
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: const [
                    Text(
                      'Country  ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '(PK)',
                      style: TextStyle(
                          color: primaryColor, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      'Change Country',
                      style: TextStyle(color: primaryColor),
                    )
                  ],
                ),
              ),

              SizedBox(height: 10),
              _rowOfDropDowns(),
              SizedBox(height: 10.0),
              //Email name
              CustomeTextFormField(
                hintText: 'Address',
                validator: (String? val) {
                  if (val == null || val.isEmpty) {
                    return '';
                  }
                  return null;
                },
              ),

              SizedBox(height: 10),

              //Email name
              CustomeTextFormField(
                hintText: 'Email',
                validator: (String? val) {
                  if (val == null || val.isEmpty) {
                    return '';
                  }
                  return null;
                },
              ),
              SizedBox(height: 5.0),
              SizedBox(
                height: 10,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0),
                  child: _countryCodeAndPhoneNumberField()),
              SizedBox(height: 10),

              //.......................Submit Button.................................
              Container(
                height: 45,
                margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Center(
                    child: Text(
                  'SUBMIT NOW',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }

  _titleAndDescription() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: Column(
        children: [
          //Email name
          // CustomeTextFormField(
          //   horizontalMergin: 0.02,
          //   hintText: 'Title',
          //   validator: (String? val) {
          //     if (val == null || val.isEmpty) {
          //       return '';
          //     }
          //     return null;
          //   },
          // ),
          CustomeTextFormField(
            hintText: 'Title',
            validator: (String? val) {
              if (val == null || val.isEmpty) {
                return '';
              }
              return null;
            },
          ),
          SizedBox(height: 10.0),
          CustomeTextFormField(
            hintText: 'Description',
            maxLines: 5,
            validator: (String? val) {
              if (val == null || val.isEmpty) {
                return '';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

  _areaField() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
          child: Row(
            children:const [
              Text(
                'Area ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                '( Sq Feet )',
                style:
                    TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                'Change Area Unit',
                style:
                    TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(height: 5.0),
        // Padding(
        //   padding: EdgeInsets.symmetric(
        //       horizontal: sizeWidth(context) * 0.06, vertical: 8.0),
        //   child: Text(
        //     "Area (sq Feet)",
        //     style: TextStyle(fontSize: 12.sp),
        //   ),
        // ),
        //Email name
        CustomeTextFormField(
          hintText: 'Area',
          validator: (String? val) {
            if (val == null || val.isEmpty) {
              return '';
            }
            return null;
          },
        ),
        SizedBox(height: 5.0),
      ],
    );
  }

  _priceField() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
          child: Row(
            children: const [
              Text(
                'Price ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                '( USD )',
                style:
                    TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                'Change Currency',
                style:
                    TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(height: 5.0),
        // Padding(
        //   padding: EdgeInsets.symmetric(
        //       horizontal: sizeWidth(context) * 0.06, vertical: 8.0),
        //   child: Text(
        //     "Area (sq Feet)",
        //     style: TextStyle(fontSize: 12.sp),
        //   ),
        // ),
        //Email name
        CustomeTextFormField(
          hintText: 'Price',
          validator: (String? val) {
            if (val == null || val.isEmpty) {
              return '';
            }
            return null;
          },
        ),
        SizedBox(height: 5.0),
      ],
    );
  }

  _rowOfButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedView = 0;
                  selectedColorForPropertyType1 = true;
                  if (selectedColorForPropertyType2 == true ||
                      selectedColorForPropertyType3 == true) {
                    selectedColorForPropertyType3 = false;
                    selectedColorForPropertyType2 = false;
                  }
               
                  // if(selectedColorForPropertyType3==true||selectedColorForPropertyType2==true){
                  //   if (selectedColorForPropertyType2==true) {
                  //     selectedColorForPropertyType2=false;
                  //     if(selectedColorForPropertyType3==true){
                  //       selectedColorForPropertyType3=false;
                  //     }
                  //   }
                  // }
                });
              },
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    color: selectedColorForPropertyType1 == true
                        ? primaryColor
                        : Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                        color: selectedColorForPropertyType1 == true
                            ? primaryColor
                            : primaryColor
                        //Colors.grey.shade300
                        )),
                child: Center(
                  child: Text(
                    'Residential',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: selectedColorForPropertyType1 == true
                            ? Colors.black
                            : primaryColor),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedView = 1;
              
                  selectedColorForPropertyType2 = true;
                  if (selectedColorForPropertyType1 == true ||
                      selectedColorForPropertyType3 == true) {
                    selectedColorForPropertyType1 = false;
                    selectedColorForPropertyType3 = false;
                  }
                  // if(selectedColorForPropertyType3==true||selectedColorForPropertyType1==true){
                  //   if (selectedColorForPropertyType1==true) {
                  //     selectedColorForPropertyType1=false;
                  //     if(selectedColorForPropertyType3==true){
                  //       selectedColorForPropertyType3=false;
                  //     }
                  //   }
                  // }
                });
              },
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    color: selectedColorForPropertyType2 == true
                        ? primaryColor
                        : Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                        color: selectedColorForPropertyType2 == true
                            ? primaryColor
                            : primaryColor)),
                child: Center(
                  child: Text(
                    'Commercial',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: selectedColorForPropertyType2 == true
                            ? Colors.black
                            : primaryColor),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedView = 2;

                  selectedColorForPropertyType3 = true;
                  if (selectedColorForPropertyType2 == true ||
                      selectedColorForPropertyType1 == true) {
                    selectedColorForPropertyType1 = false;
                    selectedColorForPropertyType2 = false;
                  }
                  // if(selectedColorForPropertyType1==true||selectedColorForPropertyType2==true){
                  //   if (selectedColorForPropertyType1==true) {
                  //     selectedColorForPropertyType1=false;
                  //     if(selectedColorForPropertyType2==true){
                  //       selectedColorForPropertyType2=false;
                  //     }
                  //   }
                  // }
                });
              },
              child: Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                    color: selectedColorForPropertyType3 == true
                        ? primaryColor
                        : Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                        color: selectedColorForPropertyType3 == true
                            ? primaryColor
                            : primaryColor)),
                child: Center(
                  child: Text('Industrial',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: selectedColorForPropertyType3 == true
                              ? Colors.black
                              : primaryColor)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _residentialView() {
    return Container(
      height: 120,
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      // color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, routeName)
                  setState(() {
                    selectedSearchPropertyCategories[0] =
                        !selectedSearchPropertyCategories[0];
                    if (selectedSearchPropertyCategories[1] =
                        searchPropertyCategories[1]) {
                      selectedSearchPropertyCategories[1] =
                          !searchPropertyCategories[1];
                      if (selectedSearchPropertyCategories[2] =
                          searchPropertyCategories[2]) {
                        selectedSearchPropertyCategories[2] =
                            !searchPropertyCategories[2];
                        if (selectedSearchPropertyCategories[3] =
                            searchPropertyCategories[3]) {
                          selectedSearchPropertyCategories[3] =
                              !searchPropertyCategories[3];
                        }
                      }
                    }
                  });
                },
                child: CircleAvatar(
                  maxRadius: 36,
                  backgroundColor: selectedSearchPropertyCategories[0] ==
                          searchPropertyCategories[0]
                      ? primaryColor
                      : Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 35,
                    child: SvgPicture.asset(
                      'assets/svgicons/house.svg',
                      color: selectedSearchPropertyCategories[0] ==
                              searchPropertyCategories[0]
                          ? primaryColor
                          : Colors.grey,
                      height: 35,
                      width: 35,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Residential',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedSearchPropertyCategories[1] =
                        !selectedSearchPropertyCategories[1];
                    if (selectedSearchPropertyCategories[0] =
                        searchPropertyCategories[0]) {
                      selectedSearchPropertyCategories[0] =
                          !searchPropertyCategories[0];
                      if (selectedSearchPropertyCategories[2] =
                          searchPropertyCategories[2]) {
                        selectedSearchPropertyCategories[2] =
                            !searchPropertyCategories[2];
                        if (selectedSearchPropertyCategories[3] =
                            searchPropertyCategories[3]) {
                          selectedSearchPropertyCategories[3] =
                              !searchPropertyCategories[3];
                        }
                      }
                    }
                  });
                },
                child: CircleAvatar(
                  maxRadius: 36,
                  backgroundColor: selectedSearchPropertyCategories[1] ==
                          searchPropertyCategories[1]
                      ? primaryColor
                      : Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 35,
                    child: SvgPicture.asset(
                      'assets/svgicons/appartment.svg',
                      color: selectedSearchPropertyCategories[1] ==
                              searchPropertyCategories[1]
                          ? primaryColor
                          : Colors.grey,
                      height: 35,
                      width: 35,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Commercial',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedSearchPropertyCategories[2] =
                        !selectedSearchPropertyCategories[2];
                    if (selectedSearchPropertyCategories[1] =
                        searchPropertyCategories[1]) {
                      selectedSearchPropertyCategories[1] =
                          !searchPropertyCategories[1];
                      if (selectedSearchPropertyCategories[0] =
                          searchPropertyCategories[0]) {
                        selectedSearchPropertyCategories[0] =
                            !searchPropertyCategories[0];
                        if (selectedSearchPropertyCategories[3] =
                            searchPropertyCategories[3]) {
                          selectedSearchPropertyCategories[3] =
                              !searchPropertyCategories[3];
                        }
                      }
                    }
                  });
                },
                child: CircleAvatar(
                  maxRadius: 36,
                  backgroundColor: selectedSearchPropertyCategories[2] ==
                          searchPropertyCategories[2]
                      ? primaryColor
                      : Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 35,
                    child: SvgPicture.asset(
                      'assets/svgicons/uper.svg',
                      color: selectedSearchPropertyCategories[2] ==
                              searchPropertyCategories[2]
                          ? primaryColor
                          : Colors.grey,
                      height: 35,
                      width: 35,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Upper portion',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedSearchPropertyCategories[3] =
                        !selectedSearchPropertyCategories[3];
                    if (selectedSearchPropertyCategories[1] =
                        searchPropertyCategories[1]) {
                      selectedSearchPropertyCategories[1] =
                          !searchPropertyCategories[1];
                      if (selectedSearchPropertyCategories[2] =
                          searchPropertyCategories[2]) {
                        selectedSearchPropertyCategories[2] =
                            !searchPropertyCategories[2];
                        if (selectedSearchPropertyCategories[0] =
                            searchPropertyCategories[0]) {
                          selectedSearchPropertyCategories[0] =
                              !searchPropertyCategories[0];
                        }
                      }
                    }
                  });
                },
                child: CircleAvatar(
                  maxRadius: 36,
                  backgroundColor: selectedSearchPropertyCategories[3] ==
                          searchPropertyCategories[3]
                      ? primaryColor
                      : Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 35,
                    child: SvgPicture.asset(
                      'assets/svgicons/lower.svg',
                      color: selectedSearchPropertyCategories[3] ==
                              searchPropertyCategories[3]
                          ? primaryColor
                          : Colors.grey,
                      height: 35,
                      width: 35,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Lower portion',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              )
            ],
          ),
        ],
      ),
    );
  }

  _commercialView() {
    return Container(
      height: 120,
      margin: EdgeInsets.only(top: 10),
      // color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedSearchPropertyCategories[2] =
                        !selectedSearchPropertyCategories[2];
                    if (selectedSearchPropertyCategories[1] =
                        searchPropertyCategories[1]) {
                      selectedSearchPropertyCategories[1] =
                          !searchPropertyCategories[1];
                      if (selectedSearchPropertyCategories[0] =
                          searchPropertyCategories[0]) {
                        selectedSearchPropertyCategories[0] =
                            !searchPropertyCategories[0];
                        if (selectedSearchPropertyCategories[3] =
                            searchPropertyCategories[3]) {
                          selectedSearchPropertyCategories[3] =
                              !searchPropertyCategories[3];
                        }
                      }
                    }
                  });
                },
                child: CircleAvatar(
                  maxRadius: 36,
                  backgroundColor: selectedSearchPropertyCategories[2] ==
                          searchPropertyCategories[2]
                      ? primaryColor
                      : Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 35,
                    child: SvgPicture.asset(
                      'assets/svgicons/Uper.svg',
                      color: selectedSearchPropertyCategories[2] ==
                              searchPropertyCategories[2]
                          ? primaryColor
                          : Colors.grey,
                      height: 35,
                      width: 35,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Upper portion',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedSearchPropertyCategories[3] =
                        !selectedSearchPropertyCategories[3];
                    if (selectedSearchPropertyCategories[1] =
                        searchPropertyCategories[1]) {
                      selectedSearchPropertyCategories[1] =
                          !searchPropertyCategories[1];
                      if (selectedSearchPropertyCategories[2] =
                          searchPropertyCategories[2]) {
                        selectedSearchPropertyCategories[2] =
                            !searchPropertyCategories[2];
                        if (selectedSearchPropertyCategories[0] =
                            searchPropertyCategories[0]) {
                          selectedSearchPropertyCategories[0] =
                              !searchPropertyCategories[0];
                        }
                      }
                    }
                  });
                },
                child: CircleAvatar(
                  maxRadius: 36,
                  backgroundColor: selectedSearchPropertyCategories[3] ==
                          searchPropertyCategories[3]
                      ? primaryColor
                      : Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 35,
                    child: SvgPicture.asset(
                      'assets/icons/Lower.svg',
                      color: selectedSearchPropertyCategories[3] ==
                              searchPropertyCategories[3]
                          ? primaryColor
                          : Colors.grey,
                      height: 35,
                      width: 35,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Lower portion',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, routeName)
                  setState(() {
                    selectedSearchPropertyCategories[0] =
                        !selectedSearchPropertyCategories[0];
                    if (selectedSearchPropertyCategories[1] =
                        searchPropertyCategories[1]) {
                      selectedSearchPropertyCategories[1] =
                          !searchPropertyCategories[1];
                      if (selectedSearchPropertyCategories[2] =
                          searchPropertyCategories[2]) {
                        selectedSearchPropertyCategories[2] =
                            !searchPropertyCategories[2];
                        if (selectedSearchPropertyCategories[3] =
                            searchPropertyCategories[3]) {
                          selectedSearchPropertyCategories[3] =
                              !searchPropertyCategories[3];
                        }
                      }
                    }
                  });
                },
                child: CircleAvatar(
                  maxRadius: 36,
                  backgroundColor: selectedSearchPropertyCategories[0] ==
                          searchPropertyCategories[0]
                      ? primaryColor
                      : Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 35,
                    child: SvgPicture.asset(
                      'assets/svgicons/house.svg',
                      color: selectedSearchPropertyCategories[0] ==
                              searchPropertyCategories[0]
                          ? primaryColor
                          : Colors.grey,
                      height: 35,
                      width: 35,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Residential',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedSearchPropertyCategories[1] =
                        !selectedSearchPropertyCategories[1];
                    if (selectedSearchPropertyCategories[0] =
                        searchPropertyCategories[0]) {
                      selectedSearchPropertyCategories[0] =
                          !searchPropertyCategories[0];
                      if (selectedSearchPropertyCategories[2] =
                          searchPropertyCategories[2]) {
                        selectedSearchPropertyCategories[2] =
                            !searchPropertyCategories[2];
                        if (selectedSearchPropertyCategories[3] =
                            searchPropertyCategories[3]) {
                          selectedSearchPropertyCategories[3] =
                              !searchPropertyCategories[3];
                        }
                      }
                    }
                  });
                },
                child: CircleAvatar(
                  maxRadius: 36,
                  backgroundColor: selectedSearchPropertyCategories[1] ==
                          searchPropertyCategories[1]
                      ? primaryColor
                      : Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 35,
                    child: SvgPicture.asset(
                      'assets/svgicons/appartment.svg',
                      color: selectedSearchPropertyCategories[1] ==
                              searchPropertyCategories[1]
                          ? primaryColor
                          : Colors.grey,
                      height: 35,
                      width: 35,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Commercial',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              )
            ],
          ),
        ],
      ),
    );
  }

  _industrialView() {
    return Container(
      height: 120,
      margin: EdgeInsets.only(top: 10),
      // color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedSearchPropertyCategories[2] =
                        !selectedSearchPropertyCategories[2];
                    if (selectedSearchPropertyCategories[1] =
                        searchPropertyCategories[1]) {
                      selectedSearchPropertyCategories[1] =
                          !searchPropertyCategories[1];
                      if (selectedSearchPropertyCategories[0] =
                          searchPropertyCategories[0]) {
                        selectedSearchPropertyCategories[0] =
                            !searchPropertyCategories[0];
                        if (selectedSearchPropertyCategories[3] =
                            searchPropertyCategories[3]) {
                          selectedSearchPropertyCategories[3] =
                              !searchPropertyCategories[3];
                        }
                      }
                    }
                  });
                },
                child: CircleAvatar(
                  maxRadius: 36,
                  backgroundColor: selectedSearchPropertyCategories[2] ==
                          searchPropertyCategories[2]
                      ? primaryColor
                      : Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 35,
                    child: SvgPicture.asset(
                      'assets/svgicons/Uper.svg',
                      color: selectedSearchPropertyCategories[2] ==
                              searchPropertyCategories[2]
                          ? primaryColor
                          : Colors.grey,
                      height: 35,
                      width: 35,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Upper portion',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedSearchPropertyCategories[1] =
                        !selectedSearchPropertyCategories[1];
                    if (selectedSearchPropertyCategories[0] =
                        searchPropertyCategories[0]) {
                      selectedSearchPropertyCategories[0] =
                          !searchPropertyCategories[0];
                      if (selectedSearchPropertyCategories[2] =
                          searchPropertyCategories[2]) {
                        selectedSearchPropertyCategories[2] =
                            !searchPropertyCategories[2];
                        if (selectedSearchPropertyCategories[3] =
                            searchPropertyCategories[3]) {
                          selectedSearchPropertyCategories[3] =
                              !searchPropertyCategories[3];
                        }
                      }
                    }
                  });
                },
                child: CircleAvatar(
                  maxRadius: 36,
                  backgroundColor: selectedSearchPropertyCategories[1] ==
                          searchPropertyCategories[1]
                      ? primaryColor
                      : Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 35,
                    child: SvgPicture.asset(
                      'assets/svgicons/appartment.svg',
                      color: selectedSearchPropertyCategories[1] ==
                              searchPropertyCategories[1]
                          ? primaryColor
                          : Colors.grey,
                      height: 35,
                      width: 35,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Commercial',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedSearchPropertyCategories[3] =
                        !selectedSearchPropertyCategories[3];
                    if (selectedSearchPropertyCategories[1] =
                        searchPropertyCategories[1]) {
                      selectedSearchPropertyCategories[1] =
                          !searchPropertyCategories[1];
                      if (selectedSearchPropertyCategories[2] =
                          searchPropertyCategories[2]) {
                        selectedSearchPropertyCategories[2] =
                            !searchPropertyCategories[2];
                        if (selectedSearchPropertyCategories[0] =
                            searchPropertyCategories[0]) {
                          selectedSearchPropertyCategories[0] =
                              !searchPropertyCategories[0];
                        }
                      }
                    }
                  });
                },
                child: CircleAvatar(
                  maxRadius: 36,
                  backgroundColor: selectedSearchPropertyCategories[3] ==
                          searchPropertyCategories[3]
                      ? primaryColor
                      : Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 35,
                    child: SvgPicture.asset(
                      'assets/svgicons/Lower.svg',
                      color: selectedSearchPropertyCategories[3] ==
                              searchPropertyCategories[3]
                          ? primaryColor
                          : Colors.grey,
                      height: 35,
                      width: 35,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Lower portion',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, routeName)
                  setState(() {
                    selectedSearchPropertyCategories[0] =
                        !selectedSearchPropertyCategories[0];
                    if (selectedSearchPropertyCategories[1] =
                        searchPropertyCategories[1]) {
                      selectedSearchPropertyCategories[1] =
                          !searchPropertyCategories[1];
                      if (selectedSearchPropertyCategories[2] =
                          searchPropertyCategories[2]) {
                        selectedSearchPropertyCategories[2] =
                            !searchPropertyCategories[2];
                        if (selectedSearchPropertyCategories[3] =
                            searchPropertyCategories[3]) {
                          selectedSearchPropertyCategories[3] =
                              !searchPropertyCategories[3];
                        }
                      }
                    }
                  });
                },
                child: CircleAvatar(
                  maxRadius: 36,
                  backgroundColor: selectedSearchPropertyCategories[0] ==
                          searchPropertyCategories[0]
                      ? primaryColor
                      : Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 35,
                    child: SvgPicture.asset(
                      'assets/svgicons/house.svg',
                      color: selectedSearchPropertyCategories[0] ==
                              searchPropertyCategories[0]
                          ? primaryColor
                          : Colors.grey,
                      height: 35,
                      width: 35,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Residential',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              )
            ],
          ),
        ],
      ),
    );
  }

  _bedroomsContainer() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      width: double.infinity,

      // padding: EdgeInsets.symmetric(horizontal: 18.0),
      //padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'BEDROOMS',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisSize: MainAxisSize.max,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      bedRoomsSelected[0] = !bedRoomsSelected[0];
                    });
                  },
                  child: Container(
                    height: 45,
                    width: 60,
                    decoration: BoxDecoration(
                        color: bedRoomsSelected[0] == bedRooms[0]
                            ? primaryColor
                            : Color(0xfffafafa),
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(30.0))),
                    child: Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors
                              .black, // bedRoomsSelected[0] == bedRooms[0]
                          // ? Colors.white
                          // : Colors.black
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      bedRoomsSelected[1] = !bedRoomsSelected[1];
                    });
                  },
                  child: Container(
                    height: 45,
                    width: 60,
                    color: bedRoomsSelected[1] == bedRooms[1]
                        ? primaryColor
                        : Color(0xfffafafa),
                    child: Center(
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      bedRoomsSelected[2] = !bedRoomsSelected[2];
                    });
                  },
                  child: Container(
                    height: 45,
                    width: 60,
                    color: bedRoomsSelected[2] == bedRooms[2]
                        ? primaryColor
                        : Color(0xfffafafa),
                    child: Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      bedRoomsSelected[3] = !bedRoomsSelected[3];
                    });
                  },
                  child: Container(
                    height: 45,
                    width: 60,
                    color: bedRoomsSelected[3] == bedRooms[3]
                        ? primaryColor
                        : Color(0xfffafafa),
                    child: Center(
                      child: Text(
                        '4',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      bedRoomsSelected[4] = !bedRoomsSelected[4];
                    });
                  },
                  child: Container(
                    height: 45,
                    width: 60,
                    decoration: BoxDecoration(
                        color: bedRoomsSelected[4] == bedRooms[4]
                            ? primaryColor
                            : Color(0xfffafafa),
                        borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(30.0))),
                    child: Center(
                      child: Text(
                        '4+',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _bathroomsContainer() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      width: double.infinity,
      //padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'BATHROOMS',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    bathRoomsSelected[0] = !bathRoomsSelected[0];
                  });
                },
                child: Container(
                  height: 45,
                  width: 60,
                  decoration: BoxDecoration(
                      color: bathRoomsSelected[0] == bathRooms[0]
                          ? primaryColor
                          : Color(0xfffafafa),
                      borderRadius:
                          BorderRadius.horizontal(left: Radius.circular(30.0))),
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    bathRoomsSelected[1] = !bathRoomsSelected[1];
                  });
                },
                child: Container(
                  height: 45,
                  width: 60,
                  color: bathRoomsSelected[1] == bathRooms[1]
                      ? primaryColor
                      : Color(0xfffafafa),
                  child: Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    bathRoomsSelected[2] = !bathRoomsSelected[2];
                  });
                },
                child: Container(
                  height: 45,
                  width: 60,
                  color: bathRoomsSelected[2] == bathRooms[2]
                      ? primaryColor
                      : Color(0xfffafafa),
                  child: Center(
                    child: Text(
                      '3',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    bathRoomsSelected[3] = !bathRoomsSelected[3];
                  });
                },
                child: Container(
                  height: 45,
                  width: 60,
                  color: bathRoomsSelected[3] == bathRooms[3]
                      ? primaryColor
                      : Color(0xfffafafa),
                  child: Center(
                    child: Text(
                      '4',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    bathRoomsSelected[4] = !bathRoomsSelected[4];
                  });
                },
                child: Container(
                  height: 45,
                  width: 60,
                  decoration: BoxDecoration(
                      color: bathRoomsSelected[4] == bathRooms[4]
                          ? primaryColor
                          : Color(0xfffafafa),
                      borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(30.0))),
                  child: Center(
                    child: Text(
                      '4+',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _countryCodeAndPhoneNumberField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: sizeWidth(context) * 0.02),
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 2,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: primaryColor)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  iconEnabledColor: Colors.grey[500],
                  iconDisabledColor: Colors.grey[500],
                  hint: Text(
                    '+1',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  style: TextStyle(color: Colors.grey[500]),
                  value: _countryValue,
                  onChanged: (newValue) {
                    setState(() {
                      _countryValue = newValue.toString();
                    });
                  },
                  items: _countryCode.map((value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  isExpanded: true,
                ),
              ),
            ),
          ),
          SizedBox(width: 8),
          Flexible(
              flex: 7,
              child: TextFormField(
                  enabled: true,
                  style: TextStyle(fontSize: 16),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        left: 15,
                      ),
                      fillColor: whiteColor,
                      filled: true,
                      hintText: 'Phone',
                      hintStyle: TextStyle(color: Colors.grey[500]),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: primaryColor)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: primaryColor)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: primaryColor)),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              BorderSide(color: primaryColor))))), //container
        ], //widget
      ),
    );
  }

  _customGridView() {
    return Container(
      height: 220,
      margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Color(0xfffafafa), borderRadius: BorderRadius.circular(10.0)),
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 3,
        children: List.generate(6, (index) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
            child: Icon(
              Icons.add,
              color: Colors.grey,
            ),
          );
        }),
      ),
    );
  }

  _rowOfDropDowns() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: sizeWidth(context) * 0.06),
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: primaryColor)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  iconEnabledColor: Colors.grey[500],
                  iconDisabledColor: Colors.grey[500],
                  hint: Text(
                    'Choose Province',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  style: TextStyle(color: Colors.grey[500]),
                  value: _provinceValue,
                  onChanged: (newValue) {
                    setState(() {
                      _provinceValue = newValue.toString();
                    });
                  },
                  items: _provincesName.map((value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  isExpanded: true,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: primaryColor)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  iconEnabledColor: Colors.grey[500],
                  iconDisabledColor: Colors.grey[500],
                  hint: Text(
                    'Choose city',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  style: TextStyle(color: Colors.grey[500]),
                  value: _cityValue,
                  onChanged: (newValue) {
                    setState(() {
                      _cityValue = newValue.toString();
                    });
                  },
                  items: _citiesName.map((value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  isExpanded: true,
                ),
              ),
            ),
          ),
        ], //widget
      ),
    );
  }
}
