import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Util/colors.dart';
import 'package:snapping_sheet/snapping_sheet.dart';

class WaybillTrackingScreen extends StatelessWidget {
  static const id = '/waybilll';
  const WaybillTrackingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kHomeScaffoldColor,
      body: SnappingSheet(
        child: Text('Hello'),
        grabbingHeight: 75,
        grabbing: Container(
          decoration: const BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    Container(
                      height: 3,
                      width: 50,
                      decoration: BoxDecoration(color: kGreyColor),
                    ),
                    Icon(Icons.keyboard_arrow_up_sharp)
                  ],
                ),
              )
            ],
          ),
        ),
        sheetBelow: SnappingSheetContent(
          draggable: true,
          child: Text(
            'welcome',
          ),
        ),
      ),
    );
  }
}
