import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/widgets/text_input_field.dart';

class TextAndContainers extends StatelessWidget {
  const TextAndContainers(
      {Key? key, required this.text, required this.controller, this.icon})
      : super(key: key);
  final String text;
  final TextEditingController controller;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            " $text",
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 110, 109, 109)),
          ),
          const SizedBox(
            height: 3,
          ),
          TextInputField(
            controller: controller,
            icon: icon,
          )
        ],
      ),
    );
  }
}
