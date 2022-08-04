import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/utils/colors.dart';
import 'package:mobile_assessment_flutter/utils/dimensions.dart';

class WaybillBottomsheet extends StatefulWidget {
  const WaybillBottomsheet({Key? key}) : super(key: key);

  @override
  State<WaybillBottomsheet> createState() => _WaybillBottomsheetState();
}

class _WaybillBottomsheetState extends State<WaybillBottomsheet> {
  double maxHeight = 824 / Dimensions.designHeight;
  double midHeight = 527 / Dimensions.designHeight;
  double minHeight = 234 / Dimensions.designHeight;
  bool reverse = false;

  WayBillBottomHeight _height = WayBillBottomHeight.max;
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: getBottomsheetHeight(_height),
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            width: Dimensions.sizeWidthPercent(428),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.sizeWidthPercent(40)),
                topRight: Radius.circular(Dimensions.sizeWidthPercent(40)),
              ),
            ),
            child: Stack(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: Dimensions.sizeHeightPercent(32)),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: Dimensions.sizeHeightPercent(8),
                      width: Dimensions.sizeWidthPercent(50),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(
                            Dimensions.sizeWidthPercent(
                                10)), // This is the radius of the circle
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                      top: Dimensions.sizeHeightPercent(20),
                      right: Dimensions.sizeWidthPercent(43),
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {
                          if (reverse) {
                            if (_height == WayBillBottomHeight.min) {
                              setState(() {
                                _height = WayBillBottomHeight.mid;
                                reverse = false;
                              });
                            }
                            if (_height == WayBillBottomHeight.mid) {
                              setState(() {
                                _height = WayBillBottomHeight.min;
                                reverse = false;
                              });
                            }
                            if (_height == WayBillBottomHeight.max) {
                              setState(() {
                                _height = WayBillBottomHeight.mid;
                              });
                            }
                          } else {
                            if (_height == WayBillBottomHeight.max) {
                              setState(() {
                                _height = WayBillBottomHeight.mid;
                                reverse = true;
                              });
                            }
                            if (_height == WayBillBottomHeight.mid) {
                              setState(() {
                                _height = WayBillBottomHeight.max;
                                reverse = true;
                              });
                            }
                            if (_height == WayBillBottomHeight.min) {
                              setState(() {
                                _height = WayBillBottomHeight.mid;
                              });
                            }
                          }
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.arrow_upward,
                              size: Dimensions.sizeHeightPercent(11),
                            ),
                            Icon(
                              Icons.arrow_downward,
                              size: Dimensions.sizeHeightPercent(11),
                            )
                          ],
                        ),
                      ),
                    )),
                Positioned(
                  top: Dimensions.sizeHeightPercent(75),
                  left: Dimensions.sizeWidthPercent(13.5),
                  right: Dimensions.sizeWidthPercent(13.5),
                  child: Column(
                    children: [
                      Container(
                        height: 126,
                        width: 401,
                        decoration: BoxDecoration(
                            color: AppColors.primaryBlue,
                            borderRadius: BorderRadius.circular(21.73)),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}

enum WayBillBottomHeight {
  min,
  mid,
  max,
}

//funtion to get the height of the bottomsheet
double getBottomsheetHeight(WayBillBottomHeight height) {
  switch (height) {
    case WayBillBottomHeight.min:
      return 234 / Dimensions.designHeight;
    case WayBillBottomHeight.mid:
      return 527 / Dimensions.designHeight;
    case WayBillBottomHeight.max:
      return 824 / Dimensions.designHeight;
    default:
      return Dimensions.sizeHeightPercent(824);
  }
}
