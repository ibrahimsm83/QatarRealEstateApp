import 'package:bonyanaldoha/screens/login.dart';
import 'package:bonyanaldoha/screens/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
         'SignIn':(context)=>LoginScreen(),
      },
    );
  }
}
