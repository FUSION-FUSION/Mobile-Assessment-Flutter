import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension BuildContextExtension on BuildContext {
  Size get size => MediaQuery.of(this).size;
  double get height => size.height;
  double get width => size.width;
  String get currencysymbol =>
      NumberFormat.simpleCurrency(name: 'NGN').currencySymbol;
}
