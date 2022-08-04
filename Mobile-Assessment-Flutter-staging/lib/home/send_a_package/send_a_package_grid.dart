import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/home/send_a_package/send_a_package_card.dart';

class SendAPackageGrid extends StatelessWidget {
  const SendAPackageGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return SizedBox(
      width: width * 0.9,
      height: height * 0.7,
      child: Column(
        children: [
          const Spacer(),
          Row(
            children: const [
              PackageCard(
                title: 'Same State',
                description: 'Deliveries within the \nsame state',
                images: ['assets/ic-road-same-state.png', 'assets/ic-bike.png'],
                isLight: true,
              ),
              Spacer(),
              PackageCard(
                isHavingCurve: true,
                title: 'InterState',
                description: 'Deliveries outside your current state',
                images: [
                  'assets/ic-road-interstate.png',
                  'assets/Delivery Van.png'
                ],
                isLight: true,
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: const [
              PackageCard(
                isHavingCurve: true,
                title: 'Charter',
                description: 'Request Vehicle',
                images: [
                  'assets/ic-road-charter.png',
                  'assets/ic-truck.png',
                ],
                isLight: true,
              ),
              Spacer(),
              PackageCard(
                isComingSoon: true,
                title: 'International',
                description: 'Send packages to other countries',
                images: [
                  'assets/ic-road-charter.png',
                  'assets/ic-aeroplane.png'
                ],
                isLight: false,
              ),
            ],
          ),
          const Spacer()
        ],
      ),
    );
  }
}
