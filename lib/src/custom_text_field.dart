import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final TextEditingController? controller;
  final Color? fillColor;
  final Color borderColor;
  final double borderRadius;
  final double borderWidth;
  final bool isPassword;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const CustomTextField({
    super.key,
    this.hintText,
    this.labelText,
    this.controller,
    this.fillColor = const Color(0xFFF5F5F5),
    this.borderColor = Colors.grey,
    this.borderRadius = 10.0,
    this.borderWidth = 1.0,
    this.isPassword = false,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    final borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius),
      borderSide: BorderSide(color: borderColor, width: borderWidth),
    );

    return TextField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        filled: fillColor != null,
        fillColor: fillColor,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        enabledBorder: borderStyle,
        focusedBorder: borderStyle.copyWith(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            width: borderWidth + 1,
          ),
        ),
      ),
    );
  }
}