import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_assessment_flutter/constants/app_constants.dart';
import 'package:mobile_assessment_flutter/features/routing/app_router.dart';

class UserType extends StatelessWidget {
  const UserType({Key? key}) : super(key: key);

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
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('What kind of user are',
                          style: AppTextStyles.kHeaderStyle),
                      SizedBox(height: 8),
                      Text('you?', style: AppTextStyles.kHeaderStyle),
                      SizedBox(height: 5),
                      Text(
                        'We will adapt the app to suite your',
                        style: AppTextStyles.kSubHeaderStyle,
                      ),
                      SizedBox(height: 5),
                      Text('needs', style: AppTextStyles.kSubHeaderStyle),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 35),
              GestureDetector(
                onTap: () => context.goNamed(
                  AppRoute.signUp.name,
                  params: {'type': 'personal'},
                ),
                child: Container(
                  height: 125,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 75, 177, 197),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      'Personal',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () => context.goNamed(
                  AppRoute.signUp.name,
                  params: {'type': 'business'},
                ),
                child: Container(
                  height: 125,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 75, 177, 197),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      'E-commerce',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
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
