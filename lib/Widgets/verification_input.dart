import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Util/colors.dart';

class VerificationInput extends StatelessWidget {
  final ValueChanged onChanged;
  const VerificationInput({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 28, top: 35),
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
        decoration: BoxDecoration(
            color: kWhiteColor, borderRadius: BorderRadius.circular(15.0)),
        child: TextField(
          // maxLength: 1,
          onChanged: onChanged,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          keyboardType: TextInputType.number,
          enableSuggestions: false,
          decoration: const InputDecoration(
            border: InputBorder.none,
            fillColor: kWhiteColor,
            filled: true,
          ),
        ),
      ),
    );
  }
}
