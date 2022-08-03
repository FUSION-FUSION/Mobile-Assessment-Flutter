import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../widget/appButton.dart';

class PackageGridItem extends StatelessWidget {
  final bool hasCurves;
  final bool isActive;
  final AppButton button;
  final String roadImage;
  final String contentImage;
  final String contentTitle;
  final String contentText;

  const PackageGridItem(
      {Key? key,
      required this.hasCurves,
      required this.isActive,
      required this.button,
      required this.roadImage,
      required this.contentImage,
      required this.contentTitle,
      required this.contentText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 186,
      height: 242,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: normalWhite,
        borderRadius: BorderRadius.circular(11.09),
      ),
      child: Stack(
        children: [
          if (hasCurves)
            Positioned(
                top: 0,
                left: 0,
                child: SizedBox(
                  width: 186,
                  height: 100,
                  child: Image.asset(
                    'assets/Shipify-Assets/ic-curve.png',
                    fit: BoxFit.fitWidth,
                  ),
                )),
          Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                width: 186,
                height: 100,
                child: Image.asset(
                  roadImage,
                  fit: BoxFit.fitWidth,
                ),
              )),
          Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                width: 186,
                height: 130,
                child: Image.asset(
                  contentImage,
                  fit: BoxFit.fitHeight,
                ),
              )),
          Positioned(
              top: 32,
              left: 12,
              child: SizedBox(
                width: 160,
                height: 200,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        contentTitle,
                        style: isActive
                            ? Theme.of(context).textTheme.subtitle1!.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 18.14,
                                color: formTextColor)
                            : Theme.of(context).textTheme.subtitle1!.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 18.14,
                                color: formTextColor.withOpacity(0.5)),
                      ),
                      Container(
                        width: 40,
                        height: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isActive
                                ? primaryBlue
                                : primaryBlue.withOpacity(0.5)),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(contentText,
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15.12,
                                    color: isActive
                                        ? formTextColor
                                        : formTextColor.withOpacity(0.5),
                                  ))
                    ]),
              )),
          Positioned(bottom: 10.82, right: 10.82, child: button)
        ],
      ),
    );
  }
}
