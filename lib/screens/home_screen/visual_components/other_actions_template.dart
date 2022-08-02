import 'package:flutter/material.dart';

class OtherActionCard extends StatelessWidget {
  final String title;
  final String description;

  const OtherActionCard({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: (MediaQuery.of(context).size.width / 2) - 30,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
            spreadRadius: 0.1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 22, 0, 3),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Small blue divider
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 2, 0, 2),
            child: Container(
              width: 22,
              height: 3,
              decoration: const BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.all(Radius.circular(3)),
              ),
            ),
          ),

          // Description
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 3, 0, 3),
            child: Text(
              description,
              style: const TextStyle(),
            ),
          ),

          // Arrow forward circle icon
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 20,
              height: 20,
              margin: const EdgeInsets.only(bottom: 10, right: 10),
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
