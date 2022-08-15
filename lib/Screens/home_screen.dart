import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Model/action_model.dart';
import 'package:mobile_assessment_flutter/Model/package_model.dart';
import 'package:mobile_assessment_flutter/Screens/waybill_tracking_screen.dart';
import 'package:mobile_assessment_flutter/Util/colors.dart';
import 'package:mobile_assessment_flutter/Util/utils.dart';
import 'package:mobile_assessment_flutter/Widgets/action_widget.dart';
import 'package:mobile_assessment_flutter/Widgets/send_package_grid.dart';

import '../Widgets/balance_section.dart';
import '../Widgets/search_section.dart';
import '../Widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const id = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = 'John';
    String balance = '50,000';
    return GestureDetector(
      onTap: () => Focus.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: kHomeScaffoldColor,
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Container(
            padding: appPadding(),
            child: SafeArea(
              child: Column(
                children: [
                  Widgets().homeAppBar(
                    context,
                    name,
                    SizeConfig.blockSizeHorizontal! * 4.8,
                  ),
                  BalanceSection(balance: balance),
                  const SearchSection(),
                  mainHeaders('Send a Package'),
                  GridView.builder(
                    shrinkWrap: true,
                    primary: false,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 300,
                      childAspectRatio: 0.8,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: packages.length,
                    itemBuilder: (context, index) {
                      PackageModel packageModel = packages[index];
                      return SendPackageGrid(
                          title: packageModel.title.toString(),
                          description: packageModel.description.toString(),
                          mainImage: packageModel.mainImage.toString(),
                          topSectionImage:
                              packageModel.topSectionImage.toString(),
                          onTap: () {},
                          opacity: packageModel.opacity!.toDouble(),
                          bgImage: packageModel.bgImage.toString());
                    },
                  ),
                  mainHeaders('Other Actions'),
                  GridView.builder(
                      shrinkWrap: true,
                      primary: false,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 300,
                        childAspectRatio: 1.45,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        ActionModel actionModel = actions[index];
                        List onTap = [
                          () {
                            Navigator.pushNamed(
                                context, WaybillTrackingScreen.id);
                          },
                          () {}
                        ];
                        return ActionsWidget(
                          title: actionModel.title.toString(),
                          description: actionModel.description.toString(),
                          onTap: onTap[index],
                        );
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Column mainHeaders(String text) {
    return Column(
      children: [
        const SizedBox(
          height: 30.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: SizeConfig.blockSizeHorizontal! * 4.9,
                color: kBlackColor,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
