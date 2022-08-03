import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class OtherActionItem extends StatelessWidget {
  final String contentTitle;
  final String contentText;
  OtherActionItem(
      {Key? key, required this.contentTitle, required this.contentText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 160,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            color: const Color(0xffFDFEFF)),
        child: Stack(children: [
          Positioned(
              top: 20,
              left: 12,
              child: SizedBox(
                width: 160,
                height: 80,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        contentTitle,
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.14,
                            color: formTextColor),
                      ),
                      Container(
                        width: 40,
                        height: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: primaryBlue),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(contentText,
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15.12,
                                    color: formTextColor,
                                  ))
                    ]),
              ))
        ]));
  }
}
