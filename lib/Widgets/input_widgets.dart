import 'package:flutter/material.dart';

import '../Util/colors.dart';

class InputWidget extends StatelessWidget {
  final String title;
  const InputWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10.0,
              ),
              Text(
                title,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kWhiteColor),
                child: const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: kWhiteColor,
                      filled: true),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
