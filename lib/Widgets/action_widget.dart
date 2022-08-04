import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Util/utils.dart';

import '../Util/colors.dart';

class ActionsWidget extends StatelessWidget {
  final String title;
  final String description;
  final Function onTap;
  const ActionsWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: () => onTap(),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0), color: kWhiteColor),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: SizeConfig.blockSizeHorizontal! * 3.6,
                  ),
                ),
                const SizedBox(
                  height: 10,
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
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    description,
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
      ),
    );
  }
}
