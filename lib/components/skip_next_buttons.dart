import 'package:flutter/material.dart';
import 'package:qrpay_ui/utils/config.dart';

class SkipNextButtons extends StatelessWidget {
  final VoidCallback onSkip;
  final VoidCallback onNext;

  const SkipNextButtons({
    Key? key,
    required this.onSkip,
    required this.onNext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: onSkip,
          child: Text('Skip'),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.white, // White background for Skip button
              foregroundColor: Colors.green,),
        ),
        ElevatedButton(
          onPressed: onNext,
          child: Text('Next'),
          style: ElevatedButton.styleFrom(backgroundColor: Config.primaryColor, // White background for Skip button
              foregroundColor: Colors.white,),
        ),
      ],
    );
  }
}