import 'package:flutter/material.dart';
import 'package:qrpay_ui/utils/config.dart';

class AddCardPage extends StatelessWidget {
  const AddCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Card'),
        backgroundColor: Config.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Card Number Field
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Card Number',
                hintText: 'Enter 10 digits',
              ),
            ),
            const SizedBox(height: 16.0), // Add spacing between fields

            // Name on Card Field
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Name on Card',
                hintText: 'Enter full name',
              ),
            ),
            const SizedBox(height: 16.0), // Add spacing between fields

            // Expiry Date and CVV Fields in a Row
            Row(
              children: [
                // Expiry Date Field
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Expiry Date',
                      hintText: 'MM/YY',
                    ),
                  ),
                ),
                const SizedBox(width: 16.0), // Add spacing between fields

                // CVV Field
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'CVV',
                      hintText: 'XXX',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0), // Add spacing between fields
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white70),
                onPressed: () {
                  ;
                },
                child: Image.asset('assets/add_card/add_card_button.png')),
          ],
        ),
      ),
    );
  }
}
