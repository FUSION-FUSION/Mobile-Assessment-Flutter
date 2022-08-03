import 'package:flutter/material.dart';

import '../../../constants/color_pallette.dart';

class OtherActionCard extends StatelessWidget {
  final String title;
  final String description;
  const OtherActionCard({
    Key? key, required this.title, required this.description,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Container(
        width: width * 0.43,
        height: height * 0.16,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: kShadow),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 20, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.w700, fontSize: 20),
              ),
              SizedBox(
                height: 6,
              ),
              Container(
                width: 20,
                height: 3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: kPrimary),
              ),
              SizedBox(
                height: 6,
              ),
              Text(description),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.arrow_forward,
                        size: 10,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}