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

      // var _response = await dio.post(
      //     "https://www.onmascota.thevistech.com/api/login?",
      //     data: {"email": email, "password": password});
      var _response = await Api.post(
        "https://www.onmascota.thevistech.com/api/login?",
        body: {"email": email, "password": password},
      );
      var _user = LoginModel.fromJson(_response);
      await _prefs.setString(PreferencesKeys.token, _user.data.token);
    } catch (error) {
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
