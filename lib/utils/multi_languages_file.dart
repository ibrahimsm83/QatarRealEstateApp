
import 'package:get/get.dart';
import 'package:bonyanaldoha/utils/index_utils.dart';


class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US':
            constanEnglish, //{'selectyourLanguage': 'Select Your Language'},
        'ar_SA': constantArabic
        // {'selectyourLanguage': 'اختر لغتك'}
      };
}
