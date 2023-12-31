import 'package:flutter/material.dart';
import 'package:qrpay_ui/utils/config.dart';

class BankTransferPage extends StatelessWidget {
  const BankTransferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bank Transfer'),
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
                hintText: 'Enter Recipient Acount Number',
              ),
            ),
            const SizedBox(height: 16.0), // Add spacing between fields

           // Expiry Date and CVV Fields in a Row
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Bank',
                hintText: 'Select Bank',
              ),
            ),
            const SizedBox(width: 16.0), // Add spacing between fields

            // CVV Field
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Amount',
                hintText: '100.00 - 2,000,000.00',
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
