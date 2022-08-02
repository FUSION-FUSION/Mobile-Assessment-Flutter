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
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: GestureDetector(
              onTap: () {
                print('Notification button tapped');
              },
              child: Image.asset(
                'images/ic-notification.png',
                width: 26,
                height: 26,
              ),
            ),
          ),
        ],
      ),

      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          // Account balance section
          Container(
            height: 70,
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage('images/bg-dashboard-balance.png'),
                fit: BoxFit.fill,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2,
                  spreadRadius: 0.1,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(18)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Total balance
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Total Balance',
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        '# 50,000',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),

                // Top up button
                Padding(
                  padding: const EdgeInsets.only(right: 18),
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.cyan,
                    padding: const EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: const [
                        // "Top up" text
                        Text(
                          'Top up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        // Double forward icon
                        Icon(
                          Icons.fast_forward,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

          // "Track your waybill" section
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2,
                  spreadRadius: 0.1,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // "Track your waybill" text
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    'Track your waybill',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                // TextField container
                Container(
                  height: 37,
                  margin: const EdgeInsets.fromLTRB(34, 0, 34, 30),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.cyan,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      // search icon
                      const Padding(
                        padding: EdgeInsets.only(left: 10, right: 3),
                        child: Icon(
                          Icons.search,
                          color: Colors.black45,
                          size: 18,
                        ),
                      ),
                      // "Waybill Number" TextField
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Waybill Number',
                            hintStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      // "Track" button
                      Container(
                        width: 70,
                        margin: const EdgeInsets.all(2),
                        child: MaterialButton(
                          onPressed: () {},
                          color: Colors.cyan,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            'Track',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // "Send a package" Header
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Send a Package',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          // "Send a package" section
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    activated: false,
                  ),
                ],
              ),
            ],
          ),

          // "Other actions" text
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Other Actions',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          // "Other Actions" section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              OtherActionCard(
                title: 'Waybill History',
                description: 'Records of all your waybills',
              ),
              OtherActionCard(
                title: 'Get Help',
                description: 'Get help & support from our team',
              ),
            ],
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
