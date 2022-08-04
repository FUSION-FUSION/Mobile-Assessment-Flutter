import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/screens/trackWayBillScreen/widgets/routeCard.dart';
import 'package:mobile_assessment_flutter/screens/trackWayBillScreen/widgets/routeDetails.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../../utils/colors.dart';

class PanelWidget extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;
  const PanelWidget(
      {Key? key, required this.controller, required this.panelController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
        child: ListView(
          controller: controller,
          padding: const EdgeInsets.symmetric(vertical: 15),
          children: [
            GestureDetector(
              onTap: () {
                panelController.isPanelOpen
                    ? panelController.close()
                    : panelController.open();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  Container(
                      width: 50,
                      height: 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: lineColor)),
                  SizedBox(
                    height: 16,
                    width: 11,
                    child: Image.asset(
                      'assets/Shipify-Assets/resize.png',
                      fit: BoxFit.contain,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            //C
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: RouteCard()),
                SizedBox(
                  height: 27.97,
                ),
                Text(
                  'Route Details',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: formTextColor),
                ),
                const SizedBox(
                  height: 19,
                ),
                RouteDetails()
              ],
            )
          ],
        ));
  }
}
