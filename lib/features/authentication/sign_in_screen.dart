import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_assessment_flutter/common_widgets/textfield_with_header.dart';
import 'package:mobile_assessment_flutter/constants/app_constants.dart';
import 'package:mobile_assessment_flutter/features/routing/app_router.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 237, 246),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(parent: BouncingScrollPhysics()),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg-app-cloud.png'),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                const SizedBox(height: 100),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Sign In',
                              style: AppTextStyles.kHeaderStyle,
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Sign in to continue to Cargo Express',
                              style: AppTextStyles.kSubHeaderStyle,
                            ),
                            SizedBox(height: 5),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                const TextFieldWithHeader(headerText: 'Phone Number/E-mail'),
                const SizedBox(height: 18),
                const TextFieldWithHeader(headerText: 'Password'),
                const SizedBox(height: 18),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () =>
                            context.goNamed(AppRoute.userType.name),
                        child: Text(
                          'Create an account',
                          style: TextStyle(
                            fontSize: AppTextStyles.kSubHeaderStyle.fontSize,
                            color: kThemeColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 60),
                      GestureDetector(
                        onTap: () {
                          //TODO: Go to home page.
                        },
                        child: Container(
                          height: 60,
                          width: 180,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 75, 177, 197),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
