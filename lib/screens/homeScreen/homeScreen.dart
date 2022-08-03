import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/screens/homeScreen/widgets/balanceCard.dart';
import 'package:mobile_assessment_flutter/screens/homeScreen/widgets/customAppBar.dart';
import 'package:mobile_assessment_flutter/screens/homeScreen/widgets/package_grid.dart';
import 'package:mobile_assessment_flutter/screens/homeScreen/widgets/waybill.dart';
import 'package:mobile_assessment_flutter/screens/homeScreen/widgets/otherActions.dart';
import 'package:mobile_assessment_flutter/utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColour,
      appBar: CustomAppBar(context: context),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(height: 30),
        const Center(child: BalanceCard()),
        const SizedBox(
          height: 30,
        ),
        Center(
          child: WayBill(),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'Send a Package',
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: formTextColor),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
            height: 530,
            width: MediaQuery.of(context).size.width,
            child: PackageGrid()),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'Other Actions',
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: formTextColor),
          ),
        ),
        Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: const OtherActions()),
        const SizedBox(
          height: 50,
        ),
      ])),
    );
  }
}
