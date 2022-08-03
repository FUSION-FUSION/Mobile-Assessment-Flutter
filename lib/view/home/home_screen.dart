import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/view/home/send_a_package/send_a_package_grid.dart';
import 'package:mobile_assessment_flutter/view/home/track_your_way_bill/track_bill_card.dart';
import 'home_header.dart';
import 'money_dashboard_card.dart';
import 'other_actions/other_action_grid.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.07,
                ),
                const HomeHeader(),
                SizedBox(
                  height: height * 0.018,
                ),
                MoneyDashboardCard(height: height, width: width),
                SizedBox(
                  height: height * 0.03,
                ),
                const TrackBillCard(),
                SizedBox(
                  height: height * 0.05,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Send a Package',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: height * 0.01),
                const SendAPackageGrid(),
                SizedBox(
                  height: height * 0.02,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Other Actions',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                const OtherActionGrid(),
                SizedBox(
                  height: height * 0.15,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


