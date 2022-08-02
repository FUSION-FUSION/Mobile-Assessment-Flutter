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
        backgroundColor: Colors.transparent,
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
            fontSize: 20,
            color: Colors.black87,
          ),
        ),
        actions: [
          // Notifications button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: GestureDetector(
              onTap: () {
                print('Notification button tapped');
              },
              child: Image.asset(
                'images/ic-notification.png',
                width: 30,
                height: 30,
              ),
            ),
          ),
        ],
      ),

      body: ListView(
        children: [
          // Account balance section

          // "Track your waybill" section

          // "Send a package" Header
          const Text(
            'Send a Package',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),

          // "Send a package" section
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SendAPackageCard(
                    title: 'Same State',
                    description: 'Deliveries within the same state',
                    bgImage: 'images/ic-road-same-state.png',
                    overlayImage: 'images/ic-bike.png',
                  ),
                  SendAPackageCard(
                    title: 'Interstate',
                    description: 'Deliveries outside your current state',
                    bgImage: 'images/ic-road-interstate.png',
                    overlayImage: 'images/delivery_van.png',
                  ),
                ],
              ),
              Row(
                children: const [
                  SendAPackageCard(
                    title: 'Charter',
                    description: 'Request a vehicle',
                    bgImage: 'images/ic-road-charter.png',
                    overlayImage: 'images/ic-truck.png',
                  ),
                  SendAPackageCard(
                    title: 'International',
                    description: 'Send packages to other countries',
                    overlayImage: 'images/ic-aeroplane.png',
                  ),
                ],
              ),
            ],
          ),

          // "Other actions" text
          const Text(
            'Other Actions',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),

          // "other actions" section
        ],
      ),
    );
  }
}
