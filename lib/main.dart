import 'package:flutter/material.dart';
import 'package:qrpay_ui/pages/splash/splash_page.dart';
import 'package:qrpay_ui/pages/page_two.dart';
import 'package:qrpay_ui/pages/page_three.dart';
import 'package:qrpay_ui/pages/page_four.dart';
import 'package:qrpay_ui/pages/page_five.dart';
import 'package:qrpay_ui/utils/config.dart'; // Import your PageTwo widget
import 'package:qrpay_ui/pages/add_card/add_card_page.dart';
import 'package:qrpay_ui/pages/bank_transfer/bank_transfer_page.dart';
import 'package:qrpay_ui/pages/add_money/add_money_page.dart';
import 'package:qrpay_ui/pages/profile/profile_page.dart';

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
        'page_two' : (context) => const AddMoneyPage(),
        // 'page_two': (context) => const PageTwo(),
        'page_three': (context) => const PageThree(),
        'page_four': (context) => const PageFour(),
        'page_five': (context) => const PageFive(),
      },
    );
  }
}
