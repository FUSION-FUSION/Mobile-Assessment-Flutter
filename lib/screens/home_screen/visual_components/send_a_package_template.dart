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
      height: 190,
      width: (MediaQuery.of(context).size.width / 2) - 30,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        image: bgImage != null
            ? DecorationImage(
                image: AssetImage(bgImage!),
                fit: BoxFit.contain,
                alignment: Alignment.bottomCenter,
              )
            : null,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
            spreadRadius: 0.1,
          ),
        ],
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 25, 0, 3),
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
                padding: const EdgeInsets.fromLTRB(12, 2, 0, 3),
                child: Text(
                  description,
                  style: const TextStyle(),
                ),
              ),

              // Overlay picture, if any
              overlayImage != null
                  ? Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: Image.asset(
                          overlayImage!,
                          fit: BoxFit.contain,
                        ),
                      ),
                    )
                  : const SizedBox(),
            ],
          ),

          // overlaying bottom icon
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 20,
              height: 20,
              margin: const EdgeInsets.only(bottom: 20, right: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_forward,
                size: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
