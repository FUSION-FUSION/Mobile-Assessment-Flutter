import 'package:flutter/material.dart';

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
      width: width * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 15,
              offset: const Offset(1, 1),
            ),
            BoxShadow(
              color: Colors.blueGrey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 15,
              offset: const Offset(-1, -1),
            ),
          ]),
      child: Stack(
        children: [
          Positioned(
            child: SizedBox(
              height: height * 0.09,
              width: width * 0.65,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/bg-dashboard-balance.png',
                ),
              ),
            ),
            bottom: 0,
            right: 0,
          ),
          Row(
            children: [
              SizedBox(
                width: width * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Total Balance',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '# 50,000',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 12, top: 20),
                child: Container(
                  height: height * 0.035,
                  width: width * 0.22,
                  decoration: BoxDecoration(
                    color: const Color(0xff46a5ba),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Top up ',
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                        size: 13,
                      ),
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
