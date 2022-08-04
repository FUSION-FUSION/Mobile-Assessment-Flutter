import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_assessment_flutter/core/utils/enums.dart';

extension BuildContextExtension on BuildContext {
  Size get size => MediaQuery.of(this).size;
  double get height => size.height;
  double get width => size.width;
  String get currencysymbol =>
      NumberFormat.simpleCurrency(name: 'NGN').currencySymbol;
}

extension DateTimeExtension on DateTime {
  String toDayMonthYear() {
    return '$day  ${Month.values[month - 1].name.toCapitalize()}, $year';
  }
}

extension StringExtension on String {
  String toCapitalize() {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }
}
