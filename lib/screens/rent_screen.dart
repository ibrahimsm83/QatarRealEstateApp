import 'package:bonyanaldoha/screens/advance_search_screen.dart';
import 'package:bonyanaldoha/screens/property_details.dart';
import 'package:bonyanaldoha/services/api_data.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:bonyanaldoha/widgets/custome_dialog_box.dart';
import 'package:bonyanaldoha/widgets/custome_dropdown_button.dart';
import 'package:bonyanaldoha/widgets/home_components.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RentPg extends StatefulWidget {
  const RentPg({Key? key}) : super(key: key);

  @override
  _RentPgState createState() => _RentPgState();
}

class _RentPgState extends State<RentPg> {
  final items1 = ['Select', 'item2', 'item3', 'item4'];
  final items2 = ['Property Type', 'item2', 'item3', 'item4'];
  final items3 = ['All Cities', 'UnitedArabEmaratas', 'All', 'item4'];
  String val1 = 'Select';
  String val2 = 'Property Type';
  String val3 = 'All Cities';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // seacrhProperty
          Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AdvanceSearchPage()));
                },
                child: Container(
                  width: sizeWidth(context),
                  height: 45,
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 2,
                        offset: Offset(0, 5), // Shadow position
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 8, 0, 8),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: sizeWidth(context) * 0.68,
                        child: TextField(
                          //showCursor: false,
                          enabled: false,
                          decoration: InputDecoration(
                            hintText: "Search Property..",
                            hintStyle: TextStyle(color: Colors.grey),
                            enabledBorder: InputBorder.none,
                            border: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: sizeWidth(context) * 0.09,
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/icons/filtericon.png',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Nearby",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Save More",
                        style: TextStyle(
                          color: primaryColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: SizedBox(
                  height: 36.2.h,
                  //  width: sizeWidth(context),
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: cityImg.length,
                    itemBuilder: (context, index) {
                      return PropertyList(
                        index: index,
                        btntext: "RENT",
                        address: addresses[0],
                        imagepath: cityImg[index],
                        onTapDetaislbtn: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PropertyDetailsPg())),
                        onTapArrow: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return CustumeDialogBox(
                                  imagepath: cityImg[index],
                                  textType: "RENT",
                                );
                              });
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Property List",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: cityImg.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return PropertyList(
                    index: index,
                    btntext: "RENT",
                    address: addresses[0],
                    imagepath: cityImg[index],
                    onTapDetaislbtn: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PropertyDetailsPg())),
                    onTapArrow: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return CustumeDialogBox(
                              imagepath: cityImg[index],
                              textType: "RENT",
                            );
                          });
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
