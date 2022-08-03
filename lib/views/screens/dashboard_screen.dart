import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/views/themes/app_theme.dart';
import 'package:mobile_assessment_flutter/views/themes/theme_provider.dart';
import 'package:mobile_assessment_flutter/views/widgets/app_appbar.dart';
import 'package:mobile_assessment_flutter/views/widgets/app_button.dart';
import 'package:mobile_assessment_flutter/views/widgets/app_textfield.dart';

class DashboardScreen extends StatelessWidget {
  static const route = '/dashboard';

  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = ThemeProvider.current(context);

    return Scaffold(
      appBar: const ThemedAppBar(
        title: 'Hello, John.',
      ),
      backgroundColor: theme.backgroundColor,
      body: SafeArea(
        child: Container(
          color: theme.backgroundColor,
          constraints: const BoxConstraints.expand(),
          child: SingleChildScrollView(
            child: buildContent(theme),
          ),
        ),
      ),
    );
  }

  Widget buildContent(AppTheme theme) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildBalanceCard(theme),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: buildTrackerCard(theme),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: buildDeliverySection(theme),
          ),
        ],
      ),
    );
  }

  Widget buildBalanceCard(AppTheme theme) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 26,
            spreadRadius: 0,
            offset: const Offset(2, 4),
            color: theme.dropShadowColor1,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Align(
              child: ClipRRect(
                child: Image.asset('assets/bg-dashboard-balance.png'),
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.bottomRight,
            ),
          ),
          Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      theme.text(
                        'Total Balance',
                        color: theme.primaryTextColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          children: [
                            Text(
                              '₦',
                              style: TextStyle(
                                color: theme.primaryTextColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 24,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            theme.text(
                              ' 50,000',
                              color: theme.primaryTextColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: UnconstrainedBox(
                      child: AppButton(
                        padding: const EdgeInsets.symmetric(
                            vertical: 7, horizontal: 17),
                        child: Row(
                          children: [
                            theme.text(
                              'Top up ',
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                            const Icon(
                              Icons.keyboard_double_arrow_right_rounded,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }

  Widget buildTrackerCard(AppTheme theme) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 26,
            spreadRadius: 0,
            offset: const Offset(2, 4),
            color: theme.dropShadowColor1,
          ),
        ],
      ),
      child: Column(
        children: [
          theme.text(
            'Track your waybill',
            color: theme.primaryTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: AppTextField(
              keyboardType: TextInputType.number,
              borderColor: theme.primaryColor.withOpacity(0.6),
              labelText: 'Waybill Number',
              prefixIcon: UnconstrainedBox(
                child: Image.asset(
                  'assets/ic-search.png',
                  width: 20,
                ),
              ),
              suffixIcon: UnconstrainedBox(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(17)),
                      color: theme.primaryColor,
                    ),
                    child: theme.text(
                      'Track',
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDeliveryCard(
    AppTheme theme, {
    bool showCurve = false,
    required String title,
    required String description,
        required String image,
  }) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: theme.textfieldBackgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Image.asset(image),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 180),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  theme.text(
                    title,
                    color: theme.primaryTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      height: 5,
                      width: 25,
                      decoration: BoxDecoration(
                          color: theme.primaryColor,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  theme.text(
                    description,
                    color: theme.grayTextColor,
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDeliverySection(AppTheme theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        theme.text(
          'Send a Package',
          color: theme.grayTextColor,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        Row(
          children: [
            buildDeliveryCard(
              theme,
              title: 'Same State',
              description: 'Deliveries within the same state',
              image: 'assets/ic-bike.png',
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
            buildDeliveryCard(
              theme,
              title: 'Same State',
              description: 'Deliveries within the same state',
              image: 'assets/Delivery Van.png',
            ),
          ],
        )
      ],
    );
  }
}
