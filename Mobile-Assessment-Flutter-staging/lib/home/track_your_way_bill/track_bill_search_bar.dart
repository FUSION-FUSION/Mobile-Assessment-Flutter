import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/tracking/map_screen.dart';
import 'package:mobile_assessment_flutter/widgets/custom_button2.dart';

class TrackBillSearchBar extends StatelessWidget {
  const TrackBillSearchBar({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Container(
      height: height * 0.05,
      width: width * 0.7,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xff46a5ba))),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            height: 15,
            width: 15,
            child: Image.asset(
              'assets/ic-search.png',
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4),
              height: height * 0.06,
              width: width * 0.4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Waybill Number'),
              ),
            ),
          ),
          // const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, MapScreen.id);
            },
            child: CustomButton2(
              height: height * 0.04,
              width: width * 0.2,
              text: 'Track',
              fontSize: 17,
            ),
          ),
          const SizedBox(
            width: 1,
          )
        ],
      ),
    );
  }
}
