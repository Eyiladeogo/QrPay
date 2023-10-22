import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person), // User icon
            onPressed: () {
              // Handle user icon click (e.g., open user profile)
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          buildProfileSettingItem('Profile Settings', Icons.settings),
          buildProfileSettingItem('Bankcard/Account', Icons.credit_card),
          buildProfileSettingItem('Refer Friends', Icons.people),
          buildProfileSettingItem('Report Problem', Icons.report),
          buildProfileSettingItem('Security', Icons.security),
          buildProfileSettingItem('Help and Support', Icons.help),
          buildProfileSettingItem('Rate Us', Icons.star),
          buildProfileSettingItem('Logout', Icons.exit_to_app),
        ],
      ),
    );
  }

  Widget buildProfileSettingItem(String title, IconData iconData) {
    return ListTile(
      leading: Icon(iconData), // Icon on the left
      title: Text(title),
      onTap: () {
        // Handle the action when an item is tapped
        // You can use Navigator to navigate to specific pages for each item.
      },
    );
  }
}
