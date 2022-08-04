import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/screens/homeScreen/widgets/otherActionItem.dart';

class OtherActions extends StatelessWidget {
  const OtherActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      OtherActionItem(
          contentTitle: 'Waybill History',
          contentText: 'Records of all your waybills.'),
      OtherActionItem(
          contentTitle: 'Get Help',
          contentText: 'Get help & support from our team')
    ]);
  }
}
