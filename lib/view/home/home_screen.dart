import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/view/home/send_a_package_card.dart';
import 'package:mobile_assessment_flutter/view/home/track_bill_card.dart';
import '../../constants/assets_constant_name.dart';
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
                TrackBillCard(height: height, width: width),
                SizedBox(
                  height: height * 0.05,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Send a Package',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: height * 0.03),
                Container(
                  width: double.infinity,
                  height: height * 0.5,
                  child: GridView.count(
                    childAspectRatio: .75,
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: const [
                      PackageCard(
                        title: 'Same State',
                        description: 'Deliveries within the \nsame state',
                        images: [icRoadSameState, icBike],
                        isLight: true,
                      ),
                      PackageCard(
                        title: 'InterState',
                        description: 'Deliveries outside your current state',
                        images: [icRoadInterstate,deliveryVan],
                        isLight: true,
                      ),
                      PackageCard(
                        title: 'Charter',
                        description: 'Request Vehicle',
                        images: [icRoadCharter,icTruck, ],
                        isLight: true,
                      ),
                      PackageCard(
                        title: 'International',
                        description: 'Send packages to other countries',
                        images: [icRoadCharter, icAeroplane ],
                        isLight: false,
                      )

                    ],
                  ),
                ),
                SizedBox(
                  height: 500,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
