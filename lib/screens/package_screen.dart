import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../wigdets/app_styles.dart';

class PackageScreen extends StatelessWidget {
  const PackageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Send a Package",
          style: Styles.headlineStyle1,
        ),
        const Gap(10),
        Column(
          children: [
            Row(
              children: [
                Container(
                  child: Column(
                    children: [
                      Text(
                        "Same State",
                        style: Styles.headlineStyle2,
                      ),
                      const Gap(5),
                      Text(
                        "Delivers within the\n same state",
                        style: Styles.headlineStyle3,
                      ),
                      const Gap(5),
                      Stack(
                        children: [
                          Container(
                            height: 200,
                            width: 100,
                            padding: EdgeInsets.all(15.0),
                            alignment: Alignment.topRight,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/ic-bike.png",
                                ), //DecorationImage
                              ),
                            ),
                          ),
                          const Gap(18),
                          Container(
                            width: 200,
                            height: 300,
                            padding: EdgeInsets.all(15.0),
                            alignment: Alignment.bottomCenter,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/ic-road-same-state.png",
                                ), //DecorationImage
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
