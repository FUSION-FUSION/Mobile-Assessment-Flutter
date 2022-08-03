import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/view/Map/scrollable_draggable_sheet.dart';
import 'package:mobile_assessment_flutter/view/widgets/custom_button.dart';

import '../../../../constants/assets_constant_name.dart';
import '../../../../constants/color_pallette.dart';

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
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: kPrimary)),
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Container(
            height: 15,
            width: 15,
            child: Image.asset(
              icSearch,
            ),
          ),
          SizedBox(width: 5,),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 4),
              height: height * 0.05,
              width: width * 0.4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Waybill Number'
                ),
              ),
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, ScrollableSheet.routeName);
            },
            child: CustomButton(
              height: height * 0.045,
              width: width * 0.2,
              text: 'Track',
              fontSize: 17,
            ),
          ),
          SizedBox(
            width: 1,
          )
        ],
      ),
    );
  }
}
