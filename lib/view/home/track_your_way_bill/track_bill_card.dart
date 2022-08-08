import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/constants/color_pallette.dart';
import 'package:mobile_assessment_flutter/view/home/track_your_way_bill/track_bill_search_bar.dart';


class TrackBillCard extends StatelessWidget {
  const TrackBillCard({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Container(
      height: height * 0.14,
      width: width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: kShadow
      ),
      child: Column(
        children: [
          Spacer(),
          const Text(
            'Track your waybill',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20
            ),
          ),
          SizedBox(
            height: height * 0.007,
          ),
          TrackBillSearchBar(),
          Spacer(),
        ],
      ),
    );
  }
}