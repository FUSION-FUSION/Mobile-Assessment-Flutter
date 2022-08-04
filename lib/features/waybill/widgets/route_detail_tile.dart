import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/core/constants/size_constants.dart';
import 'package:mobile_assessment_flutter/core/theme/app_color.dart';
import 'package:mobile_assessment_flutter/core/utils/sizing.dart';

class RouteDetailTile extends StatelessWidget {
  final String status;
  final String dropofflocation;
  final bool delivered;
  final bool nonlastroute;
  const RouteDetailTile(
      {Key? key,
      required this.status,
      required this.dropofflocation,
      this.delivered = false,
      this.nonlastroute = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              height: 19,
              width: 19,
              padding: const EdgeInsets.all(ktinyspace),
              decoration: BoxDecoration(
                color: delivered ? AppColor.primary : AppColor.basetext,
                shape: BoxShape.circle,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: delivered ? const Color(0XFF8FF0EA) : AppColor.white,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            if (nonlastroute)
              ...List.generate(
                15,
                ((index) => Container(
                      width: 2,
                      height: 2,
                      margin: const EdgeInsets.only(bottom: 2),
                      color: delivered
                          ? const Color(0XFFA3CAB3)
                          : AppColor.basetext,
                    )),
              ),
          ],
        ),
        const XMargin(kspace),
        Expanded(
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      status,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    const YMargin(ktinyspace),
                    Text(
                      dropofflocation,
                      style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: AppColor.basetext),
                    )
                  ],
                ),
              ),
              SizedBox.square(
                dimension: 18,
                child: Checkbox(
                  value: delivered,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  checkColor: AppColor.primary,

                  //hoverColor: AppColor.primary,
                  side: MaterialStateBorderSide.resolveWith(
                    (states) =>
                        const BorderSide(width: 1.0, color: AppColor.primary),
                  ),
                  fillColor: MaterialStateProperty.all<Color>(AppColor.white),
                  // overlayColor:
                  //     MaterialStateProperty.all<Color>(
                  //         AppColor.warning),
                  onChanged: (bool? newValue) {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
