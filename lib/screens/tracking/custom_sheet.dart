import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:mobile_assessment_flutter/screens/tracking/listview_container.dart';
import 'package:mobile_assessment_flutter/screens/tracking/route_details.dart';
import 'package:mobile_assessment_flutter/utils/constant.dart';

class CustomSheet extends StatelessWidget {
  const CustomSheet({
    Key? key,
    required this.h,
  }) : super(key: key);

  final double h;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.6,
        maxChildSize: 0.8,
        minChildSize: 0.2,
        builder: (context, scrollController) {
          return Container(
            decoration: const BoxDecoration(
              color: kPrimaryWhite,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(children: [
                  const Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: const Divider(
                      thickness: 5,
                      height: 3,
                      endIndent: 180,
                      indent: 170,
                      color: const Color(0xffD6D6D6),
                    ),
                  ),
                  // const Icon(
                  //   FontAwesomeIcons.sort,
                  //   size: 15,
                  //   color: Color(0xffD6D6D6),
                  // ),
                  SizedBox(height: h * 0.05),
                  const ListViewContainer(),
                  SizedBox(height: h * 0.03),
                  RouteDetails(h: h),
                ]),
              ),
            ),
          );
        });
  }
}
