import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Util/colors.dart';
import 'package:mobile_assessment_flutter/Util/utils.dart';
import 'package:mobile_assessment_flutter/Widgets/user_type_button.dart';

class UserTypeScreen extends StatelessWidget {
  const UserTypeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        padding: userPadding(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('What kind of user are \nyou?', style: headerStyle),
            const SizedBox(
              height: 10,
            ),
            Text('We will adapt the app to suit your \nneeds.',
                style: TextStyle(
                  color: kGreyColor,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                  letterSpacing: 1.3,
                )),
            const SizedBox(
              height: 60,
            ),
            UserTypeButton(
              text: 'Personal',
              onTap: () {},
            ),
            const SizedBox(
              height: 40,
            ),
            UserTypeButton(
              text: 'E-commerce',
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }

  
}
