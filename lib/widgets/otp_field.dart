import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpField extends StatefulWidget {
  const OtpField({Key? key}) : super(key: key);

  @override
  State<OtpField> createState() => _OtpFieldState();
}

class _OtpFieldState extends State<OtpField> {
  @override
  Widget build(BuildContext context) {
    return Form(
          child: SizedBox(width: 64, height: 68,
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: '0',
                border: OutlineInputBorder(

                ),
              ),
              onChanged: (value){
                if (value.length == 1){
                  FocusScope.of(context).nextFocus();
                }
              },
              style: Theme.of(context).textTheme.headline6,
              keyboardType: TextInputType.number,
              inputFormatters: [LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly],
              textAlign: TextAlign.center,
          ),
          ));
  }
}
