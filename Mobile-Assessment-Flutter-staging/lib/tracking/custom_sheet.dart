import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/tracking/listview_container.dart';
import 'package:mobile_assessment_flutter/tracking/route_details.dart';

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
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 6,
              ),
              child: ListView(controller: scrollController, children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Divider(
                    thickness: 5,
                    height: 3,
                    endIndent: 160,
                    indent: 160,
                    color: Color(0xffD6D6D6),
                  ),
                ),
                SizedBox(height: h * 0.01),
                const ListViewContainer(),
                SizedBox(height: h * 0.03),
                RouteDetails(h: h),
              ]),
            ),
          );
        });
  }
}
