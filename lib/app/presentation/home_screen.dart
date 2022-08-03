import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/core/constants.dart';
import 'package:mobile_assessment_flutter/core/screen_size_config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenSizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  getProportionateScreenWidth(8),
                  getProportionateScreenHeight(57),
                  getProportionateScreenWidth(20),
                  getProportionateScreenHeight(163)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/menu.png'),
                      Text(
                        'Hello, John.',
                        style: TextStyle(
                            color: Palette.blackColor,
                            fontSize: getProportionateScreenWidth(24),
                            fontFamily: FontFamily.semiBold,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                          height: getProportionateScreenHeight(29),
                          width: getProportionateScreenWidth(29),
                          child:
                              Image.asset('assets/images/ic-notification.png')),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Container(
                    alignment: AlignmentDirectional.centerStart,
                    height: getProportionateScreenHeight(80),
                    padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(28),
                      top: getProportionateScreenHeight(14),
                      right: getProportionateScreenWidth(18),
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/bg-dashboard-balance.png'),
                          alignment: Alignment.bottomRight),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Balance',
                          style: TextStyle(
                              color: Palette.blackColor,
                              fontSize: getProportionateScreenWidth(15.16),
                              fontFamily: FontFamily.regular,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(4),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '₦ 50,000',
                              style: TextStyle(
                                  color: Palette.blackColor,
                                  fontSize: getProportionateScreenHeight(24),
                                  fontFamily: FontFamily.semiBold,
                                  fontWeight: FontWeight.w600),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: getProportionateScreenHeight(34),
                                width: getProportionateScreenWidth(94),
                                decoration: BoxDecoration(
                                    color: Palette.primaryColor,
                                    borderRadius: BorderRadius.circular(17.47)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Top up ',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: getProportionateScreenWidth(
                                              12.56),
                                          fontFamily: FontFamily.medium,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Icon(
                                      Icons.double_arrow,
                                      color: Colors.white,
                                      size: getProportionateScreenWidth(20),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Container(
                    height: getProportionateScreenHeight(136),
                    padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(39),
                      top: getProportionateScreenHeight(23),
                      right: getProportionateScreenWidth(29),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        color: Palette.textFieldColor),
                    child: Column(
                      children: [
                        Text(
                          'Track your waybill',
                          style: TextStyle(
                              color: Palette.blackColor,
                              fontSize: getProportionateScreenWidth(20),
                              fontFamily: FontFamily.semiBold,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(16),
                        ),
                        Container(
                          alignment: AlignmentDirectional.center,
                          padding: EdgeInsets.only(
                            left: getProportionateScreenWidth(15),
                            right: getProportionateScreenWidth(3),
                          ),
                          height: getProportionateScreenHeight(44),
                          decoration: BoxDecoration(
                              color: Palette.textFieldColor,
                              borderRadius: BorderRadius.circular(17),
                              border: Border.all(color: Color(0x9946A5BA))),
                          child: Row(
                            children: [
                              SizedBox(
                                  height: getProportionateScreenHeight(14.26),
                                  width: getProportionateScreenWidth(14.26),
                                  child: Image.asset(
                                      'assets/images/ic-search.png')),
                              SizedBox(
                                width: getProportionateScreenWidth(9.51),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(44),
                                width: getProportionateScreenWidth(150),
                                child: TextField(
                                  cursorColor: Palette.textColor,
                                  decoration: InputDecoration(
                                      // contentPadding: EdgeInsets.all(),
                                      hintText: 'Waybill Number',
                                      hintStyle: TextStyle(
                                          color: Palette.searchColor,
                                          fontSize: getProportionateScreenWidth(
                                              15.21),
                                          fontFamily: FontFamily.light,
                                          fontWeight: FontWeight.w300),
                                      border: UnderlineInputBorder(
                                          borderSide: BorderSide.none)),
                                ),
                              ),
                              const Spacer(),
                              Container(
                                height: getProportionateScreenHeight(38),
                                width: getProportionateScreenWidth(81),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Palette.primaryColor,
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Track',
                                      style: TextStyle(
                                          fontSize: getProportionateScreenWidth(16),
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                          fontFamily:
                                              FontFamily.regular),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Text(
                    'Send a Package',
                    style: TextStyle(
                        color: Palette.blackColor,
                        fontSize: getProportionateScreenWidth(24),
                        fontFamily: FontFamily.medium,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(13),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: getProportionateScreenHeight(242),
                        width: getProportionateScreenWidth(186),
                        alignment: AlignmentDirectional.centerStart,
                        padding: EdgeInsets.only(
                            top: getProportionateScreenHeight(42),
                            right: getProportionateScreenWidth(9.41),
                            // bottom: getProportionateScreenHeight(11.34)
                            ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.09),
                            color: const Color(0xffFDFEFF),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/ic-road-same-state.png'),
                                alignment: Alignment.bottomCenter)),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: getProportionateScreenWidth(9.41)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Same State',
                                        style: TextStyle(
                                            color: Palette.blackColor,
                                            fontSize:
                                                getProportionateScreenWidth(
                                                    18.14),
                                            fontFamily: FontFamily.semiBold,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height:
                                            getProportionateScreenHeight(5.64),
                                      ),
                                      Container(
                                        width:
                                            getProportionateScreenWidth(18.75),
                                        height:
                                            getProportionateScreenHeight(3.13),
                                        decoration: BoxDecoration(
                                            color: Palette.primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(2)),
                                      ),
                                      SizedBox(
                                        height:
                                            getProportionateScreenHeight(7.38),
                                      ),
                                      Text(
                                        'Deliveries within the\nsame state',
                                        style: TextStyle(
                                            color: Palette.blackColor,
                                            fontSize:
                                                getProportionateScreenWidth(
                                                    15.12),
                                            fontFamily: FontFamily.light,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: getProportionateScreenHeight(4.98),
                                ),
                                SizedBox(
                                    height:
                                        getProportionateScreenHeight(104.07),
                                    width: getProportionateScreenWidth(114.45),
                                    child: Image.asset(
                                      'assets/images/ic-bike.png',
                                      fit: BoxFit.fill,
                                    )),
                              ],
                            ),
                            Align(
                              alignment: AlignmentDirectional.bottomEnd,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    bottom: getProportionateScreenHeight(21.34)),
                                child: Container(
                                  height: getProportionateScreenHeight(23.18),
                                  width: getProportionateScreenWidth(23.18),
                                  decoration: BoxDecoration(
                                      color: Color(0xffFBFCFD),
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    size: getProportionateScreenWidth(7.14),
                                    color: Palette.blackColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getProportionateScreenHeight(242),
                        width: getProportionateScreenWidth(186),
                        alignment: AlignmentDirectional.centerStart,
                        padding: EdgeInsets.only(
                            top: getProportionateScreenHeight(18.14),
                            // bottom: getProportionateScreenHeight(6.34)
                            ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.09),
                            color: const Color(0xffFDFEFF),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/ic-road-interstate.png'),
                                alignment: Alignment.bottomCenter)),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: getProportionateScreenWidth(197.02),
                                  child: Image.asset(
                                    'assets/images/ic-curve.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: getProportionateScreenWidth(9.41)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Interstate',
                                        style: TextStyle(
                                            color: Palette.blackColor,
                                            fontSize:
                                                getProportionateScreenWidth(
                                                    18.14),
                                            fontFamily: FontFamily.semiBold,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height:
                                            getProportionateScreenHeight(5.64),
                                      ),
                                      Container(
                                        width:
                                            getProportionateScreenWidth(18.75),
                                        height:
                                            getProportionateScreenHeight(3.13),
                                        decoration: BoxDecoration(
                                            color: Palette.primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(2)),
                                      ),
                                      SizedBox(
                                        height:
                                            getProportionateScreenHeight(7.38),
                                      ),
                                      Text(
                                        'Deliveries outside\nyour current state',
                                        style: TextStyle(
                                            color: Palette.blackColor,
                                            fontSize:
                                                getProportionateScreenWidth(
                                                    15.12),
                                            fontFamily: FontFamily.light,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ),
                                
                                Container(
                                  height: getProportionateScreenHeight(104.07),
                                  width: getProportionateScreenWidth(125.45),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/Delivery Van.png'),
                                    alignment:
                                        AlignmentDirectional.bottomCenter,
                                    fit: BoxFit.cover,
                                  )),
                                ),
                              ],
                            ),
                            Align(
                              alignment: AlignmentDirectional.bottomEnd,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    bottom: getProportionateScreenHeight(10),
                                    right: getProportionateScreenWidth(9.41)),
                                child: Container(
                                  height: getProportionateScreenHeight(23.18),
                                  width: getProportionateScreenWidth(23.18),
                                  decoration: BoxDecoration(
                                      color: Color(0xffFBFCFD),
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    size: getProportionateScreenWidth(7.14),
                                    color: Palette.blackColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: getProportionateScreenHeight(242),
                        width: getProportionateScreenWidth(186),
                        alignment: AlignmentDirectional.centerStart,
                        padding: EdgeInsets.only(
                            top: getProportionateScreenHeight(18.14),
                            // bottom: getProportionateScreenHeight(6.34)
                            ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.09),
                            color: const Color(0xffFDFEFF),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/ic-road-charter.png'),
                                alignment: Alignment.bottomCenter)),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: getProportionateScreenWidth(186),
                                  child: Image.asset(
                                    'assets/images/ic-curve.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: getProportionateScreenWidth(9.41)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Charter',
                                        style: TextStyle(
                                            color: Palette.blackColor,
                                            fontSize:
                                                getProportionateScreenWidth(
                                                    18.14),
                                            fontFamily: FontFamily.semiBold,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height:
                                            getProportionateScreenHeight(5.64),
                                      ),
                                      Container(
                                        width:
                                            getProportionateScreenWidth(18.75),
                                        height:
                                            getProportionateScreenHeight(3.13),
                                        decoration: BoxDecoration(
                                            color: Palette.primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(2)),
                                      ),
                                      SizedBox(
                                        height:
                                            getProportionateScreenHeight(7.38),
                                      ),
                                      Text(
                                        'Request a vehicle',
                                        style: TextStyle(
                                            color: Palette.blackColor,
                                            fontSize:
                                                getProportionateScreenWidth(
                                                    15.12),
                                            fontFamily: FontFamily.light,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: getProportionateScreenHeight(4.98),
                                ),
                                Container(
                                  height: getProportionateScreenHeight(124.56),
                                  width: getProportionateScreenWidth(130.81),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/ic-truck.png'),
                                    alignment: AlignmentDirectional.bottomStart,
                                    fit: BoxFit.contain,
                                  )),
                                ),
                              ],
                            ),
                            Align(
                              alignment: AlignmentDirectional.bottomEnd,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  right: getProportionateScreenWidth(9.41),
                                  bottom: getProportionateScreenHeight(16.34),
                                ),
                                child: Container(
                                  height: getProportionateScreenHeight(23.18),
                                  width: getProportionateScreenWidth(23.18),
                                  decoration: BoxDecoration(
                                      color: Color(0xffFBFCFD),
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    size: getProportionateScreenWidth(7.14),
                                    color: Palette.blackColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Stack(children: [
                        Container(
                          height: getProportionateScreenHeight(242),
                          width: getProportionateScreenWidth(186),
                          alignment: AlignmentDirectional.centerStart,
                          padding: EdgeInsets.only(
                              top: getProportionateScreenHeight(42),
                              right: getProportionateScreenWidth(9.41),
                              // bottom: getProportionateScreenHeight(11.34)
                              ),
                          foregroundDecoration: BoxDecoration(
                            backgroundBlendMode: BlendMode.lighten,
                            color: Color(0x38F3F4F5),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.09),
                           
                            color: Color(0xffF3F4F5),
                          ),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left:
                                            getProportionateScreenWidth(9.41)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'International',
                                          style: TextStyle(
                                              color: Palette.blackColor,
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      18.14),
                                              fontFamily: FontFamily.semiBold,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: getProportionateScreenHeight(
                                              5.64),
                                        ),
                                        Container(
                                          width: getProportionateScreenWidth(
                                              18.75),
                                          height: getProportionateScreenHeight(
                                              3.13),
                                          decoration: BoxDecoration(
                                              color: Palette.primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(2)),
                                        ),
                                        SizedBox(
                                          height: getProportionateScreenHeight(
                                              7.38),
                                        ),
                                        Text(
                                          'Send packages to\nother countries',
                                          style: TextStyle(
                                              color: Palette.blackColor,
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      15.12),
                                              fontFamily: FontFamily.light,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(4.98),
                                  ),
                                  SizedBox(
                                      height:
                                          getProportionateScreenHeight(104.07),
                                      width:
                                          getProportionateScreenWidth(114.45),
                                      child: Image.asset(
                                        'assets/images/ic-aeroplane.png',
                                        fit: BoxFit.fill,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getProportionateScreenHeight(242),
                          width: getProportionateScreenWidth(186),
                          alignment: AlignmentDirectional.centerStart,
                          padding: EdgeInsets.only(
                              top: getProportionateScreenHeight(42),
                              right: getProportionateScreenWidth(9.41),
                              bottom: getProportionateScreenHeight(11.34)),
                          foregroundDecoration: BoxDecoration(
                            backgroundBlendMode: BlendMode.saturation,
                            color: Color(0x38F3F4F5),
                          ),
                          decoration: BoxDecoration(
                              backgroundBlendMode: BlendMode.srcATop,
                              borderRadius: BorderRadius.circular(11.09),
                              color: Color(0x98F3F4F5)),
                          child: Align(
                            alignment: AlignmentDirectional.bottomEnd,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  bottom: getProportionateScreenHeight(21.86)),
                              child: Container(
                                  height: getProportionateScreenHeight(18.14),
                                  width: getProportionateScreenWidth(75.58),
                                  decoration: BoxDecoration(
                                      color: Color(0xffFDFEFF),
                                      borderRadius:
                                          BorderRadius.circular(9.18)),
                                  child: Center(
                                    child: Text(
                                      'Coming Soon',
                                      style: TextStyle(
                                          fontSize:
                                              getProportionateScreenWidth(9.07),
                                          color: Palette.blackColor,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: FontFamily.medium),
                                    ),
                                  )),
                            ),
                          ),
                        )
                      ])
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Text(
                    'Other Actions',
                    style: TextStyle(
                        color: Palette.blackColor,
                        fontSize: getProportionateScreenWidth(24),
                        fontFamily: FontFamily.medium,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(7),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: getProportionateScreenHeight(143),
                        width: getProportionateScreenWidth(186),
                        alignment: AlignmentDirectional.centerStart,
                        padding: EdgeInsets.only(
                            top: getProportionateScreenHeight(26),
                            right: getProportionateScreenWidth(9.41),
                            left: getProportionateScreenWidth(13.1),
                            // bottom: getProportionateScreenHeight(11.34)
                            ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11.09),
                          color: const Color(0xffFDFEFF),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: getProportionateScreenWidth(9.41)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Waybill History',
                                    style: TextStyle(
                                        color: Palette.blackColor,
                                        fontSize:
                                            getProportionateScreenWidth(18.14),
                                        fontFamily: FontFamily.semiBold,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(5.64),
                                  ),
                                  Container(
                                    width: getProportionateScreenWidth(18.75),
                                    height: getProportionateScreenHeight(3.13),
                                    decoration: BoxDecoration(
                                        color: Palette.primaryColor,
                                        borderRadius: BorderRadius.circular(2)),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(7.38),
                                  ),
                                  Text(
                                    'Records of all your\nwaybills.',
                                    style: TextStyle(
                                        color: Palette.blackColor,
                                        fontSize:
                                            getProportionateScreenWidth(15.12),
                                        fontFamily: FontFamily.light,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      height:
                                          getProportionateScreenHeight(23.18),
                                      width: getProportionateScreenWidth(23.18),
                                      decoration: BoxDecoration(
                                          color: Palette.blackColor,
                                          shape: BoxShape.circle),
                                      child: Icon(
                                        Icons.arrow_forward,
                                        size: getProportionateScreenWidth(7.14),
                                        color: Palette.whiteColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getProportionateScreenHeight(143),
                        width: getProportionateScreenWidth(186),
                        alignment: AlignmentDirectional.centerStart,
                        padding: EdgeInsets.only(
                            top: getProportionateScreenHeight(26),
                            right: getProportionateScreenWidth(9.41),
                            left: getProportionateScreenWidth(13.1),
                            // bottom: getProportionateScreenHeight(11.34)
                            ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11.09),
                          color: const Color(0xffFDFEFF),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: getProportionateScreenWidth(9.41)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Get Help',
                                    style: TextStyle(
                                        color: Palette.blackColor,
                                        fontSize:
                                            getProportionateScreenWidth(18.14),
                                        fontFamily: FontFamily.semiBold,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(5.64),
                                  ),
                                  Container(
                                    width: getProportionateScreenWidth(18.75),
                                    height: getProportionateScreenHeight(3.13),
                                    decoration: BoxDecoration(
                                        color: Palette.primaryColor,
                                        borderRadius: BorderRadius.circular(2)),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(7.38),
                                  ),
                                  Text(
                                    'Get help & support from our team',
                                    style: TextStyle(
                                        color: Palette.blackColor,
                                        fontSize:
                                            getProportionateScreenWidth(15.12),
                                        fontFamily: FontFamily.light,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      height:
                                          getProportionateScreenHeight(23.18),
                                      width: getProportionateScreenWidth(23.18),
                                      decoration: BoxDecoration(
                                          color: Palette.blackColor,
                                          shape: BoxShape.circle),
                                      child: Icon(
                                        Icons.arrow_forward,
                                        size: getProportionateScreenWidth(7.14),
                                        color: Palette.whiteColor,
                                      ),
                                    ),
                                  ),
                                ],
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
        ),
      ),
    );
  }
}
