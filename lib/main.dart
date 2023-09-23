import 'package:flutter/material.dart';
import 'package:qrpay_ui/pages/page_one.dart';
import 'package:qrpay_ui/pages/page_two.dart';
import 'package:qrpay_ui/pages/page_three.dart';
import 'package:qrpay_ui/pages/page_four.dart';
import 'package:qrpay_ui/pages/page_five.dart';
import 'package:qrpay_ui/utils/config.dart'; // Import your PageTwo widget

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //this is for push navigator
  static final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'QRPAY',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          inputDecorationTheme:
              const InputDecorationTheme(focusColor: Config.primaryColor)),
      initialRoute: '/',
      routes: {
        '/': (context) => const PageOne(),
        'page_two': (context) => const PageTwo(),
        'page_three': (context) => const PageThree(),
        'page_four': (context) => const PageFour(),
        'page_five': (context) => const PageFive(),
      },
    );
  }
}
