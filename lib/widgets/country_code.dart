// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CountrycodePicker extends StatefulWidget {
  final Function(Country)? onValueSelected;
  final Widget? child;
  const CountrycodePicker({
    Key? key,
    this.onValueSelected,
    this.child,
  }) : super(key: key);

  @override
  State<CountrycodePicker> createState() => _CountrycodePickerState();
}

class _CountrycodePickerState extends State<CountrycodePicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CountryPickerDialog(
      contentPadding: const EdgeInsets.all(8),
      searchCursorColor: Colors.blue,
      searchInputDecoration: const InputDecoration(hintText: 'Search...'),
      title: const Text('Select your phone code'),
      onValuePicked: (Country country) => widget.onValueSelected!(country),
      itemBuilder: _buildDialogItem,
      priorityList: [
        CountryPickerUtils.getCountryByIsoCode('NG'),
        CountryPickerUtils.getCountryByIsoCode('IN'),
      ],
    ));
  }

  Widget _buildDialogItem(Country country) => Row(
        children: [
          CountryPickerUtils.getDefaultFlagImage(country),
          const SizedBox(width: 8),
          Text("+${country.phoneCode}"),
          const SizedBox(width: 8),
          Flexible(child: Text(country.name))
        ],
      );
}

//This is for the selected one
Widget buildDialogItem2(Country country) => Row(
      // color:Colors.blue,
      children:[
          CountryPickerUtils.getDefaultFlagImage(country),
            SizedBox(width: 8.w),
          Text("+${country.phoneCode}"),
         SizedBox(width: 8.w),

      // Flexible(child: Text(country.name))
      ]
    );
Widget buildDropdownItem(context, Country country, double dropdownItemWidth) =>
    SizedBox(
      width: dropdownItemWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // Container(
          //     width: 25.w,
          //     height: 20.h,
          //     child: CountryPickerUtils.getDefaultFlagImage(country)),
          // SizedBox(
          //   width: 2.w,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "+${country.phoneCode}",
                style: Theme.of(context)
                    .textTheme
                    .caption
                    ?.copyWith(fontWeight: FontWeight.w500),
              ),
              Icon(Icons.arrow_drop_down_sharp,
                  color: Theme.of(context).textTheme.button?.color,size: 24.h,)
            ],
          ),
        ],
      ),
    );
