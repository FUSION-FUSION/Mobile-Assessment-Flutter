import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Util/colors.dart';
import 'package:mobile_assessment_flutter/Util/utils.dart';

import '../Widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const id = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = 'John';
    String balance = '50,000';
    return GestureDetector(
      onTap: () => Focus.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: kHomeScaffoldColor,
        appBar: Widgets().homeAppBar(
          context,
          name,
          SizeConfig.blockSizeHorizontal! * 4.8,
        ),
        body: Container(
          padding: appPadding(),
          child: SafeArea(
            child: Column(
              children: [
                BalanceSection(balance: balance),
                const SearchSection(),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Send a Package',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: SizeConfig.blockSizeHorizontal! * 4.9,
                        color: kBlackColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 300,
                      childAspectRatio: 0.8,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Stack(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: kWhiteColor,
                              ),
                              child: Stack(
                                children: [
                                  Transform.translate(
                                    offset: const Offset(0, -100),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.fitWidth,
                                          image: AssetImage(
                                              'assets/images/ic-curve.png'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 30),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Same State',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: SizeConfig
                                                    .blockSizeHorizontal! *
                                                3.6,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          width: 20,
                                          height: 4,
                                          decoration: BoxDecoration(
                                            color: kPrimaryColor,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                        ),
                                        Text(
                                            'Deliveries within the \nsame satate')
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Transform.translate(
                              offset: const Offset(0, 70),
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fitWidth,
                                    image: AssetImage(
                                        'assets/images/ic-road-same-state.png'),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Transform.translate(
                                    offset: const Offset(-10, 20),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/ic-aeroplane.png'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Expanded(
                                    child: CircleAvatar(
                                  child: Icon(Icons.arrow_forward),
                                ))
                              ],
                            ),
                          ],
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SearchSection extends StatelessWidget {
  const SearchSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [appBoxShadow()],
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 25.0,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Track your waybill',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig.blockSizeHorizontal! * 4.5,
              color: kBlackColor,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15.0),
            padding: const EdgeInsets.only(
              left: 8.0,
              right: 2,
              bottom: 2.0,
              top: 2.0,
            ),
            decoration: BoxDecoration(
                border: Border.all(
                  color: kPrimaryColor.withOpacity(0.8),
                ),
                borderRadius: BorderRadius.circular(15.0)),
            child: Row(
              children: [
                const Icon(Icons.search),
                const SizedBox(
                  width: 8.0,
                ),
                const Expanded(
                    child: SizedBox(
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Waybill Number', border: InputBorder.none),
                  ),
                )),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 14.0),
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    children: const [
                      Text(
                        'Track',
                        style:
                            TextStyle(color: kWhiteColor, letterSpacing: 1.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BalanceSection extends StatelessWidget {
  const BalanceSection({
    Key? key,
    required this.balance,
  }) : super(key: key);

  final String balance;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 30, top: 5.0),
          decoration: BoxDecoration(
            boxShadow: [
              appBoxShadow(),
            ],
            image: const DecorationImage(
              alignment: Alignment.bottomRight,
              fit: BoxFit.contain,
              image: AssetImage(
                'assets/images/bg-dashboard-balance.png',
              ),
            ),
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Balance',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: SizeConfig.blockSizeHorizontal! * 2.8),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      '₦ $balance',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: SizeConfig.blockSizeHorizontal! * 4.1),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Row(
                      children: const [
                        Text(
                          'Top up',
                          style:
                              TextStyle(color: kWhiteColor, letterSpacing: 1.0),
                        ),
                        Icon(
                          Icons.double_arrow_rounded,
                          size: 18,
                          color: kWhiteColor,
                        )
                      ],
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ],
    );
  }
}
