import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/providers.dart';
import 'otp_field.dart';

class Otpform extends StatefulWidget {
  const Otpform({Key? key}) : super(key: key);

  @override
  State<Otpform> createState() => _OtpformState();
}

class _OtpformState extends State<Otpform> {
  @override
  Widget build(BuildContext context) {
    final authP = Provider.of<AuthProvider>(context);

    return Padding(
      padding: const EdgeInsets.only( right: 20),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OtpField(
                  onChanged: (value) {
                    // authP.nextField(value, pin3Node);
                    authP.nextFoci(value, context);
                  },
                ),
                OtpField(
                  onChanged: (value) {
                    // authP.nextField(value, pin4Node);
                    authP.nextFoci(value, context);
                  },
                ),
                OtpField(
                  onChanged: (value) {
                    // authP.nextField(value, pin5Node);
                    authP.nextFoci(value, context);
                  },
                ),
                OtpField(
                  onChanged: (value) {
                    // authP.nextField(value, pin6Node);
                    authP.nextFoci(value, context);
                  },
                ),
                OtpField(
                  onChanged: (value) {
                    value.length == 1 ? FocusScope.of(context).unfocus() : null;
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
