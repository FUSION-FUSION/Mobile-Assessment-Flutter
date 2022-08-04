import 'package:flutter/material.dart';

class VerificationRichText extends StatelessWidget {
  const VerificationRichText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 2,
      text: const TextSpan(
        text: 'We sent you an',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 16,
          letterSpacing: 2,
        ),
        children: <TextSpan>[
          TextSpan(
            text: ' SMS',
            style: TextStyle(
              color: Colors.lightGreenAccent,
              fontSize: 16,
              letterSpacing: 2,
            ),
          ),
          TextSpan(
            text: ' code on',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              letterSpacing: 1.5,
            ),
          ),
          TextSpan(
            text: ' \nnumber',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              letterSpacing: 2,
            ),
          ),
          TextSpan(
            text: ' +2348108960610',
            style: TextStyle(
              color: Colors.lightGreenAccent,
              fontSize: 16,
              letterSpacing: 2,
            ),
          ),
        ],
      ),
    );
  }
}
