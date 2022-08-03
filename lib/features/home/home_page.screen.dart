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
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 22, right: 22, top: 15, bottom: 15),
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
                      children: const [
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
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Track your waybill',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Send a Package',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 200,
                    width: 164,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        alignment: Alignment.bottomCenter,
                        image: AssetImage('assets/ic-road-same-state.png'),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10, top: 30),
                          height: 95,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Same State',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              Container(
                                height: 2.5,
                                width: 20,
                                color: kThemeColor,
                              ),
                              const Text('Deliveries within the'),
                              const Text('same state'),
                            ],
                          ),
                        ),
                        Positioned(
                          child: Image.asset(
                            'assets/ic-bike.png',
                            height: 90,
                            width: 100,
                          ),
                          bottom: 10,
                          right: 65,
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.arrow_forward,
                                size: 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 164,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        alignment: Alignment.bottomCenter,
                        image: AssetImage('assets/ic-road-interstate.png'),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10, top: 30),
                          height: 95,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Interstate',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              Container(
                                height: 2.5,
                                width: 20,
                                color: kThemeColor,
                              ),
                              const Text('Deliveries outside'),
                              const Text('your current state'),
                            ],
                          ),
                        ),
                        Positioned(
                          child: Image.asset(
                            'assets/Delivery Van.png',
                            height: 90,
                            width: 100,
                          ),
                          bottom: 10,
                          right: 65,
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.arrow_forward,
                                size: 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 200,
                    width: 164,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        alignment: Alignment.bottomCenter,
                        image: AssetImage('assets/ic-road-charter.png'),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 10, top: 30),
                          height: 95,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Charter',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              Container(
                                height: 2.5,
                                width: 20,
                                color: kThemeColor,
                              ),
                              const Text('Request a vehicle'),
                              const Text(''),
                            ],
                          ),
                        ),
                        Positioned(
                          child: Image.asset(
                            'assets/ic-truck.png',
                            height: 90,
                            width: 100,
                          ),
                          bottom: 10,
                          right: 65,
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.arrow_forward,
                                size: 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 164,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 10, top: 30),
                          height: 95,
                          child: Opacity(
                            opacity: 0.5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'International',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                Container(
                                  height: 2.5,
                                  width: 20,
                                  color: kThemeColor,
                                ),
                                const Text('Send packages to'),
                                const Text('other countries'),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          child: Opacity(
                            opacity: 0.5,
                            child: Image.asset(
                              'assets/ic-aeroplane.png',
                              height: 110,
                              width: 190,
                            ),
                          ),
                          bottom: 4,
                          right: 10,
                        ),
                        Positioned(
                          bottom: 31,
                          right: 10,
                          child: Container(
                            width: 60,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(0, 2),
                                  blurRadius: 1,
                                  spreadRadius: 0.05,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                            child: const Center(
                              child: Text(
                                'Coming Soon',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Other Actions',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 120,
                    width: 164,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 10, top: 30),
                          height: 95,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Waybill History',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              Container(
                                height: 2.5,
                                width: 20,
                                color: kThemeColor,
                              ),
                              const Text('Records of all your'),
                              const Text('waybills.'),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 164,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 10, top: 30),
                          height: 95,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Get Help',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              Container(
                                height: 2.5,
                                width: 20,
                                color: kThemeColor,
                              ),
                              const Text('Get help & support'),
                              const Text('from our team'),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
