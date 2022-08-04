import 'package:flutter/material.dart';

class TextSpace extends StatelessWidget {
  const TextSpace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: const Color(0xFFF4F6FD),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    );
  }
}
