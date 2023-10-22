import 'package:flutter/material.dart';
import 'package:qrpay_ui/utils/text.dart';
import 'package:qrpay_ui/utils/config.dart';
import 'package:qrpay_ui/components/skip_next_buttons.dart';

class PageFour extends StatelessWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/payment 1.png'),
            Config.spaceMedium,
            Image.asset('assets/green_stuff_3.png'),
            Config.spaceMedium,
            Text(
              AppText.enText['page_two_main']!,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Config.spaceSmall,
            Text(
              AppText.enText['page_two_sub']!,
              textAlign: TextAlign.center,
            ),
            SkipNextButtons(onSkip: (){Navigator.of(context).pushReplacementNamed('page_five');}, onNext: (){
              Navigator.of(context).pushReplacementNamed('page_five');
            })
          ],
        ),
      ),
    );
  }
}