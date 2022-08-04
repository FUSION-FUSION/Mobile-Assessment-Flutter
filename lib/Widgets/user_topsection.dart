import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Util/utils.dart';

import '../Util/colors.dart';

class UserTopSection extends StatelessWidget {
  final String header;
  final String subHeader;
  const UserTopSection({Key? key, required this.header, this.subHeader = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          header,
          style: headerStyle,
        ),
        const SizedBox(
          height: 10,
        ),
        subHeader != ''
            ? Text(
                subHeader,
                style: TextStyle(
                  color: kGreyColor,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                  letterSpacing: 1.3,
                ),
              )
            : const SizedBox.shrink()
      ],
    );
  }
}
