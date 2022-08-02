import 'package:flutter/material.dart';

class PackageLocationCard extends StatelessWidget {
  final String title;
  final String description;
  final String bgImage;
  final String? overlayImage;

  const PackageLocationCard({
    Key? key,
    required this.title,
    required this.description,
    required this.bgImage,
    this.overlayImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 50,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(bgImage),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(
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
            color: Colors.blue,
            decoration: const BoxDecoration(
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
