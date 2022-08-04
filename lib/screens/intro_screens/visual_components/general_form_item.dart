import 'package:flutter/material.dart';

class GeneralFormItem extends StatelessWidget {
  final String headerText;
  final Function onEditingComplete;
  final bool obscureText;

  const GeneralFormItem({
    Key? key,
    required this.headerText,
    required this.onEditingComplete,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: Text(
            headerText,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: SizedBox(
            height: 42,
            child: TextFormField(
              onEditingComplete: () {
                onEditingComplete();
              },
              obscureText: obscureText,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(17)),
                ),
                fillColor: Colors.white,
                filled: true,
              ),
              textAlignVertical: const TextAlignVertical(y: -0.8),
              style: const TextStyle(
                fontSize: 17,
                height: 1.5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
