import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bonyanaldoha/screens/splash.dart';
import 'package:bonyanaldoha/utils/index_utils.dart';
import 'package:bonyanaldoha/screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: primaryColor,
        statusBarIconBrightness: Brightness.dark));
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        translations: Languages(),
        locale: Locale('en', 'US'),
        fallbackLocale: Locale('en', 'US'),
        title: 'Home Search',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: myappColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const Splash(),
          'SignIn': (context) => LoginScreen(),
        },
      );
    });
  }

  MaterialColor myappColor = const MaterialColor(
    0xffC99C37,
    <int, Color>{
      50: Color(0xffd8b476), //10%
      100: Color(0xffd8b476), //20%
      200: Color(0xffd8b476), //30%
      300: Color(0xffd8b476), //40%
      400: Color(0xffd8b476), //50%
      500: Color(0xffd8b476), //60%
      600: Color(0xffd8b476), //70%
      700: Color(0xffd8b476), //80%
      800: Color(0xffd8b476), //90%
      900: Color(0xffd8b476), //100%
    },
  );
}
