import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/utils/colors.dart';

class InputField extends StatelessWidget {
  final String labelText;
  final double width;
  final double height;
  final double radius;
  final Widget? prefix;
  final Widget? suffix;
  final bool isObscure;
  final TextInputType keyboardType;
  String? Function(String?) validator;
  InputField(
      {Key? key,
      required this.labelText,
      required this.width,
      required this.height,
      required this.radius,
      this.prefix,
      this.suffix,
      this.keyboardType = TextInputType.text,
      this.isObscure = false,
      required this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          Text(
            labelText,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          const SizedBox(height: 6),
          SizedBox(
            width: width,
            height: height - 42,
            child: TextFormField(
              validator: validator,
              obscureText: isObscure,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                  prefixIcon: prefix,
                  suffix: suffix,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  fillColor: formFieldColor,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(radius))),
            ),
          )
        ],
      ),
    );
  }
}
