import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Widget Imports
import './home_page_widgets/package_items.widget.dart';
import './home_page_widgets/total_asset.widget.dart';
import './home_page_widgets/track_waybill.widget.dart';
import './home_page_widgets/nav_bar.widget.dart';
import './home_page_widgets/other_options.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDEE4EB),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              NavBarWidget_(),
              //Total Asset Widget
              TotalAssetWidget_(),
              //Track Goods Container
              TrackWaybillWidget_(),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(10),
                height: 50,
                margin: EdgeInsets.only(bottom: 15, left: 20),
                child: Text(
                  'Send a Package',
                  style: TextStyle(fontFamily: 'JosefinSans', fontSize: 30),
                ),
              ),
              //Packages Widget
              PackageItemsWidget_(),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(10),
                height: 50,
                margin: EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  'Other Options',
                  style: TextStyle(fontFamily: 'JosefinSans', fontSize: 30),
                ),
              ),
              OtherOptions_()
            ],
          ),
        ),
      ),
    );
  }
}
