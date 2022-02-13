import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/services/api_data.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:bonyanaldoha/widgets/compare_property_list.dart';
import 'package:bonyanaldoha/widgets/custome_dropdown_button.dart';
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
  List propertyDesList = [
    'California pool deck',
    'Bar lounge',
    'Private cabanas',
    'BBQ stations',
    'Film projector',
    'Screening room',
    'Kids studio club',
    'Work play suites',
    'Local-deli style cafe',
    'Wellness & fitness center',
    'Stream room',
    'Sauna',
    'Spa',
    'Men & Women salons',
  ];
  final locationAreaList = ['Select Tour Date', 'option1', 'option2'];
  final locationList = ['Select Tour', 'option1', 'option2'];
  final allCitiesList = ['08:00 AM', 'option1', 'option2'];
  String locationArea = 'Select Tour Date';
  String loaction = 'Select Tour';
  String allcities = '08:00 AM';
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
                    rowbox(
                      container: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(8.0)),
                        height: 30,
                        width: 30,
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Text('Modern Apartment With Balcony',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    SizedBox(height: 1.h),
                    Row(
                      children: [
                        rowButton(
                            title: 'BUY',
                            bgcolor: primaryColor,
                            textcolor: Colors.black),
                        SizedBox(width: 1.5.w),
                        rowButton(
                            title: 'FEATURED',
                            bgcolor: Colors.grey.shade400,
                            textcolor: whiteColor),
                        SizedBox(width: 1.5.w),
                        rowButton(
                            title: 'HOT OFFER',
                            bgcolor: Colors.black38,
                            textcolor: whiteColor),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Text("The Pearl-Qatar ,Doha, Qatar",
                        style: TextStyle(color: primaryColor, fontSize: 14)),
                    SizedBox(height: 1.h),
                    Text(
                      "QR 4,475,300",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 2.h),
                    Card(
                      elevation: 1.0,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text("Overview",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text("Property ID: BQ-18336",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            SizedBox(height: 2.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text("Property Type:",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text("Commerical",
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  width: 1.0,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 2.h),
                                    overView(text: "Bedrooms:"),
                                    SizedBox(height: 1.h),
                                    overView(text: "Bathrooms:"),
                                    SizedBox(height: 1.h),
                                    overView(text: "Garage:"),
                                    SizedBox(height: 1.h),
                                    overView(text: "Property Area:"),
                                    SizedBox(height: 1.h),
                                    overView(text: "Year Built:"),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 2.h),
                                    overviewIcon(iconpath: bedIcon, text: "02"),
                                    SizedBox(height: 1.h),
                                    overviewIcon(
                                        iconpath: shoverIcon, text: "01"),
                                    SizedBox(height: 1.h),
                                    overviewIcon(
                                        iconpath: carIcon, text: "2,164 sq m"),
                                    SizedBox(height: 1.h),
                                    overviewIcon(
                                        iconpath: trianleicon, text: "02"),
                                    SizedBox(height: 1.h),
                                    overviewIcon(text: "200"),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    /*  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: overViewRow(),
                    ),
                    SizedBox(height: 2.h), */
                    description(),
                    SizedBox(height: 2.h),
                    address(),
                    SizedBox(height: 2.h),
                    Card(
                      elevation: 1.0,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Flexible(
                                  child: Text("Overview",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                                Flexible(
                                  child: Text(
                                      '''Updated on: November 7, 2021 at 7:00pm''',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 2.h),
                                    overView(text: "Price:"),
                                    SizedBox(height: 1.h),
                                    overView(text: "Property Size:"),
                                    SizedBox(height: 1.h),
                                    overView(text: "Bedrooms:"),
                                    SizedBox(height: 1.h),
                                    overView(text: "Rooms:"),
                                    SizedBox(height: 1.h),
                                    overView(text: "Bathrooms:"),
                                    SizedBox(height: 1.h),
                                    overView(text: "Garage:"),
                                    SizedBox(height: 1.h),
                                    overView(text: "Year Built:"),
                                    SizedBox(height: 1.h),
                                    overView(text: "Property Type:"),
                                    SizedBox(height: 1.h),
                                    overView(text: "Property Status:"),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 2.h),
                                    overView(text: "QR 4,475,300"),
                                    SizedBox(height: 1.h),
                                    overView(text: "2,164 Sqm"),
                                    SizedBox(height: 1.h),
                                    overView(text: "02"),
                                    SizedBox(height: 1.h),
                                    overView(text: "02"),
                                    SizedBox(height: 1.h),
                                    overView(text: "01"),
                                    SizedBox(height: 1.h),
                                    overView(text: "01"),
                                    SizedBox(height: 1.h),
                                    overView(text: "2000"),
                                    SizedBox(height: 1.h),
                                    overView(text: "Commerical"),
                                    SizedBox(height: 1.h),
                                    overView(text: "Rent"),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    feature(),
                    SizedBox(height: 2.h),
                    Text("Schedule A Tour",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    scheduleAtour(),
                    SizedBox(height: 2.h),
                    Text("Your Information",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    SizedBox(height: 1.h),
                    yourInformation(),
                    SizedBox(height: 2.h),
                    //Contact Information
                    Text(
                      "Contact Informataion",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 2.h),
                    contactInfo(),
                    SizedBox(height: 2.h),
                    Text("Enquire About This Property",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    SizedBox(height: 1.h),
                    yourInformation(),
                    SizedBox(height: 2.h),
                    Text("Leave A Review",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    SizedBox(height: 1.h),
                    leaveAreView(),
                    SizedBox(height: 2.h),
                    Text("Similar Property Listing",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    SizedBox(height: 1.h),
                    similarPropertyListing(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget similarPropertyListing() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(child: ComparePropertyList(imagepath: cityImg[0])),
            SizedBox(width: 2.w),
            Flexible(child: ComparePropertyList(imagepath: cityImg[1])),
          ],
        ),
        SizedBox(
          height: 6.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(child: ComparePropertyList(imagepath: cityImg[0])),
            SizedBox(width: 2.w),
            Flexible(child: ComparePropertyList(imagepath: cityImg[1])),
          ],
        ),
        SizedBox(height: 20.0),
      ],
    );
  }

  Widget feature() {
    return Card(
      elevation: 1.0,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Features", style: TextStyle(fontWeight: FontWeight.bold)),
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
    );
  }

  Widget contactInfo() {
    return Card(
      elevation: 1.0,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            contactInformation(
                icons: Icon(
                  Icons.person,
                  color: primaryColor,
                ),
                title: "Agent Name:",
                subtitle: "New Waves Qatar"),
            SizedBox(height: 1.h),
            contactInformation(
                icons: Icon(Icons.call, color: primaryColor),
                title: "Phone:",
                subtitle: "+9745554988"),
            SizedBox(height: 1.h),
            contactInformation(
                icons: Icon(Icons.phone, color: primaryColor),
                title: "Mobile:",
                subtitle: "+9745554988"),
            SizedBox(height: 1.h),
            contactInformation(
              icons: Icon(Icons.call, color: primaryColor),
              title: "WatsApp:",
            ),
          ],
        ),
      ),
    );
  }

  Widget rowButton({String? title, Color? bgcolor, Color? textcolor}) {
    return Container(
      decoration: BoxDecoration(
          color: bgcolor, borderRadius: BorderRadius.circular(8.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        child: Text(title!,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: textcolor, fontSize: 9.sp)),
      ),
    );
  }

  Widget rowbox({Container? container}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(8.0)),
            ),
            SizedBox(width: 3.w),
            container!,
          ],
        ),
        Row(
          children: [
            container,
            SizedBox(width: 3.w),
            container,
          ],
        ),
      ],
    );
  }

  Widget overView({String? text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Text(
        text!,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }

  Widget overviewIcon({String? iconpath, String? text}) {
    return Row(
      children: [
        Container(
          height: 22,
          width: 22,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(iconpath ?? ""
                    //houseImg[index - 1]
                    )),
          ),
        ),
        SizedBox(width: 10.0),
        Text(
          text ?? "",
          style: TextStyle(
            color: Colors.black45,
          ),
        ),
      ],
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

  Widget scheduleAtour() {
    return Column(
      children: [
        SizedBox(height: 2.h),
        CustomeDropDownButton(
            horizantalmergin: 0.0,
            label: 'Tour Type',
            value: loaction,
            itemList: locationList,
            onChanged: (String? value) {
              return setState(
                () => loaction = value!,
              );
            }),
        SizedBox(height: 10.0),
        CustomeDropDownButton(
            horizantalmergin: 0.0,
            label: 'Date',
            value: locationArea,
            itemList: locationAreaList,
            onChanged: (String? value) {
              return setState(
                () => locationArea = value!,
              );
            }),
        SizedBox(height: 10.0),
        CustomeDropDownButton(
            horizantalmergin: 0.0,
            label: 'Time',
            value: allcities,
            itemList: allCitiesList,
            onChanged: (String? value) {
              return setState(
                () => allcities = value!,
              );
            }),
        SizedBox(height: 10.0),
      ],
    );
  }

  Widget address() {
    return Card(
      elevation: 1.0,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
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
                      color: primaryColor,
                      decoration: TextDecoration.underline),
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
                  children: const [
                    Text("City", style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Al Rayyan, Doha, Umm Salal",
                        style: TextStyle(color: Colors.black45)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
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
              children: const [
                Text("Zip/Postal Code",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text("11211", style: TextStyle(color: Colors.black45)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget description() {
    return Card(
      elevation: 1.0,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Description",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 2.h),
            Text(
                '''Paramount Residences - The Most Luxurious Residential Tower in The Pearl.''',
                style: TextStyle(color: Colors.black45)),
            SizedBox(height: 2.h),
            Text(
              '''Eligible for Residency in Qatar - Freehold''',
              style: TextStyle(color: Colors.black45),
            ),
            SizedBox(height: 2.h),
            Text('''*STARINGS PRICE: 4,475,300 QR(Term and conditions apply)''',
                style: TextStyle(color: Colors.black45)),
            SizedBox(height: 2.h),
            Text(
              "*PAYMENT PLAN",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 2.h),
            acceptanceOfTerms(text: '10% Down Payment'),
            SizedBox(height: 10.0),
            acceptanceOfTerms(text: '0% Commission'),
            SizedBox(height: 10.0),
            acceptanceOfTerms(text: '0% Registration'),
            SizedBox(height: 10.0),
            Text(
              "*PROPERTY DESCRIPTION",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 2.h),
            acceptanceOfTerms(text: '2 Master bedrooms'),
            SizedBox(height: 10.0),
            acceptanceOfTerms(text: '1 Guest bathroom'),
            SizedBox(height: 10.0),
            acceptanceOfTerms(text: 'Open Kitchen'),
            SizedBox(height: 10.0),
            acceptanceOfTerms(text: 'Laundry'),
            SizedBox(height: 10.0),
            acceptanceOfTerms(text: 'Living and dining room'),
            SizedBox(height: 10.0),
            acceptanceOfTerms(text: 'Balcony'),
            SizedBox(height: 10.0),
            Text(
              "*PROPERTY AMENITIES:",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 2.h),
            acceptanceOfTerms(text: 'California pool deck'),
            SizedBox(height: 10.0),
            acceptanceOfTerms(text: 'Bar lounge'),
            SizedBox(height: 10.0),
            acceptanceOfTerms(text: 'Private cabanas'),
            SizedBox(height: 10.0),
            acceptanceOfTerms(text: 'BBQ stations'),
            SizedBox(height: 10.0),
            acceptanceOfTerms(text: 'Film projector'),
            SizedBox(height: 10.0),
            acceptanceOfTerms(text: 'Screening room'),
            SizedBox(height: 10.0),
            acceptanceOfTerms(text: 'Kids studio club'),
            SizedBox(height: 10.0),
            acceptanceOfTerms(text: 'Work play suites'),
            SizedBox(height: 10.0),
            acceptanceOfTerms(text: 'Local-deli style cafe'),
            SizedBox(height: 10.0),
            acceptanceOfTerms(text: 'Wellness & fitness center'),
            SizedBox(height: 10.0),
            acceptanceOfTerms(text: 'Stream room'),
            SizedBox(height: 10.0),
            acceptanceOfTerms(text: 'Sauna'),
            SizedBox(height: 10.0),
            acceptanceOfTerms(text: 'Spa'),
            SizedBox(height: 10.0),
            acceptanceOfTerms(text: 'Men & Women salons'),
            SizedBox(height: 2.h),
            Text(
              '''Paramount Residence, Doha, The Pearl comprises 196 one-,two- and three bedroom luxury residendce, with signatures elements of Paramount Hotel & Resorts featured throught, including a California- inspired environment from the bold yet subtly designed lobby to luxurious residences artistically designed down to the ultimate details of back painted glass decor, opulently retro faucets, and handcraffed, exuisitely finished wardrobe interiors. ''',
              style: TextStyle(color: Colors.black45),
            ),
            SizedBox(height: 2.h),
            Text(
              '''Paramount Residence, Doha, The Pearl comprises 196 one-,two- and three bedroom luxury residendce, with signatures elements of Paramount Hotel & Resorts featured throught, including a California- inspired environment from the bold yet subtly designed lobby to luxurious residences artistically designed down to the ultimate details of back painted glass decor, opulently retro faucets, and handcraffed, exuisitely finished wardrobe interiors. ''',
              style: TextStyle(color: Colors.black45),
            ),
            SizedBox(height: 2.h),
            Text(
              '''Paramount Residence, Doha, The Pearl comprises 196 one-,two- and three bedroom luxury ''',
              style: TextStyle(color: Colors.black45),
            ),
            SizedBox(height: 1.h),
            Text(
              "alasmakhrealestate.com",
              style: TextStyle(color: primaryColor),
            ),
          ],
        ),
      ),
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

  Widget contactInformation({Icon? icons, String? title, String? subtitle}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 20,
              width: 20,
              child: icons,
            ),
            SizedBox(width: 10.0),
            Text(
              title!,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Text(
          subtitle ?? "",
          style: TextStyle(
            color: Colors.black45,
          ),
        ),
      ],
    );
  }

  Widget yourInformation() {
    return Card(
      elevation: 1.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 2.h),
              Container(
                padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                child: Text("Your Name "),
                //richText(label: 'Your Name'),
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
          Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5.0),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                      child: Text("Email Address "),
                      // richText(label: 'Email Address'),
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
                      child: Text("Phone Number"),
                      //richText(label: 'Phone Number'),
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
                      child: Text("Your Message "),
                      // richText(label: 'Your Message'),
                    ),
                  ),
                  CustomeTextFormField(
                    horizontalMergin: 0.03,
                    hintText: 'Message Here',
                    maxLines: 5,
                  ),
                ],
              ),
              //switch
              SizedBox(height: 5.0),
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
                          'By submitting this form I agree to Terms of Use',
                          // 'I consent to having this website store my submitted information',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                    ),
                  ],
                ),
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
                    'SUBMIT A TOUR REQUEST',
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
        ],
      ),
    );
  }

  Widget leaveAreView() {
    return Card(
      elevation: 1.0,
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.0),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                  child: Text("Title "),
                  // richText(label: 'Email Address'),
                ),
              ),
              CustomeTextFormField(
                horizontalMergin: 0.03,
                hintText: 'Enter Title',
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
              SizedBox(height: 5.0),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                  child: Text("Rating "),
                  // richText(label: 'Email Address'),
                ),
              ),
              CustomeTextFormField(
                horizontalMergin: 0.03,
                hintText: 'Review',
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
              SizedBox(height: 5.0),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.fromLTRB(12.0, 8.0, 0, 8.0),
                  child: Text("Review"),
                  // richText(label: 'Email Address'),
                ),
              ),
              CustomeTextFormField(
                horizontalMergin: 0.03,
                hintText: 'Write a Message',
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
          SizedBox(height: 20.0),
          Container(
            width: sizeWidth(context),
            margin: EdgeInsets.symmetric(horizontal: sizeWidth(context) * 0.06),
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
            ),
            child: ElevatedButton(
              child: Text(
                'SUBMIT REVIEW',
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
          SizedBox(height: 20.0),
        ],
      ),
    );
  }

  Widget overViewRow() {
    return Container(
      width: sizeWidth(context),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
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
                children: const [
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
