import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'Home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // leading: ,
        centerTitle: true,
        actions: const [
          ImageIcon(
            AssetImage(
              'assets/ic-notification.png',
            ),
            color: Colors.black,
          ),
        ],
        title: const Text(
          'Hello, John.',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    height: size.height * .1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: size.height * .1,
                          width: size.width * .8,
                          decoration: const BoxDecoration(
                              color: Colors.red,
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/bg-dashboard-balance.png',
                                  ),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            Text(
                              'Total Balance',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                            Text(
                              '\$50,000',
                              style: TextStyle(
                                  fontSize: 23,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Container(
                          height: size.height * .07,
                          width: size.width * .4,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Row(
                            children: const [
                              Text(
                                'Top up',
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height * .05,
              ),
              const Center(
                child: Text(
                  'Track Your waybill',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                    border: (Border.all(
                      color: Colors.green,
                    ))),
                height: size.height * .065,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        SizedBox(
                          width: 10,
                        ),
                        ImageIcon(
                          AssetImage(
                            'assets/ic-search.png',
                          ),
                          color: Colors.black,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Waybill Number'),
                      ],
                    ),
                    Container(
                      height: size.height * .075,
                      width: size.width * .4,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: const Center(child: Text('Track')),
                    ),
                  ],
                ),
              ),
              const Text('Send a Package'),
            ],
          ),
        ),
      ),
    );
  }
}
