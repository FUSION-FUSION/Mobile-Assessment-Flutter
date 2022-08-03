import 'package:flutter/material.dart';

import '../../constants/assets_constant_name.dart';
import '../../constants/color_pallette.dart';

class MoneyDashboardCard extends StatelessWidget {
  const MoneyDashboardCard({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.09,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: kShadow
    ),
      child: Stack(
        children: [
          Positioned(
            child: Container(
              height: height * 0.09,
              width: width * 0.65,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(backgroundDashboardBalance,
                ),
              ),
            ),
            bottom: 0,
            right: 0,
          ),
          Row(
            children: [
              SizedBox(width: width * 0.05,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text('Total Balance',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    Text('# 50,000',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w900
                      ),
                    )
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 12, top: 20),
                child: Container(
                  height: height*0.035,
                  width: width*0.22,
                  decoration: BoxDecoration(
                    color: kPrimary,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Top up ',
                        style: TextStyle(
                            color: Colors.white
                        ),),
                      Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,size: 13,),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}