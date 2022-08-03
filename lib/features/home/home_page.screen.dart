import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/constants/app_constants.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 219, 217, 217),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 219, 217, 217),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Hello, John.',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          color: Colors.black,
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: const [
          ImageIcon(
            AssetImage('assets/ic-notification.png'),
            // color: Colors.black,
          ),
        ],
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 10, bottom: 10),
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  alignment: Alignment.centerRight,
                  image: AssetImage('assets/bg-dashboard-balance.png'),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Total Balance',
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      Text('₦50,000',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 80,
                      height: 29,
                      decoration: BoxDecoration(
                        color: kThemeColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              'Top up',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.double_arrow,
                              color: Colors.white,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.only(
                  top: 25, bottom: 25, left: 30, right: 30),
              height: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Track your waybill',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: kThemeColor,
                      ),
                    ),
                    padding: const EdgeInsets.all(1.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 5),
                          width: 170,
                          child: const TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintStyle: TextStyle(fontSize: 15),
                              hintText: 'Waybill Number',
                              prefixIcon: UnconstrainedBox(
                                child: ImageIcon(
                                  AssetImage('assets/ic-search.png'),
                                  size: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 75,
                          decoration: BoxDecoration(
                            color: kThemeColor,
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: const Center(
                            child: Text(
                              'Track',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
