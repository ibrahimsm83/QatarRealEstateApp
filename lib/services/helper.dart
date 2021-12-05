import 'dart:async';
import 'package:dio/dio.dart';
import 'package:bonyanaldoha/model/login_model.dart';
import 'package:bonyanaldoha/services/api.dart';
import 'package:bonyanaldoha/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

//import 'package:http/http.dart' as http;

class Helper {
  static Future login({required String email, required String password}) async {
    print("hello");
    var dio = Dio();
    try {
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      print("2");

      var _response = await dio.post(
          "https://www.onmascota.thevistech.com/api/login?",
          data: {"email": email, "password": password});
      // var _response = await Api.post(
      //   "/login",
      //   body: {"email": email, "password": password},
      // );
      print("response");
      // print(_response);
      return _response.data;
      // var _user = LoginModel.fromJson(_response.);
      //print(_user.data);
      //await _prefs.setString(PreferencesKeys.token, _user.data.token);
      // var _contacts = await ContactsCorba.getContacts(downloadMedia: true);
      // var _templates = await TemplateCorba.getTemplates(downloadMedia: true);
      // var _inspections = await InspectionCorba.getInspections(
      //   downloadMedia: true,
      // );

      // await Boxes.addPeople(_contacts);
      // Boxes.addAllTemplate(_templates);
      // Boxes.addAllInspection(_inspections);
      // Boxes.addUser(_user);
    } catch (error) {
      //Boxes.clean();
      throw error;
    }
  }
  // static Future<List<BitCoinModel>> getdata() async {
  //   const String url = "https://api3.binance.com/api/v3/ticker/24hr";
  //   var response = await http.get(Uri.parse(url));

  //   if (response.statusCode == 200) {
  //     return bitCoinModelFromJson(response.body);
  //   } else {
  //     print('Request failed with status: ${response.statusCode}.');
  //   }
  //   return [];
  // }
}
