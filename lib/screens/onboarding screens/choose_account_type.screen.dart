import 'package:flutter/material.dart';

import '../../__lib.dart';

class ChooseAccountTypeScreen extends StatelessWidget {
  const ChooseAccountTypeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnboardingScaffold(
      padding: pad(horiz: 26.33),
      title: 'What kind of user are \nyou?',
      subTitle: 'We will adapt the app to suit your \nneeds.',
      child: Column(children: [
        verticalSpace(height: 25.6),
        InkWell(
          onTap: () => pushScreen(const CreateAccountScreen(
            isBusiness: false,
          )),
          child: Container(
              padding: pad(vert: 38.4),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.87),
                color: AppColors.brandBlue,
              ),
              child: Center(
                child: text(
                  'Personal',
                  weight: FontWeight.w700,
                  size: 39.5,
                  color: AppColors.white,
                ),
              )),
        ),
        verticalSpace(height: 40.96),
        InkWell(
          onTap: () => pushScreen(const CreateAccountScreen(
            isBusiness: true,
          )),
          child: Container(
              padding: pad(vert: 38.4),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.87),
                color: AppColors.brandBlue,
              ),
              child: Center(
                child: text(
                  'E-commerce',
                  weight: FontWeight.w700,
                  size: 39.5,
                  color: AppColors.white,
                ),
              )),
        ),
      ]),
    );
  }
}
