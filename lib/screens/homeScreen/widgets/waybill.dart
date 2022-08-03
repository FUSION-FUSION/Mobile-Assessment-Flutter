import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_assessment_flutter/utils/colors.dart';
import 'package:mobile_assessment_flutter/widget/appButton.dart';

class WayBill extends StatelessWidget {
  WayBill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _textController = TextEditingController();
    return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        height: 136,
        width: 388,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26), color: normalWhite),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Track your waybill',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: formTextColor),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
                width: 323,
                height: 44,
                padding: const EdgeInsets.only(
                    left: 10, right: 5, top: 5, bottom: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: primaryBlue, width: 1)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset(
                        'assets/Shipify-Assets/ic-search.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        controller: _textController,
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    AppButton(
                      child: Text(
                        'Track',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(fontSize: 16, color: normalWhite),
                      ),
                      color: primaryBlue,
                      radius: 14,
                      width: 81,
                      height: 38,
                      onTap: () {},
                    )
                  ],
                ))
          ],
        ));
  }
}
