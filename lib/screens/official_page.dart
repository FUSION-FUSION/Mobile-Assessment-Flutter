import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mobile_assessment_flutter/screens/package_screen.dart';

import '../wigdets/app_styles.dart';

class OfficialPage extends StatelessWidget {
  const OfficialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.format_align_center),
                Text(
                  'Hello, John.',
                  style: Styles.headlineStyle1,
                ),
                Image.asset(
                  "assets/images/ic-notification.png",
                  height: 40,
                  width: 40,
                ),
              ],
            ),
          ),
          const Gap(20),
          Container(
            height: 230,
            width: 500,
            padding: new EdgeInsets.all(10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Styles.bgColor,
              elevation: 10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Gap(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          children: [
                            Text(
                              'Total Balance',
                              style: Styles.headlineStyle1,
                            ),
                            const Gap(5),
                            Text(
                              '#50,0000',
                              style: Styles.headlineStyle1,
                            ),
                          ],
                        ),
                      ),
                      const Gap(5),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Tap up >>',
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF2979FF),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // <-- Radius
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Image.asset(
                        "assets/images/bg-dashboard-balance.png",
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const Gap(30),
          //creating the second container.
          Container(
            height: 150,
            width: 500,
            padding: new EdgeInsets.all(10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Styles.bgColor,
              elevation: 10,
              child: Column(
                children: [
                  Text(
                    'Track your waybill.',
                    style: Styles.headlineStyle1,
                  ),
                  const Gap(10),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: const Color(0xFFF4F6FD),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    child: Row(
                      children: [
                        const Icon(
                          FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205),
                        ),
                        Text('waybill Number', style: Styles.headlineStyle4),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Gap(20),
          const PackageScreen(),
        ],
      ),
    );
  }
}
