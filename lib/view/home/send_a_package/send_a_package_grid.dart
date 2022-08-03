import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/view/home/send_a_package/send_a_package_card.dart';
import '../../../constants/assets_constant_name.dart';

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
                images: [icRoadSameState, icBike],
                isLight: true,
              ),
              Spacer(),
              PackageCard(
                isHavingCurve: true,
                title: 'InterState',
                description:
                'Deliveries outside your current state',
                images: [icRoadInterstate, deliveryVan],
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
                  icRoadCharter,
                  icTruck,
                ],
                isLight: true,
              ),
              Spacer(),
              PackageCard(
                isComingSoon: true,
                title: 'International',
                description: 'Send packages to other countries',
                images: [icRoadCharter, icAeroplane],
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
