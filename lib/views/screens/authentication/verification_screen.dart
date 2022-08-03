import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:mobile_assessment_flutter/views/screens/authentication/base_authentication_screen.dart';
import 'package:mobile_assessment_flutter/views/themes/theme_provider.dart';
import 'package:mobile_assessment_flutter/views/widgets/app_button.dart';
import 'package:pinput/pinput.dart';

class VerificationScreen extends StatefulWidget {
  static const route = BaseAuthenticationScreen.route + "/verification";

  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  late int countdownDuration;

  @override
  void initState() {
    super.initState();
    startCountDown();
  }

  void startCountDown() {
    countdownDuration = DateTime.now().millisecondsSinceEpoch + 1000 * 60;
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = ThemeProvider.current(context);

    return BaseAuthenticationScreen(
      title: 'Verification!',
      subTitleWidget: RichText(
          text: TextSpan(
        style: TextStyle(
          fontSize: 20,
          color: theme.grayTextColor,
          fontWeight: FontWeight.w300,
        ),
        children: [
          const TextSpan(text: 'We sent you an '),
          TextSpan(
            text: 'SMS',
            style: TextStyle(
              color: theme.primaryColor,
              fontWeight: FontWeight.w400,
            ),
          ),
          const TextSpan(text: ' code on number '),
          TextSpan(
            text: '+2348108960610',
            style: TextStyle(
              color: theme.primaryColor,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      )),
      child: Column(
        children: [
          Pinput(
            length: 5,
            separator: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
            ),
            defaultPinTheme: PinTheme(
                width: 57,
                height: 66,
                decoration: BoxDecoration(
                  color: theme.textfieldBackgroundColor,
                  borderRadius: BorderRadius.circular(17),
                ),
                textStyle: const TextStyle(fontSize: 24)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CountdownTimer(
                  endTime: countdownDuration,
                  widgetBuilder: (_, time) => theme.text(
                    time?.sec != null
                        ? '${time?.min ?? '00'}:${time?.sec ?? '00'}'
                        : 'Code Expired',
                    color: theme.textDangerColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: TextButton(
              onPressed: startCountDown,
              child: theme.text(
                'Resend Code',
                color: theme.primaryTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 21,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: UnconstrainedBox(
              child: AppButton(
                width: 59,
                height: 59,
                borderRadius: BorderRadius.circular(29.5),
                padding: EdgeInsets.zero,
                child: const Icon(
                  Icons.arrow_forward_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
