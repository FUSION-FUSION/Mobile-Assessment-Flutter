import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../providers/providers.dart';
import '../utilities/constants/constants.dart';

class OtpField extends StatefulWidget {
  final ValueChanged<String>? onChanged;
  final FormFieldSetter<String>? onSaved;
  final TextEditingController? controller;
  const OtpField({
    Key? key,
    this.onChanged,
    this.onSaved,
    this.controller,
  }) : super(key: key);

  @override
  State<OtpField> createState() => _OtpFieldState();
}

class _OtpFieldState extends State<OtpField> {
  @override
  Widget build(BuildContext context) {
    final authP = Provider.of<AuthProvider>(context);

    return Container(
        alignment: Alignment.center,
        height: 60.h,
        width: 49.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextFormField(
          controller: widget.controller,
          onChanged: widget.onChanged,
          onSaved: widget.onSaved,
          autofocus: authP.editing ? true : false,
          // focusNode: ,
          maxLines: 1,
          textAlignVertical: TextAlignVertical.center,
          style: Theme.of(context).textTheme.headline1?.copyWith(
                color: SColors.primaryColor,
                fontSize: 26.sp,
              ),
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          decoration: InputDecoration(
            filled: true,
            // authP.editDone == false ? true : false,
            fillColor: authP.editing ? null : const Color(0xFFFDFEFF),
            //  Colors.grey.shade200,
            contentPadding: EdgeInsets.zero,
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                  color: Colors.transparent, style: BorderStyle.solid),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                  color: Colors.transparent, style: BorderStyle.solid),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: SColors.primaryColor, style: BorderStyle.solid),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                  color: Colors.transparent, style: BorderStyle.solid),
            ),
          ),
        ));
  }
}
