import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Util/utils.dart';

import '../Util/colors.dart';

class BalanceSection extends StatelessWidget {
  const BalanceSection({
    Key? key,
    required this.balance,
  }) : super(key: key);

  final String balance;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 30, top: 5.0),
          decoration: BoxDecoration(
            boxShadow: [
              appBoxShadow(),
            ],
            image: const DecorationImage(
              alignment: Alignment.bottomRight,
              fit: BoxFit.contain,
              image: AssetImage(
                'assets/images/bg-dashboard-balance.png',
              ),
            ),
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Balance',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: SizeConfig.blockSizeHorizontal! * 2.8),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      '₦ $balance',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: SizeConfig.blockSizeHorizontal! * 4.1),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Row(
                      children: const [
                        Text(
                          'Top up',
                          style:
                              TextStyle(color: kWhiteColor, letterSpacing: 1.0),
                        ),
                        Icon(
                          Icons.double_arrow_rounded,
                          size: 18,
                          color: kWhiteColor,
                        )
                      ],
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ],
    );
  }
}
