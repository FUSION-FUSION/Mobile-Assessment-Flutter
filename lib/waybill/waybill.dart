import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/utils/dimensions.dart';
import 'package:mobile_assessment_flutter/waybill/bottomsheet.dart';

import '../widgets/app_text.dart';

class WaybillPage extends StatelessWidget {
  const WaybillPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Image.asset(
                'assets/images/ic-map.png',
                fit: BoxFit.contain,
              )),
          Positioned(
            left: Dimensions.sizeWidthPercent(17),
            top: Dimensions.sizeHeightPercent(63),
            child: Container(
                height: Dimensions.sizeHeightPercent(44),
                width: Dimensions.sizeWidthPercent(46),
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: const Center(
                  child: Icon(
                    Icons.arrow_back,
                  ),
                )),
          ),
          Positioned(
            left: Dimensions.sizeWidthPercent(84),
            top: Dimensions.sizeHeightPercent(66),
            child: Container(
              height: Dimensions.sizeHeightPercent(37),
              width: Dimensions.sizeWidthPercent(288),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimensions.sizeWidthPercent(
                    12)), // This is the radius of the circle
              ),
              child: Center(
                child: AppText(
                  text: 'HH-INT-D9FD00-JBW-ORI',
                  size: 16,
                  bold: true,
                ),
              ),
            ),
          ),
          const WaybillBottomsheet(),
        ],
      ),
    );
  }
}
