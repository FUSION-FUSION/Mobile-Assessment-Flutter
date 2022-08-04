import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//custom RoundedTextField
class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.textfieldcontroller,
    this.textfieldValidator,
    this.type,
    required this.obscure,
    this.prefix,
  }) : super(key: key);

  final TextEditingController textfieldcontroller;
  final String? Function(String?)? textfieldValidator;
  final TextInputType? type;
  final bool obscure;
  final Widget? prefix;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 23.w, top: 6.h),
      child: TextFormField(
          validator: textfieldValidator,
          // cursorColor: Color.fromRGBO(0, 0, 0, 1),
          style: TextStyle(fontSize: 17),
          cursorHeight: 25,
          obscureText: obscure,
          keyboardType: type,
          autofocus: true,
          controller: textfieldcontroller,
          decoration: InputDecoration(
            prefix: prefix,
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),
                borderSide: BorderSide.none),
          )),
    );
  }
}
