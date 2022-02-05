import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/services/api_data.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:bonyanaldoha/widgets/simple_appbar.dart';
import 'package:bonyanaldoha/widgets/text_form_field.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PropertyDetailsPg extends StatefulWidget {
  const PropertyDetailsPg({Key? key}) : super(key: key);

  @override
  _PropertyDetailsPgState createState() => _PropertyDetailsPgState();
}

class _PropertyDetailsPgState extends State<PropertyDetailsPg> {
  late int selectedPage;
  late final PageController _pageController;
  bool rememberMe = false;
  @override
  void initState() {
    selectedPage = 0;
    _pageController = PageController(initialPage: selectedPage.toInt());
    super.initState();
  }

  final pageCount = 5;
  double sliderhieght = 22.h;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        onTapLeading: () => Navigator.pop(context),
        backgroundColor: whiteColor,
        abtitle: "Property Details",
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => NotificationPg())),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: sliderhieght,
                    width: sizeWidth(context),
                    child: PageView(
                      controller: _pageController,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (page) {
                        setState(() {
                          selectedPage = page;
                        });
                      },
                      children: List.generate(
                        pageCount,
                        (index) => Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              colorFilter: ColorFilter.mode(
                                  Colors.black26, BlendMode.darken),
                              fit: BoxFit.cover,
                              image: AssetImage(cityImg[index]),
                            ),
                          ),

                          // child: Center(
                          //   child: Text('Page $index'),
                          // ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: sizeWidth(context) / 2.7,
                    top: sliderhieght - 20,
                    child: Container(
                      child: DotsIndicator(
                        dotsCount: pageCount,
                        position: selectedPage.toDouble(),
                        decorator: DotsDecorator(
                          color: Colors.grey, // Inactive color
                          activeColor: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 2.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Modern Apartment With Balcony',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "The Pearl-Qatar ,Doha, Qatar",
                      style: TextStyle(color: primaryColor, fontSize: 14),
                    ),
                    SizedBox(height: 2.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: overViewRow(),
                    ),
                    SizedBox(height: 2.h),
                    description(),
                    SizedBox(height: 2.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: address(),
                    ),
                    SizedBox(height: 3.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Features",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 2.h),
                                  FeatureBullet(text: "Air Conditioning"),
                                  SizedBox(height: 1.h),
                                  FeatureBullet(text: "Barbeque"),
                                  SizedBox(height: 1.h),
                                  FeatureBullet(text: "Dryer"),
                                  SizedBox(height: 1.h),
                                  FeatureBullet(text: "Gym"),
                                  SizedBox(height: 1.h),
                                  FeatureBullet(text: "Laundry"),
                                  SizedBox(height: 1.h),
                                  FeatureBullet(text: "Lawn"),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FeatureBullet(text: "Microwave"),
                                  SizedBox(height: 1.h),
                                  FeatureBullet(text: "Refrigerator"),
                                  SizedBox(height: 1.h),
                                  FeatureBullet(text: "TV Cable"),
                                  SizedBox(height: 1.h),
                                  FeatureBullet(text: "WiFi"),
                                  SizedBox(height: 1.h),
                                  FeatureBullet(text: "Window Covering"),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    contactInformation(),
                    SizedBox(height: 2.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget FeatureBullet({String? text}) {
    return Row(
      children: [
        Container(
          height: 6,
          width: 6,
          decoration: BoxDecoration(
            color: primaryColor,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 10.0),
        Text(
          text!,
          style: TextStyle(
            color: Colors.black45,
          ),
        ),
      ],
    );
  }

  Widget address() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Address", style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                "View Map",
                style: TextStyle(
                    color: primaryColor, decoration: TextDecoration.underline),
              )
            ],
          ),
          SizedBox(height: 1.h),
          Divider(),
          SizedBox(height: 1.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Address",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("The pearl-Qatar, Doha, Qatar",
                      style: TextStyle(color: Colors.black45)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Area",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Ain Khaled",
                    style: TextStyle(color: Colors.black45),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 1.h),
          Divider(),
          SizedBox(height: 1.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("City", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Al Rayyan, Doha, Umm Salal",
                      style: TextStyle(color: Colors.black45)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Country",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Qatar",
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 1.h),
          Divider(),
          SizedBox(height: 1.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("City", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Al Rayyan, Doha, Umm Salal",
                  style: TextStyle(color: Colors.black45)),
            ],
          ),
        ],
      ),
    );
  }

  Widget description() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description",
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 1.h),
        Text(
            '''Many Flats available with different view and big balconies including all bills with access to the beach.''',
            style: TextStyle(color: Colors.black45)),
        SizedBox(height: 1.h),
        Text(
          "The Tower Include all facilities",
          style: TextStyle(color: Colors.black45),
        ),
        SizedBox(height: 10.0),
        acceptanceOfTerms(text: 'Lorem ipsum dolor sit amet,'),
        SizedBox(height: 10.0),
        acceptanceOfTerms(text: 'Consectetur adipiscing elit sed do eiusmod,'),
        SizedBox(height: 10.0),
        acceptanceOfTerms(text: 'Tempor incididunt ut labore et dolore,'),
        SizedBox(height: 10.0),

        acceptanceOfTerms(text: 'Magna aliqua. Ut enim ad minim veniam,'),
        SizedBox(height: 10.0),
        acceptanceOfTerms(text: 'Quis nostrud exercitation ullamco laboris,'),
        SizedBox(height: 10.0),
        acceptanceOfTerms(text: 'Nisi ut aliquip ex ea commodo consequat,'),
        SizedBox(height: 10.0),
        acceptanceOfTerms(text: 'Lorem ipsum dolor sit amet,'),
        SizedBox(height: 10.0),
        acceptanceOfTerms(text: 'Consectetur adipiscing elit sed do eiusmod,'),
        SizedBox(height: 10.0),
        acceptanceOfTerms(text: 'Tempor incididunt ut labore et dolore,'),
        SizedBox(height: 10.0),
        //   nisi ut aliquip ex ea commodo consequat.
        acceptanceOfTerms(text: 'Magna aliqua. Ut enim ad minim veniam,'),
        SizedBox(height: 10.0),
        acceptanceOfTerms(text: 'Quis nostrud exercitation ullamco laboris,'),
        SizedBox(height: 10.0),
        acceptanceOfTerms(text: 'Nisi ut aliquip ex ea commodo consequat,'),
      ],
    );
  }

  Widget acceptanceOfTerms({String? text}) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          Container(
            height: 6,
            width: 6,
            decoration: BoxDecoration(
              color: primaryColor,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: 10.0),
          Text(
            text!,
            style: TextStyle(
              color: Colors.black45,
            ),
          ),
        ],
      ),
    );
  }

  Widget contactInformation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 2.h),

            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 10.0),
              child: Text(
                "Contact Information",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
              child: richText(label: 'Your Name'),
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
                          hintText: "First Name",
                          contentPadding:
                              EdgeInsets.fromLTRB(14, 14.0, 0, 14.0),
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
                          hintText: "Last Name",
                          contentPadding:
                              EdgeInsets.fromLTRB(14, 14.0, 0, 14.0),
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
        ),
        //Email
        SizedBox(
          // height: sizeheight(context)*0.9,
          child: Column(
            children: [
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
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                      child: richText(label: 'Your Message'),
                    ),
                  ),
                  CustomeTextFormField(
                    horizontalMergin: 0.03,
                    hintText: 'Message Here',
                    maxLines: 5,
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 10.0),
                  child: Text(
                    "GDPR Agreement",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              //switch
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: sizeWidth(context) * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40.0,
                      width: 40.0,
                      child: Checkbox(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
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
                          'I consent to having this website store my submitted information',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20.0,
              ),
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
                    'SUBMIT NOW',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {},
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
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget overViewRow() {
    return Container(
      width: sizeWidth(context),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Overview",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("Property Id IBQ-18336"),
            ],
          ),
          SizedBox(height: 1.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Commercial",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Property Type"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("2350", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Area"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "2022",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Year Built"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget richText({String? label}) {
    return RichText(
      text: TextSpan(
          text: label,
          style: TextStyle(color: Colors.black, fontSize: 14),
          children: const [
            TextSpan(
              text: '*',
              style: TextStyle(color: Colors.red, fontSize: 14),
            ),
          ]),
    );
  }
}
