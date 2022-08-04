import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../providers/verificationProvider.dart';
import '../../../utils/colors.dart';

class PinNumber extends StatelessWidget {
  final TextEditingController controller;
  final OutlineInputBorder border;
  PinNumber({Key? key, required this.controller, required this.border})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final verification =
        Provider.of<VerificationProvider>(context, listen: false);
    return Container(
      alignment: Alignment.center,
      width: 57,
      height: 67,
      decoration: BoxDecoration(
          color: normalWhite, borderRadius: BorderRadius.circular(17)),
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: controller,
        enabled: true,
        obscureText: true,
        textAlign: TextAlign.center,
        onChanged: (value) {
          if (value.length == 1) {
            verification.addPin(value);
            FocusScope.of(context).nextFocus();
          } else {
            verification.subtractPin();
            FocusScope.of(context).previousFocus();
          }
        },
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(5),
          border: border,
          filled: false,
        ),
      ),
    );
  }
}
