import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../services/services.dart';

class LocaleController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find(); // لاستدعاء السيرفيزرز

  changeLang(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences
        .setString("lang", langcode); // هنحفظ اللغه فى الشير
    Get.updateLocale(locale);
  }

// عند فتح الجهاز لاول مره يفتح لغه الجهاز
  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
