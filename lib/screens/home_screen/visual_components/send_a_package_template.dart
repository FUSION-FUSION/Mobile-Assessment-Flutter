import 'package:flutter/material.dart';

class SendAPackageCard extends StatelessWidget {
  final String title;
  final String description;
  final String? bgImage;
  final String? overlayImage;
  final bool activated;

  const SendAPackageCard({
    Key? key,
    required this.title,
    required this.description,
    this.bgImage,
    this.overlayImage,
    this.activated = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: (MediaQuery.of(context).size.width / 2) - 30,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        image: bgImage != null
            ? DecorationImage(
                image: AssetImage(bgImage!),
                fit: BoxFit.contain,
              )
            : null,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
            spreadRadius: 0.1,
          ),
        ],
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
          overlayImage != null
              ? Expanded(
                child: Image.asset(
                    overlayImage!,
                    fit: BoxFit.contain,
                  ),
              )
              : const SizedBox(),
        ],
      ),
    );
  }
}
