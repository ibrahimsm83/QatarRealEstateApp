import 'package:bonyanaldoha/screens/notification_screen.dart';
import 'package:bonyanaldoha/services/api_data.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:bonyanaldoha/widgets/custome_dialog_box.dart';
import 'package:bonyanaldoha/widgets/favorite_property_list.dart';
import 'package:bonyanaldoha/widgets/simple_appbar.dart';
import 'package:flutter/material.dart';

class Favoritiepg extends StatefulWidget {
  const Favoritiepg({Key? key}) : super(key: key);

  @override
  _FavoritiepgState createState() => _FavoritiepgState();
}

class _FavoritiepgState extends State<Favoritiepg> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: SimpleAppBar(
          onTapLeading: () => Navigator.pop(context),
          backgroundColor: whiteColor,
          abtitle: "Favorite",
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => NotificationPg())),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: cityImg.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return FavoriteList(
                    index: index,
                    btntext: "RENT",
                    address: addresses[0],
                    imagepath: cityImg[index],
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
        ),
      ),
    );
  }
}
