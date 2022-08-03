import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/utilities/ui_helpers.dart';
import 'package:mobile_assessment_flutter/widgets/custom_appBar.dart';

class Congrats extends StatefulWidget {
  const Congrats({Key? key}) : super(key: key);

  @override
  State<Congrats> createState() => _CongratsState();
}

class _CongratsState extends State<Congrats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffecedf1),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(children: [
          customAppBar(
            title: Text(
              'Congratulations!',
              style: kBigBlackTextStyle,
            ),
            subtitle: Text(
              'Your account has been successfully created ',
              style: kSmallTextStyle,
            ),
          ),
          verticalSpaceTiny,
          Image.asset(
            'assets/images/ic-congratulations.png',
            height: 300,
            width: 300,
          ),
          verticalSpaceLarge,
          Center(
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/congrats'),
              child: Container(
                height: 60,
                width: 200,
                child: Center(
                    child: Text(
                  'Continue',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Colors.white),
                )),
                decoration: BoxDecoration(
                  color: const Color(0xff46a5ba),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          )
        ]))));
  }
}
