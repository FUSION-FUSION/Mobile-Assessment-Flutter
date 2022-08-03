import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_assessment_flutter/constants/app_constants.dart';
import 'package:mobile_assessment_flutter/features/routing/app_router.dart';

class CongratulationsScreen extends StatelessWidget {
  const CongratulationsScreen({Key? key}) : super(key: key);

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
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Congratulations!',
                        textAlign: TextAlign.left,
                        style: AppTextStyles.kHeaderStyle,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Your account has been successfully',
                      style: AppTextStyles.kSubHeaderStyle,
                    ),
                    SizedBox(height: 5),
                    Text(
                      'created',
                      style: AppTextStyles.kSubHeaderStyle,
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
              Container(
                height: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/ic-congratulations.png'),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () => context.goNamed(AppRoute.signIn.name),
                child: Container(
                  height: 60,
                  width: 180,
                  decoration: BoxDecoration(
                    color: kThemeColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      'Continue',
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
          ),
        ),
      ),
    );
  }
}
