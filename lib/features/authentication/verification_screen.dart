import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_assessment_flutter/constants/app_constants.dart';
import 'package:mobile_assessment_flutter/features/routing/app_router.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 237, 246),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            image: AssetImage('assets/bg-app-cloud.png'),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 100),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Verification!',
                          style: AppTextStyles.kHeaderStyle,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Text(
                            'We sent you an ',
                            style: AppTextStyles.kSubHeaderStyle,
                          ),
                          Text(
                            'SMS ',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 75, 177, 197),
                              fontSize: AppTextStyles.kSubHeaderStyle.fontSize,
                              fontWeight:
                                  AppTextStyles.kSubHeaderStyle.fontWeight,
                            ),
                          ),
                          const Text(
                            'code on',
                            style: AppTextStyles.kSubHeaderStyle,
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Text(
                            'number ',
                            style: AppTextStyles.kSubHeaderStyle,
                          ),
                          Text(
                            '+2348108960610',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 75, 177, 197),
                              fontSize: AppTextStyles.kSubHeaderStyle.fontSize,
                              fontWeight:
                                  AppTextStyles.kSubHeaderStyle.fontWeight,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 60,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Container(
                            height: 60,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Container(
                            height: 60,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Container(
                            height: 60,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Container(
                            height: 60,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 14),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Code Expired',
                              style: TextStyle(
                                  fontSize:
                                      AppTextStyles.kSubHeaderStyle.fontSize,
                                  fontWeight:
                                      AppTextStyles.kHeaderStyle.fontWeight,
                                  color: Colors.red),
                            ),
                            const SizedBox(width: 42),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Resend Code',
                        style: TextStyle(
                            fontSize: AppTextStyles.kSubHeaderStyle.fontSize,
                            color: AppTextStyles.kSubHeaderStyle.color,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 30),
                      GestureDetector(
                        onTap: () =>
                            context.goNamed(AppRoute.congratulations.name),
                        child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 75, 177, 197),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            )),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
