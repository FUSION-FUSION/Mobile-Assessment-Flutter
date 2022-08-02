import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/view/home/track_bill_search_bar.dart';

class TrackBillCard extends StatelessWidget {
  const TrackBillCard({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.14,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 30,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
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
          TrackBillSearchBar(height: height, width: width),
          Spacer(),
        ],
      ),
    );
  }
}