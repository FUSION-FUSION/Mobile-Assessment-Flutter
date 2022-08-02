import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/view/home/track_bill_card.dart';
import 'package:mobile_assessment_flutter/view/home/track_bill_search_bar.dart';

import '../../constants/assets_constant_name.dart';
import '../../constants/color_pallette.dart';
import 'home_header.dart';
import 'money_dashboard_card.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
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
              SizedBox(height: height * 0.03,),
              TrackBillCard(height: height, width: width),
              SizedBox(
                height: height * 0.05,
              ),
              Text(
                'Send a Package'
              )
            ],
          ),
        ),
      ),
    );
  }
}








