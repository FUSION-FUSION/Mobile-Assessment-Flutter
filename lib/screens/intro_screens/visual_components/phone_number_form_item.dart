import 'package:flutter/material.dart';

class PhoneNumberFormItem extends StatelessWidget {
  final String headerText;
  final Function onEditingComplete;

  const PhoneNumberFormItem({
    Key? key,
    required this.headerText,
    required this.onEditingComplete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // header text
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            headerText,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
        ),
        // Textfield container
        Container(
          height: 42,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(17)),
          ),
          child: Row(
            children: [
              Container(
                height: 42,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 1.0,
                    color: Colors.grey[200]!,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(17)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    children: const [
                      Text(
                        '+234',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      // SizedBox(width: 2),
                      Icon(
                        Icons.arrow_drop_down,
                        size: 24,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextFormField(
                  onEditingComplete: () {
                    onEditingComplete();
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                  textAlignVertical: const TextAlignVertical(y: -0.8),
                  style: const TextStyle(
                    fontSize: 17,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
