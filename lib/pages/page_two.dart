import 'package:flutter/material.dart';
import 'package:qrpay_ui/utils/text.dart';
import 'package:qrpay_ui/utils/config.dart';
import 'package:qrpay_ui/components/skip_next_buttons.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/security.png'),
            Config.spaceMedium,
            Image.asset('assets/green_stuff_1.png'),
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
              Navigator.of(context).pushReplacementNamed('page_three');
            })
          ],
        ),
      ),
    );
  }
}




// class Page2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Page 2'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Stack(
//               alignment: Alignment.center,
//               children: [
//                 Image.asset(
//                   'assets/image1.png', // Replace with your image asset path
//                   width: 200.0,
//                   height: 200.0,
//                 ),
//                 Positioned(
//                   top: 160.0, // Adjust the position as needed
//                   child: Image.asset(
//                     'assets/image2.png', // Replace with your image asset path
//                     width: 80.0,
//                     height: 80.0,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20.0), // Add spacing between images and text
//             Text(
//               'Your Text Here',
//               style: TextStyle(fontSize: 20.0),
//             ),
//             SizedBox(height: 40.0), // Add spacing between text and buttons
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.of(context).pushReplacement(
//                       MaterialPageRoute(builder: (context) => Page5()),
//                     );
//                   },
//                   child: Text('Skip'),
//                 ),
//                 SizedBox(width: 20.0), // Add spacing between buttons
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute(builder: (context) => Page3()),
//                     );
//                   },
//                   child: Text('Next'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class Page3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Page 3'),
//       ),
//       // Add your Page 3 content here
//     );
//   }
// }
//
// class Page5 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Page 5'),
//       ),
//       // Add your Page 5 content here
//     );
//   }
// }
