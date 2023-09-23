import 'package:flutter/material.dart';
import 'package:qrpay_ui/pages/page_two.dart';
import 'package:qrpay_ui/pages/page_three.dart';
import 'package:qrpay_ui/pages/page_four.dart';
import 'package:qrpay_ui/pages/page_five.dart';
import 'package:qrpay_ui/utils/config.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  static final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    Config().init(context);

    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          Container(
            width: double.infinity,
            child: Image.asset('assets/page1.png', fit: BoxFit.cover,),
          ),
          const PageTwo(),
          const PageThree(),
          const PageFour(),
          const PageFive()

        ],
        onPageChanged: (int page){
          // Handle page changes here
          // You can implement custom logic based on the current page
          // For example, navigate to other pages, etc.
          switch (page) {
            case 0:
            // PageOne is displayed
              break;
            case 1:
            // PageTwo is displayed
            // You can add navigation logic here if needed
              Navigator.pushNamed(context, 'page_two');
          // Add more cases for additional pages
          }
        },
      ),
    );
  }
}

