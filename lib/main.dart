import 'package:bonyanaldoha/screens/login_screen.dart';
import 'package:bonyanaldoha/screens/splash.dart';
import 'package:bonyanaldoha/utils/color_schemes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    supportedLocales: const [
      Locale('en', 'US'),
      Locale('ar', 'DZ'),
    ],
    path:
        'assets/translationss', // <-- change the path of the translation files
    fallbackLocale: Locale('en', 'US'),
    child: MyApp(),
  ));
}

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await EasyLocalization.ensureInitialized();

//   runApp(
//     EasyLocalization(
//         supportedLocales: [Locale('en', 'US'), Locale('de', 'DE')],
//         path:
//             'assets/translations', // <-- change the path of the translation files
//         fallbackLocale: Locale('en', 'US'),
//         child: MyApp()),
//   );
// }

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: primaryColor,
        statusBarIconBrightness: Brightness.dark));
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
        locale: context.locale,
        title: 'Flutter Demo', debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: myappColor,
          // primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        //   dashboard.home: MyHomePage(title: 'Flutter Demo Home Page'),

        initialRoute: '/',
        routes: {
          '/': (context) => const Splash(),
          //LoginScreen
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
