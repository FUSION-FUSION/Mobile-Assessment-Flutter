import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/screens/dashboard/package/charter.dart';
import 'package:mobile_assessment_flutter/screens/dashboard/package/international.dart';
import 'package:mobile_assessment_flutter/screens/dashboard/package/same_state.dart';
import 'package:mobile_assessment_flutter/utils/dimensions.dart';

import 'package/interstate.dart';
// import 'package:mobile_assessment_flutter/models/package_grid_model.dart';

class PackageGrid extends StatelessWidget {
  const PackageGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics:
          const NeverScrollableScrollPhysics(), // to disable GridView's scrolling
      shrinkWrap: true, // You won't see infini
      crossAxisCount: 2,
      crossAxisSpacing: Dimensions.sizeWidthPercent(16),
      mainAxisSpacing: Dimensions.sizeWidthPercent(30),
      childAspectRatio:
          Dimensions.sizeWidthPercent(186) / Dimensions.sizeHeightPercent(242),
      children: const [
        SameState(),
        Interstate(),
        Charter(),
        International(),
      ],
    );
  }

  // Widget _buildPackageGridItem(int index) {
  //   final model = _models[index];
  //   return Container(
  //     child: Column(
  //       children: [
  //         Text(model.title),
  //         Text(model.description),
  //         Image.asset(model.image),
  //       ],
  //     ),
  //   );
  // }
}
