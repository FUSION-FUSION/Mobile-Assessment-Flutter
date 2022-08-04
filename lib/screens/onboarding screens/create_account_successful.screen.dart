import 'package:flutter/material.dart';

import '../../__lib.dart';

class CreateAccountSuccessScreen extends StatelessWidget {
  const CreateAccountSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnboardingScaffold(
      padding: pad(horiz: 15),
      title: 'Congratulations!',
      subTitle: 'Your account has been successfully \ncreated.',
      child: Expanded(
        child: SingleChildScrollView(
          child: col(
            children: [
              verticalSpace(height: 37.44),
              Center(
                  child: assetsImage(AppAssets.congratulationsImg,
                      width: 312, height: 312.41)),
              verticalSpace(height: 66.59),
              Center(
                child: button(
                  onPressed: () => replaceScreen(const HomeScreen()),
                  child: text(
                    'Continue',
                    size: 24.3,
                    color: AppColors.white,
                    weight: FontWeight.w500,
                  ),
                  padding: pad(horiz: 40.5, vert: 13.5),
                  elevation: 8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
