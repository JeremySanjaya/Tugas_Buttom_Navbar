import 'package:flutter/material.dart';
import 'package:get/get.dart'; // If you're using GetX for state management or navigation

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // This removes the back button
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Log out action
              Get.defaultDialog(
                title: "Log Out",
                middleText: "Are you sure you want to log out?",
                textConfirm: "Yes",
                textCancel: "No",
                onConfirm: () {
                  Get.back(); // Close dialog
                  // Add your log out logic here (e.g., clearing session, redirecting to login page)
                  Get.offAllNamed(
                      '/login'); // Redirect to login page after logging out
                },
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                  'assets/images/profile.jpg'), // Profile picture
            ),
            SizedBox(height: 16),
            Text(
              'Jeremy Edward Domenico Sanjaya',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Shoe Enthusiast',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            Divider(height: 32),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.shopping_bag),
                    title: Text('Favorite Shoes'),
                    subtitle: Text('Air Jordan 1, Puma MB.03'),
                  ),
                  ListTile(
                    leading: Icon(Icons.history),
                    title: Text('Order History'),
                    subtitle: Text('Last order: Puma MB.01 Inverse Toxic'),
                  ),
                  ListTile(
                    leading: Icon(Icons.payment),
                    title: Text('Payment Methods'),
                    subtitle: Text('Visa **** 1234'),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
