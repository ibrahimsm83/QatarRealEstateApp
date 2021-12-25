import 'package:bonyanaldoha/screens/login_screen.dart';
import 'package:bonyanaldoha/screens/splash.dart';
import 'package:flutter/material.dart';
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
    child: const MyApp(),
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

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
        locale: context.locale,
        title: 'Flutter Demo', debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
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
}
