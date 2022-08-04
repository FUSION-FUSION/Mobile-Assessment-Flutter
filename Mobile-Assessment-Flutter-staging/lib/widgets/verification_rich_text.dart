import 'package:flutter/material.dart';

class VerificationRichText extends StatelessWidget {
  const VerificationRichText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 2,
      text: TextSpan(
        text: 'We sent you an',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w300,
          color: Colors.black.withOpacity(0.5),
        ),
        children: <TextSpan>[
          const TextSpan(
            text: ' SMS',
            style: TextStyle(
              color: Color(0xff46a5ba),
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
          TextSpan(
            text: ' code on',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          TextSpan(
            text: ' \nnumber',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          const TextSpan(
            text: ' +2348108960610',
            style: TextStyle(
              color: Color(0xff46a5ba),
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
