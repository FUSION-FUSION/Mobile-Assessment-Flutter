import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Model/package_model.dart';
import 'package:mobile_assessment_flutter/Util/colors.dart';
import 'package:mobile_assessment_flutter/Util/utils.dart';
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
        appBar: Widgets().homeAppBar(
          context,
          name,
          SizeConfig.blockSizeHorizontal! * 4.8,
        ),
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Container(
            padding: appPadding(),
            child: SafeArea(
              child: Column(
                children: [
                  BalanceSection(balance: balance),
                  const SearchSection(),
                  mainHeaders('Send a Package'),
                  GridView.builder(
                    shrinkWrap: true,
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
                          bgImage: packageModel.bgImage.toString());
                    },
                  ),
                  mainHeaders('Other Actions'),
                  GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 300,
                        childAspectRatio: 1.6,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18.0),
                                  color: kWhiteColor),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Waybill History',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 3.6,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 20,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      color: kPrimaryColor,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Text(
                                      'description',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 8,
                              right: 8,
                              child: CircleAvatar(
                                radius: 11,
                                backgroundColor: kBlackColor,
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: kWhiteColor,
                                  size: 12,
                                ),
                              ),
                            ),
                          ],
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
