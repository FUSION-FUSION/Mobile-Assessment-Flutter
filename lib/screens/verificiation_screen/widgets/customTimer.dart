import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/providers/verificationProvider.dart';
import 'package:provider/provider.dart';

class CustomTimer extends StatelessWidget {
  const CustomTimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final timerProvider = Provider.of<VerificationProvider>(context);
    timerProvider.startTimer();
    final fontStyle =
        Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.red);
    buildText() {
      if (timerProvider.currTime == 0) {
        return Text(
          'Code Expired',
          style: fontStyle,
        );
      } else if (timerProvider.currTime < 10) {
        return Text(
          '00:0${timerProvider.seconds}',
          style: fontStyle,
        );
      } else {
        return Text(
          '00:${timerProvider.seconds}',
          style: fontStyle,
        );
      }
    }

    return Container(
      child: Column(
        children: [
          Row(
            children: [Spacer(), buildText()],
          ),
          const SizedBox(
            height: 22,
          ),
          TextButton(
            child: Text('Resend Code',
                style: Theme.of(context).textTheme.subtitle2),
            onPressed: () {
              timerProvider.resetTimer();
              timerProvider.startTimer();
            },
          ),
        ],
      ),
    );
  }
}
