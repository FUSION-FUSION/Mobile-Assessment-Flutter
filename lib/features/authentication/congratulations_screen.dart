import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/constants/app_constants.dart';

class CongratulationsScreen extends StatelessWidget {
  const CongratulationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 237, 246),
      body: Padding(
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
            Container(
              height: 60,
              width: 180,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 75, 177, 197),
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
          ],
        ),
      ),
    );
  }
}
