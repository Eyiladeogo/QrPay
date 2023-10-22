import 'package:flutter/material.dart';
import 'package:qrpay_ui/utils/config.dart';

class IdTransferPage extends StatelessWidget {
  const IdTransferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('ID Transfer'),
          backgroundColor: Config.primaryColor
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Card Number Field
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Recipient Account',
                hintText: 'QRpay ID number',
              ),
            ),
            const SizedBox(height: 16.0), // Add spacing between fields

            GestureDetector(
              onTap: () {
                // Handle button tap action here
              },
              child: Image.asset('assets/bank_transfer/bank_transfer_button.png'),
            ),
          ],
        ),
      ),
    );
  }
}
