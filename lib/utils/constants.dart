import 'package:flutter/material.dart';

sizeheight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

//width
sizeWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}
class PreferencesKeys {
  static String token = "token";
}
class ResponseCodes {
  static String unknown = "UN8656696";
  static String timeout = "TOE8463688";
  static String alreadyExist = "ERRDB0001";
  static String invalidToken = "ERRINV0007";
  static String networkConnection = "NCE6389675";
  static String invalidCredentials = "ERRINV0006";
  static String invalidService = "ERRINV0021";
}

//https://www.onmascota.thevistech.com/api/login?email=admin@onmascota.com&password=123456789
class Constants {
  static String baseUrl = "https://www.onmascota.thevistech.com";
}
