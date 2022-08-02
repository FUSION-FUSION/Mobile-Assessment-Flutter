import 'package:flutter/material.dart';

// visual components
import 'visual_components/send_a_package_template.dart';
import 'visual_components/other_actions_template.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        backgroundColor: Colors.white70,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Hello, John',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 21,
            color: Colors.black87,
          ),
        ),
        actions: [
          // Notifications button
          GestureDetector(
            onTap: () {
              print('Notification button tapped');
            },
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/ic-notification.png'),
                  fit: BoxFit.cover,
                )
              ),
            ),
          ),
        ],
      ),

      body: Container(
        height: 500,
        child: ListView(
          children: [
            // Account balance section

            // "Track your waybill" section

            // "Send a package" section

            // "other actions" section
          ],
        ),
      ),
    );
  }
}
