import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../__lib.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: pad(horiz: 20),
          child: col(
            children: [
              verticalSpace(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  iconButton(
                      iconPath: AppAssets.menuIcon, height: 16.5, width: 24),
                  text(
                    'Hello, John.',
                    size: 24,
                    weight: FontWeight.w600,
                  ),
                  iconButton(iconPath: AppAssets.notificationIcon, size: 29),
                ],
              ),
              verticalSpace(height: 30),
              balanceCard(),
              verticalSpace(height: 30),
              trackCard(),
              verticalSpace(height: 30),
              buildBottom(),
            ],
          ),
        ),
      ),
    );
  }

  Widget trackCard() {
    return Container(
      width: double.infinity,
      padding: pad(horiz: 39, vert: 23),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(26),
        boxShadow: [
          BoxShadow(
            color: AppColors.brandBlue.withOpacity(.09),
            offset: const Offset(2, 4),
            blurRadius: 26.0,
            spreadRadius: 0.0,
          ), //BoxShadow
        ],
      ),
      child: Column(
        children: [
          text('Track your waybill', size: 20, weight: FontWeight.w600),
          verticalSpace(),
          TextFormField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Waybill Number',
                hintStyle: const TextStyle(
                    color: AppColors.c606060,
                    fontWeight: FontWeight.w300,
                    fontSize: 15.31),
                isDense: true,
                contentPadding: pad(vert: 12),
                filled: true,
                fillColor: AppColors.white,
                prefixIcon: Padding(
                  padding: pad(both: 20),
                  child: assetsImage(AppAssets.searchIcon, both: 14.26),
                ),
                suffixIcon: Padding(
                  padding: pad(horiz: 3, vert: 2),
                  child: InkWell(
                    onTap: () => pushScreen(const TrackingScreen()),
                    child: Container(
                        padding: pad(horiz: 20, vert: 9),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: AppColors.brandBlue,
                        ),
                        child: text('Track', color: AppColors.white)),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide:
                      BorderSide(color: AppColors.brandBlue.withOpacity(.6)),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide:
                      BorderSide(color: AppColors.brandBlue.withOpacity(.6)),
                ),
              ))
        ],
      ),
    );
  }

  balanceCard() {
    return Container(
      height: eqH(120),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: AppColors.brandBlue.withOpacity(.09),
            offset: const Offset(2, 4),
            blurRadius: 26.0,
            spreadRadius: 0.0,
          ), //BoxShadow
        ],
        image: const DecorationImage(
            image: AssetImage(
              AppAssets.balanceBg,
            ),
            fit: BoxFit.fill),
      ),
      child: Padding(
        padding: pad(horiz: 28, vert: 14),
        child: col(
          children: [
            text('Total Balance', size: 15.16),
            verticalSpace(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text('\$50,000', weight: FontWeight.w600, size: 24),
                button(
                    onPressed: () {},
                    elevation: 4,
                    padding: pad(vert: 7, horiz: 14),
                    child: Row(
                      children: [
                        text('Top up',
                            color: AppColors.white,
                            size: 12.56,
                            weight: FontWeight.w500),
                        horizontalSpace(width: 5.11),
                        assetsImage(AppAssets.chevForward),
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }

  buildBottom() {
    return Container();
  }
}
