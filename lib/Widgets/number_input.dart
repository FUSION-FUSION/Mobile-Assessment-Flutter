import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class NumberInput extends StatelessWidget {
  final String title;
  const NumberInput({
    Key? key,
    required this.title,
  }) : super(key: key);

  get kWhiteColor => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10.0,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 16),
        ),
        Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: InternationalPhoneNumberInput(
              onInputChanged: (phoneNumber) {},
              hintText: '',
              inputDecoration: const InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: InputBorder.none),
            )),
      ],
    );
  }
}
