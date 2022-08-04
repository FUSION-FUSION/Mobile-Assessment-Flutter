// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../__lib.dart';

Widget inputFeild(
    {required String label,
    required TextEditingController controller,
    String? hint,
    int? maxLines,
    int? minLines,
    Widget? prefixIcon,
    Widget? suffixIcon,
    String? Function(String?)? validator,
    void Function(String)? onChanged,
    List<TextInputFormatter>? inputFormatters,
    keyboardType}) {
  return col(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: text(label),
      ),
      if (label.isNotEmpty) verticalSpace(height: 6),
      TextFormField(
        maxLines: maxLines,
        minLines: minLines,
        controller: controller,
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        style: const TextStyle(fontWeight: FontWeight.w600),
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
              color: Color.fromARGB(255, 26, 26, 26),
              fontWeight: FontWeight.w600,
              fontSize: 16),
          filled: true,
          fillColor: AppColors.offWhite,
          contentPadding: pad(horiz: 20, vert: 10),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
            borderSide: BorderSide(color: AppColors.offWhite),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
            borderSide: BorderSide(color: AppColors.offWhite),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
            borderSide: BorderSide(color: AppColors.offWhite),
          ),
        ),
        validator: validator,
      ),
    ],
  );
}

Widget phoneFormFeild({
  required String label,
  FocusNode? focusNode,
  required Function(PhoneNumber number) onPhoneNumberChange,
  required TextEditingController controller,
  String? Function(String?)? validator,
  String? hint,
}) {
  return Container(
    child: col(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: text(label),
        ),
        verticalSpace(height: 6),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            border: Border.all(color: AppColors.offWhite),
            color: AppColors.offWhite,
          ),
          child: InternationalPhoneNumberInput(
            selectorConfig: const SelectorConfig(
              showFlags: false,
              selectorType: PhoneInputSelectorType.DROPDOWN,
            ),
            textFieldController: controller,
            onInputChanged: onPhoneNumberChange,
            maxLength: 12,
            validator: validator,
            inputDecoration: InputDecoration(
              hintText: hint,
              hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 26, 26, 26),
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
              filled: true,
              fillColor: AppColors.offWhite,
              contentPadding: pad(horiz: 20, vert: 10),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),
                borderSide: BorderSide(color: AppColors.offWhite),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),
                borderSide: BorderSide(color: AppColors.offWhite),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),
                borderSide: BorderSide(color: AppColors.offWhite),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget passwordFeild({
  String label = 'Password',
  required TextEditingController controller,
  String? Function(String?)? validator,
  TextInputType? keyboardType,
  Function(String)? onChanged,
  TextInputAction? textInputAction = TextInputAction.next,
  List<TextInputFormatter>? inputFormatters,
}) {
  return col(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: text(label),
      ),
      verticalSpace(height: 3),
      TextFormField(
        inputFormatters: inputFormatters,
        keyboardType: keyboardType,
        onChanged: onChanged,
        textInputAction: textInputAction,
        validator: validator,
        controller: controller,
        obscureText: true,
        style: const TextStyle(fontWeight: FontWeight.w400),
        decoration: InputDecoration(
          contentPadding: pad(horiz: 12),
          errorMaxLines: 3,
          filled: true,
          fillColor: AppColors.offWhite,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
            borderSide: BorderSide(color: AppColors.offWhite),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
          ),
        ),
      ),
    ],
  );
}
