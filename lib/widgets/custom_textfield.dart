// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../utilities/constants/constants.dart';

class STextfield extends StatefulWidget {
  final String? hintText;
  final String? labelText;
  final String? errorText;
  final bool obscureText;
  final VoidCallback? onSuffixPressed;
  final Widget? suffix;
  final Function(String)? validator;
  final TextEditingController? controller;
  final int? maxlines;
  final bool isMandatory;
  final Widget? prefix;

  const STextfield({
    Key? key,
    this.hintText,
    this.labelText,
    this.errorText,
    required this.obscureText,
    this.onSuffixPressed,
    this.suffix,
    this.validator,
    this.controller,
    this.maxlines,
    required this.isMandatory,
    this.prefix,
  }) : super(key: key);

  @override
  State<STextfield> createState() => _STextFieldState();
}

class _STextFieldState extends State<STextfield> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0),
          child: Row(
            children: [
              Text(widget.labelText ?? "",
                  style: textTheme.subtitle2?.copyWith(fontSize: 16.sp)
                  //  TextStyle(
                  //     fontWeight: FontWeight.bold, fontSize: size.height * 0.02),
                  ),
              SizedBox(width: 0.7.h),
              widget.isMandatory
                  ? Text('*',
                      style: textTheme.button?.copyWith(color: Colors.red)
                      //  TextStyle(
                      //     color: Colors.red, fontWeight: FontWeight.bold,
                      //     fontSize: size.height * 0.023),
                      )
                  : const Text(''),
            ],
          ),
        ),
        SizedBox(
          height: 7.h,
        ),
        TextFormField(
          maxLines: widget.maxlines ?? 1,
          obscureText: widget.obscureText,
          controller: widget.controller,
          validator: (val) => widget.validator!(val!),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            // labelStyle: const TextStyle(color: Colors.black),
            hintStyle:
                textTheme.headline6?.copyWith(color: Colors.grey.shade400),
            // const TextStyle(fontSize: 14.0, color: Colors.black26),
            contentPadding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
            // labelText: widget.labelText,
            errorText: widget.errorText,
            hintText: widget.hintText,
            suffix: widget.suffix == null
                ? null
                : GestureDetector(
                    onTap: () {
                      widget.onSuffixPressed!();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 8),
                      child: widget.suffix,
                    ),
                  ),
            prefixIcon: widget.prefix == null
                ? null
                : Container(
                    child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: widget.prefix,
                  )),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(22),
              borderSide: const BorderSide(
                color: Colors.transparent,
                // style: BorderStyle.solid
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(22),
              borderSide: const BorderSide(
                color: Colors.transparent,
                // style: BorderStyle.solid
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(22),
              borderSide: const BorderSide(
                  color: Colors.transparent, style: BorderStyle.solid),
            ),
          ),
        ),
      ],
    );
  }
}
