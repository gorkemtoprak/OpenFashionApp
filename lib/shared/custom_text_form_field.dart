import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/utils/constants.dart';

class CustomTextFormField extends StatelessWidget {
  final onSaved;
  final bool? obscureText;
  final FormFieldValidator<String>? validator;
  final TextCapitalization? textCapitalization;
  final String? hint;
  final TextInputType? textInputType;
  final bool? formatter;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextFormField({
    Key? key,
    this.onSaved,
    this.obscureText,
    this.validator,
    this.textCapitalization,
    this.hint,
    this.textInputType,
    this.formatter,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      obscureText: obscureText!,
      onChanged: onSaved,
      textCapitalization: textCapitalization!,
      keyboardType: textInputType,
      inputFormatters: formatter! ? inputFormatters : [],
      style: const TextStyle(
        color: Constants.titleBlack,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          color: Constants.labelColor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(30.0),
        ),
        filled: true,
        fillColor: Constants.offWhiteColor,
        errorStyle: const TextStyle(
          fontSize: 12,
          color: Constants.primaryColor,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
