import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../util/constants/colors.dart';


class CardRouteWidget extends StatelessWidget {
  const CardRouteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: size.height * .15,
      decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "PickUp",
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
              Text("jibowo Terminal",
                  style: TextStyle(fontSize: 10, color: Colors.white)),
              Text("Abuja Terminal",
                  style: TextStyle(fontSize: 10, color: Colors.white60)),
              Text("Collected",
                  style: TextStyle(fontSize: 10, color: Colors.white60)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 10,width: 20,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
              ),
              Container(
                height: 1,
                width: 90,
                color: Colors.white,
              ),
              Container(
                height: 10,width: 20,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
              ),
              const Expanded(
                child: DottedLine(
                  lineLength: 90,
                  dashColor: Colors.white60,
                  lineThickness: 4,
                  dashRadius: 20,
                  dashGapLength: 5,
                ),
              ),
              Container(
                height: 10,width: 20,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color:Colors.white60),
              ),
              const Expanded(
                child: DottedLine(
                  lineLength: 90,
                  dashColor: Colors.white60,
                  lineThickness: 4,
                  dashRadius: 20,
                  dashGapLength: 5,
                ),),
              Container(
                height: 10,width: 20,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color:Colors.white60),
              ),
            ],
          ),
          const SizedBox(height: 35,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "04 mar,2022",
                style: TextStyle(fontSize: 10,color: Colors.white),
              ),
              Text(
                "05 Mar ,2022",
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
            ],)
        ],
      ),

    );
  }
}
