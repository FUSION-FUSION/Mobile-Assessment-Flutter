import 'package:flutter/material.dart';

class SendAPackageCard extends StatelessWidget {
  final String title;
  final String description;
  final String? bgImage;
  final String? bottomImage;
  final bool activated;

  const SendAPackageCard({
    Key? key,
    required this.title,
    required this.description,
    this.bgImage,
    this.bottomImage,
    this.activated = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = 190;
    double width = (MediaQuery.of(context).size.width / 2) - 30;

    return Container(
      height: height,
      width: width,
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
          // main body
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
              bottomImage != null
                  ? Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: Image.asset(
                          bottomImage!,
                          fit: BoxFit.contain,
                        ),
                      ),
                    )
                  : const SizedBox(),
            ],
          ),

          // White-out layer
          activated == false
              ? Container(
            height: height,
            width: width,
            color: Colors.white54,
          )
              : const SizedBox(),

          // overlaying bottom icon
          activated == true
              ? Align(
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
                )
              : Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
                    margin: const EdgeInsets.only(bottom: 30, right: 10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(3, 2),
                        blurRadius: 1,
                        spreadRadius: 0.1,
                      ),],
                    ),
                    child: const Text(
                      'coming soon',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),

        ],
      ),
    );
  }
}
