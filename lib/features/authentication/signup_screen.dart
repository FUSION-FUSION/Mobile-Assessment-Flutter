// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_assessment_flutter/common_widgets/textfield_with_header.dart';
import 'package:mobile_assessment_flutter/constants/app_constants.dart';
import 'package:mobile_assessment_flutter/features/routing/app_router.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({
    Key? key,
    required this.type,
  }) : super(key: key);
  final String type;

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                              'Welcome!',
                              style: AppTextStyles.kHeaderStyle,
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Create an account to get started',
                              style: AppTextStyles.kSubHeaderStyle,
                            ),
                            SizedBox(height: 5),
                            Text(
                              'with Cargo Express',
                              style: AppTextStyles.kSubHeaderStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                TextFieldWithHeader(
                    headerText: widget.type == 'personal'
                        ? 'Full Name'
                        : 'Business Name'),
                const SizedBox(height: 18),
                TextFieldWithHeader(
                    headerText: widget.type == 'personal'
                        ? 'Your E-mail'
                        : 'Official E-mail'),
                const SizedBox(height: 18),
                TextFieldWithHeader(
                    headerText: widget.type == 'personal'
                        ? 'Phone Number'
                        : 'Contact Number'),
                const SizedBox(height: 18),
                const TextFieldWithHeader(headerText: 'Password'),
                const SizedBox(height: 18),
                const TextFieldWithHeader(headerText: 'Confirm Password'),
                const SizedBox(height: 18),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Already have an account?',
                            style: AppTextStyles.kSubHeaderStyle,
                          ),
                          TextButton(
                            onPressed: () =>
                                context.pushNamed(AppRoute.signIn.name),
                            child: const Text(
                              'Log In',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 75, 177, 197),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () => context.pop(),
                            child: Container(
                              height: 60,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Center(
                                child: Text(
                                  'Back',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 110, 109, 109),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 60),
                          GestureDetector(
                            onTap: () =>
                                context.pushNamed(AppRoute.verification.name),
                            child: Container(
                              height: 60,
                              width: 120,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 75, 177, 197),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Center(
                                child: Text(
                                  'Next',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
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
