import 'package:flutter/material.dart';

sizeheight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

//width
sizeWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

const String imgpath = 'assets/images';
const String iconpath = 'assets/svgicons';
const String iconspath = 'assets/icons';

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

Map<String, dynamic> constanText = {
  "accountRole": "Account Role",
  "agent": "Agent",
  "updatedAccount": "UPDATE ACCOUNT",
  "updatedPassword": "UPDATE PASSWORD",
  "changePassword": "Change Password",
  "deleteAccount": "Delete Account",
  "deleteMyAccount": "DELETE MY ACCOUNT",
  "addNewDeal": "Add New Deal",
  "filterbylisting":"Filter by Listing",
  "group": "Group",
  "title": "Title",
  "contactName": "Contact Name",
  "dealValue": "Deal Value",
  "inquiries": "Inquiries",
  "addNewInquiry": "ADD NEW INQUIRY",
  "dontHaveAnyInquiriesAtThisMoment": "Don't have any inquiry at this moment.",
};
