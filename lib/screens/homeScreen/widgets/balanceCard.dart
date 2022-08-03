import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_assessment_flutter/utils/colors.dart';
import 'package:mobile_assessment_flutter/widget/appButton.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({Key? key}) : super(key: key);

  NumberFormat currency(BuildContext context) {
    Locale locale = Localizations.localeOf(context);
    final format =
        NumberFormat.simpleCurrency(locale: Platform.localeName, name: 'NGN');
    return format;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 100,
      width: 388,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Stack(children: [
        Container(
            height: 90,
            width: 370,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: normalWhite)),
        Positioned(
            bottom: -1,
            right: 0,
            child: SizedBox(
                width: 200,
                height: 60,
                child: Image.asset(
                  'assets/Shipify-Assets/Masks.png',
                  fit: BoxFit.contain,
                ))),
        Positioned(
          left: 20,
          top: 5,
          child: SizedBox(
            height: 70,
            width: 330,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Balance',
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 15.16,
                            color: formTextColor),
                      ),
                      Text(String.fromCharCodes(Runes('\u20A6 50,000')),
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24,
                                  color: formTextColor))
                    ],
                  ),
                  AppButton(
                      child: Row(mainAxisSize: MainAxisSize.min, children: [
                        Text('Top Up',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(
                                    color: normalWhite,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.56)),
                        const SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                            width: 20,
                            height: 18,
                            child: Image.asset(
                                'assets/Shipify-Assets/chevron-left.png',
                                fit: BoxFit.contain))
                      ]),
                      color: primaryBlue,
                      radius: 17.47,
                      width: 94,
                      height: 34)
                ]),
          ),
        )
      ]),
    );
  }
}
