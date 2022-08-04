import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/utils/colors.dart';
import 'package:dotted_line/dotted_line.dart';

class RouteCard extends StatelessWidget {
  const RouteCard({Key? key}) : super(key: key);

  Widget buildCircle(bool isActive) {
    return Container(
      width: 12.7,
      height: 12.7,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: isActive ? normalWhite : grey),
    );
  }

  Widget buildLine({isActive, isDotted}) {
    if (isActive) {
      return Container(
        height: 3,
        decoration: BoxDecoration(
            color: isActive ? normalWhite : grey,
            borderRadius: BorderRadius.circular(5)),
      );
    } else {
      return DottedLine(
        dashColor: grey,
        lineThickness: 3,
        dashGapLength: 8,
        dashLength: 8,
        dashRadius: 10,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.subtitle1!.copyWith(
        fontSize: 11, fontWeight: FontWeight.w500, color: normalWhite);
    return Container(
      width: 401,
      height: 126.06,
      decoration: BoxDecoration(
          color: primaryBlue, borderRadius: BorderRadius.circular(21.73)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Pickup',
                    style: textStyle,
                  ),
                  Text(
                    'Jibowo Terminal',
                    style: textStyle,
                  ),
                  Text(
                    'Abuja Terminal',
                    style: textStyle,
                  ),
                  Text(
                    'Collected',
                    style: textStyle,
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    buildCircle(true),
                    Flexible(
                        flex: 1,
                        child: buildLine(isActive: true, isDotted: false)),
                    buildCircle(true),
                    Flexible(
                        flex: 1,
                        child: buildLine(isActive: false, isDotted: true)),
                    buildCircle(false),
                    Flexible(
                        flex: 1,
                        child: buildLine(isActive: false, isDotted: true)),
                    buildCircle(false),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '04, Mar, 2022',
                  style: textStyle,
                ),
                Text(
                  '05, Mar, 2022',
                  style: textStyle,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
