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

abstract class ResponseCodes {
  static String unknown = "UN8656696";
  static String timeout = "TOE8463688";
  static String alreadyExist = "ERRDB0001";
  static String invalidToken = "ERRINV0007";
  static String networkConnection = "NCE6389675";
  static String invalidCredentials = "ERRINV0006";
  static String invalidService = "ERRINV0021";
}

//https://www.onmascota.thevistech.com/api/login?email=admin@onmascota.com&password=123456789
abstract class Constants {
  static String baseUrl = "https://www.onmascota.thevistech.com";
}

Map<String, dynamic> constanText = {
  //Add New Inquiry Screen
  "Price":"Price",
  "Contact":"Contact",
  "Address":"Address",
  "Bedrooms":"Bedrooms",
  "Area_Size":"Area Size",
  "Bathrooms":"Bathrooms",
  "Information":"Information",
  "Inquiry_Type":"Inquiry Type",
  "Property_Type":"Property Type",
     

  "agent": "Agent",
  "group": "Group",
  "title": "Title",
  "inquiries": "Inquiries",
  "dealValue": "Deal Value",
  "addNewDeal": "Add New Deal",
  "contactName": "Contact Name",
  "accountRole": "Account Role",
  "deleteAccount": "Delete Account",
  "addNewInquiry": "ADD NEW INQUIRY",
  "updatedAccount": "UPDATE ACCOUNT",
  "changePassword": "Change Password",
  "updatedPassword": "UPDATE PASSWORD",
  "deleteMyAccount": "DELETE MY ACCOUNT",
  "filterbylisting": "Filter by Listing",
  "dontHaveAnyInquiriesAtThisMoment": "Don't have any inquiry at this moment.",
};
