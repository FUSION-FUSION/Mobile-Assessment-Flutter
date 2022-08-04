import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/widgets/text_field_container.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final Widget? icon;
  const TextInputField({
    Key? key,
    this.hintText,
    required this.controller,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: TextFieldContainer(
        height: height * .055,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 5),
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              prefixIcon: icon,
              hintText: hintText ?? '',
              hintStyle: const TextStyle(
                fontSize: 15,
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
              border: InputBorder.none,
            ),
            //TextFormField Validator,
            validator: (text) {
              if (text == null || text.isEmpty) {
                return 'This field can\'t be empty';
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.disabled,
          ),
        ),
      ),
    );
  }
}
