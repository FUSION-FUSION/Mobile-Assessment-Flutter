import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/screens/homeScreen/widgets/packageItem.dart';
import 'package:mobile_assessment_flutter/utils/colors.dart';
import 'package:mobile_assessment_flutter/widget/appButton.dart';

class PackageGrid extends StatelessWidget {
  static const routeName = '/package';
  const PackageGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PackageGridItem(
              hasCurves: false,
              isActive: true,
              roadImage: 'assets/Shipify-Assets/ic-road-same-state.png',
              contentImage: 'assets/Shipify-Assets/ic-bike.png',
              contentTitle: 'Same State',
              contentText: 'Deliveries within the same State.',
              button: AppButton(
                  child: Icon(
                    Icons.arrow_forward,
                    color: formTextColor,
                    size: 15,
                  ),
                  color: buttonColor,
                  radius: 12,
                  width: 24,
                  height: 24),
            ),
            PackageGridItem(
              hasCurves: true,
              isActive: true,
              roadImage: 'assets/Shipify-Assets/ic-road-interstate.png',
              contentImage: 'assets/Shipify-Assets/Delivery-Van.png',
              contentTitle: 'Interstate',
              contentText: 'Deliveries outside your current state',
              button: AppButton(
                  child: Icon(
                    Icons.arrow_forward,
                    color: formTextColor,
                    size: 15,
                  ),
                  color: buttonColor,
                  radius: 12,
                  width: 24,
                  height: 24),
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PackageGridItem(
              hasCurves: true,
              isActive: true,
              roadImage: 'assets/Shipify-Assets/ic-road-charter.png',
              contentImage: 'assets/Shipify-Assets/ic-truck.png',
              contentTitle: 'Charter',
              contentText: 'Request a vehichle',
              button: AppButton(
                  child: Icon(
                    Icons.arrow_forward,
                    color: formTextColor,
                    size: 15,
                  ),
                  color: buttonColor,
                  radius: 12,
                  width: 24,
                  height: 24),
            ),
            PackageGridItem(
              hasCurves: false,
              isActive: false,
              roadImage: 'assets/Shipify-Assets/bg-app-cloud.png',
              contentImage: 'assets/Shipify-Assets/ic-aeroplane.png',
              contentTitle: 'International',
              contentText: 'Send packages to other countries',
              button: AppButton(
                  child: Text(
                    'Coming Soon',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontSize: 9.07,
                        fontWeight: FontWeight.w500,
                        color: formTextColor),
                  ),
                  color: buttonColor,
                  radius: 9.18,
                  width: 75.58,
                  height: 18.14),
            )
          ],
        )
      ],
    );
  }
}
