import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Screens/ecommerce_user_screen.dart';
import 'package:mobile_assessment_flutter/Screens/personal_user_screen.dart';
import 'package:mobile_assessment_flutter/Util/colors.dart';
import 'package:mobile_assessment_flutter/Util/utils.dart';
import 'package:mobile_assessment_flutter/Widgets/user_type_button.dart';

import '../Widgets/background_image.dart';

class UserTypeScreen extends StatelessWidget {
  static const id = '/';
  const UserTypeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          const BackGroundImage(),
          SingleChildScrollView(
            child: Container(
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
                    onTap: () {
                      Navigator.pushNamed(context, PersonalUserScreen.id);
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  UserTypeButton(
                    text: 'E-commerce',
                    onTap: () {
                      Navigator.pushNamed(context, EcommerceUserScreen.id);
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
