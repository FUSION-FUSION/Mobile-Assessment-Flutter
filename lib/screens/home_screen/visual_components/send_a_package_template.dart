import 'package:flutter/material.dart';

class SendAPackageCard extends StatelessWidget {
  final String title;
  final String description;
  final String bgImage;
  final String? overlayImage;

  const SendAPackageCard({
    Key? key,
    required this.title,
    required this.description,
    required this.bgImage,
    this.overlayImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(bgImage),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          // Small blue divider
          Container(
            width: 20,
            height: 5,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(3)),
            ),
          ),

          // Description
          Text(
            description,
            style: const TextStyle(
              // fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          // Overlay picture, if any
          overlayImage != null ? Image.asset(overlayImage!) : const SizedBox(),
        ],
      ),
    );
  }
}
