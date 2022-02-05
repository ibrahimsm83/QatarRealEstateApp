import 'package:bonyanaldoha/screens/add_new_agency_screen.dart';
import 'package:bonyanaldoha/screens/my_developers_screen.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:bonyanaldoha/widgets/simple_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);
  double coverheight = 220;
  double profileheight = 144;
  @override
  Widget build(BuildContext context) {
    final top = coverheight - profileheight / 2;
    final bottom = profileheight / 2;
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: whiteColor,
      ),
      // SimpleAppBar(
      //   onTapLeading: () => Navigator.pop(context),
      //   backgroundColor: whiteColor,
      //   abtitle: "Profile",
      //   // onTap: () => Navigator.push(
      //   //     context,
      //   //     MaterialPageRoute(
      //   //         builder: (BuildContext context) => NotificationPg())),
      // ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          //profile
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(bottom: bottom),
                height: coverheight,
                // color: Colors.grey,
                child: Image.asset(
                  '$imgpath/city2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: top,
                child: CircleAvatar(
                  radius: profileheight / 2,
                  backgroundColor: Colors.grey.shade800,
                  backgroundImage: AssetImage('$imgpath/profile.jpg'),
                ),
              )
            ],
          ),
          //profile end
          Column(
            children: [
              SizedBox(height: 5.0),
              Text(
                "John Smith",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5.0),
              Text(
                "Business man",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "$iconpath/location.svg",
                    // color: Colors.black,
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(width: 3.0),
                  Text(
                    "Mad by Qatar .",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "$iconpath/Blog.svg",
                    // color: Colors.black,
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(width: 3.0),
                  Text(
                    "www.Qarat.com",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.0),
              // Divider(),
              Container(
                height: 0.5,
                width: sizeWidth(context) / 1.5,
                color: Colors.grey,
              ),
              SizedBox(height: 15.0),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    profileAdsBox(
                        Iconname: "$iconpath/Inquries.svg",
                        title: 'My Listings'),
                    profileAdsBox(
                      Iconname: "$iconpath/Leads.svg",
                      title: 'My Agents',
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  AddNewAgencypage())),
                    ),
                    profileAdsBox(
                      Iconname: "$iconpath/My Profile.svg",
                      title: 'My Developers',
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  Developerspage())),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    profileAdsBox(
                        Iconname: "$iconpath/Deals.svg", title: 'My Orders'),
                    profileAdsBox(
                        Iconname: "$iconpath/Invoice.svg",
                        title: 'My Invoices'),
                    profileAdsBox(
                        Iconname: "$iconpath/Membership.svg", title: 'Invite')
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                child: Container(
                  width: sizeWidth(context),
                  // margin:
                  //     EdgeInsets.symmetric(horizontal: sizeWidth(context) * 0.06),
                  height: 45,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  child: ElevatedButton(
                    child: const Text(
                      'EDIT PROFILE',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      // Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (BuildContext context) =>
                      //             const HomePage()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: primaryColor,
                      textStyle: const TextStyle(
                        fontSize: 14,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
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

//Developerspage
  Widget profileAdsBox(
      {required String Iconname,
      required String title,
      void Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Iconname,
              //"$iconpath/advertise.svg",
              color: Colors.black,
              height: 40,
              width: 40,
            ),
            SizedBox(height: 3.0),
            Text(
              //"Advertise",
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
