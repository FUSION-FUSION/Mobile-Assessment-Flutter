import 'package:flutter/material.dart';

import '../Util/colors.dart';
import '../Util/utils.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [appBoxShadow()],
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 25.0,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Track your waybill',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig.blockSizeHorizontal! * 4.5,
              color: kBlackColor,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15.0),
            padding: const EdgeInsets.only(
              left: 8.0,
              right: 2,
              bottom: 2.0,
              top: 2.0,
            ),
            decoration: BoxDecoration(
                border: Border.all(
                  color: kPrimaryColor.withOpacity(0.8),
                ),
                borderRadius: BorderRadius.circular(15.0)),
            child: Row(
              children: [
                const Icon(Icons.search),
                const SizedBox(
                  width: 8.0,
                ),
                const Expanded(
                    child: SizedBox(
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Waybill Number', border: InputBorder.none),
                  ),
                )),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 14.0),
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    children: const [
                      Text(
                        'Track',
                        style:
                            TextStyle(color: kWhiteColor, letterSpacing: 1.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}