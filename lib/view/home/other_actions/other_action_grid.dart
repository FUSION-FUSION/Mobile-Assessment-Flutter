import'package:flutter/material.dart';
import 'other_action_card.dart';
class OtherActionGrid extends StatelessWidget {
  const OtherActionGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return SizedBox(
      height: height * 0.19,
      width: width,
      child: Row(
        children: const [
          OtherActionCard(
              title: 'Waybill History',
              description: 'Records of all your \nwaybills'),
          Spacer(),
          OtherActionCard(
              title: 'Get Help',
              description: 'Get help & support \nfrom our team')
        ],
      ),
    );
  }
}