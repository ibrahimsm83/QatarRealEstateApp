import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  void changeLanguages(var language, var country) {
    var locale = Locale(language, country);
    Get.updateLocale(locale);
  }
}
