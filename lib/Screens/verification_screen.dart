import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_assessment_flutter/Util/utils.dart';

import '../Util/colors.dart';
import '../Widgets/user_topsection.dart';
import '../Widgets/verification_input.dart';

class VerificationScreen extends StatefulWidget {
  static const id = '/verification';
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  // int min;
  // int sec;
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: userPadding(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const UserTopSection(
                header: 'Verification!',
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'We Sent you an ',
                      style: TextStyle(
                        color: kGreyColor,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                        letterSpacing: 1.3,
                      ),
                    ),
                    TextSpan(
                      text: 'SMS',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                        letterSpacing: 1.3,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: 'code on \nnumber',
                      style: TextStyle(
                        color: kGreyColor,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                        letterSpacing: 1.3,
                      ),
                    ),
                    TextSpan(
                      text: '+2348108960610',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                        letterSpacing: 1.3,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  VerificationInput(onChanged: (value) {}),
                  VerificationInput(onChanged: (value) {}),
                  VerificationInput(onChanged: (value) {}),
                  VerificationInput(onChanged: (value) {}),
                  VerificationInput(onChanged: (value) {}),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 18.0,
                      right: 28.0,
                    ),
                    child: Text(
                      '00:52',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Resend Code',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3.4,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const CircleAvatar(
                    radius: 27,
                    child: Icon(
                      Icons.arrow_forward,
                      color: kWhiteColor,
                    ),
                    backgroundColor: kPrimaryColor,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
