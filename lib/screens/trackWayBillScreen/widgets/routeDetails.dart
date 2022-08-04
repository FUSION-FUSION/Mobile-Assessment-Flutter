import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/utils/colors.dart';

class RouteDetails extends StatelessWidget {
  const RouteDetails({Key? key}) : super(key: key);
  final bool isChecked = true;
  Widget buildCircle(bool isActive) {
    return Container(
      width: 19,
      height: 19,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isActive ? const Color(0xffA3CAB3) : normalWhite,
          border: Border.all(
              color: isActive ? primaryBlue : const Color(0xff808080),
              width: 3)),
    );
  }

  Widget buildLine(isActive) {
    return DottedLine(
      dashColor: isActive ? const Color(0xffA3CAB3) : const Color(0xff808080),
      direction: Axis.vertical,
      lineThickness: 3,
      dashGapLength: 8,
      dashLength: 8,
      dashRadius: 10,
    );
  }

  Widget buildItem(bool isChecked, TextStyle textStyle) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delivered Successfully',
              style: textStyle,
            ),
            Text('Bishop’s Court, Owerri.',
                style: textStyle.copyWith(
                    fontSize: 14, fontWeight: FontWeight.w300))
          ],
        ),
        isChecked
            ? Container(
                width: 16.8,
                height: 16.8,
                decoration: BoxDecoration(
                    border: Border.all(color: primaryBlue, width: 2),
                    borderRadius: BorderRadius.circular(5)),
                child: Icon(
                  Icons.check,
                  color: primaryBlue,
                  size: 10,
                ),
              )
            : Container(
                width: 16.8,
                height: 16.8,
                decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xff666767), width: 2),
                    borderRadius: BorderRadius.circular(5)),
              )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.subtitle1!.copyWith(
        fontWeight: FontWeight.w400, fontSize: 16, color: formTextColor);
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 300,
      child: Row(
        children: [
          Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 35),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      buildCircle(true),
                      Flexible(child: buildLine(true)),
                      buildCircle(true),
                      Flexible(child: buildLine(true)),
                      buildCircle(false),
                      Flexible(child: buildLine(false)),
                      buildCircle(false),
                    ]),
              )),
          Flexible(flex: 1, child: Container()),
          Flexible(
              flex: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildItem(true, textStyle),
                  buildItem(true, textStyle),
                  buildItem(false, textStyle),
                  buildItem(false, textStyle),
                ],
              ))
        ],
      ),
    );
  }
}
