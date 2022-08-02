import 'package:flutter/material.dart';

import '../../constants/assets_constant_name.dart';
import '../../constants/color_pallette.dart';

class PackageCard extends StatelessWidget {
  final String title, description;
  final List<String> images;
  final bool? isLight, isComingSoon;
  const PackageCard({
    Key? key,
    required this.title,
    required this.description,
    required this.images, this.isLight =false, this.isComingSoon,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Container(
      height: height * 0.27,
      width: width * 0.44,
      decoration: BoxDecoration(
        color: isLight??false ? Colors.white :Colors.white.withOpacity(1),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 30,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              height: width * 0.27,
              width: width * 0.44,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: isLight??false ? Image.asset(images[0],) : Text('')
                ),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 8,
            child: Container(
              height: width * 0.28,
              width: width * 0.28,
              child: Image.asset(images[1]),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: SizedBox(
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: const Center(
                  child: Icon(
                    Icons.arrow_forward,
                    size: 10,
                  ),
                ),
              ),
            ),
          ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
            SizedBox(height: 6,),
            Container(
              width: 20,
              height: 3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: kPrimary),
            ),
            SizedBox(height: 6,),
            Text(description),
          ],
        ),
      )
        ],
      ),
    );
  }
}

