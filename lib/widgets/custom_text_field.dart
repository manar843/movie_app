
import 'package:flutter/material.dart';

import '../utils/app_style.dart';
class CustomTextFormField extends StatefulWidget {
  final String hintText;
  final TextStyle? hintStyle;
  final IconData icon;
  final Color? colorIcon;
  final Color? colorBackground;
  final TextInputType? keyboardType;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.icon,
    this.hintStyle,
    this.colorIcon,
    this.colorBackground,
    this.keyboardType,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: TextFormField(
        keyboardType: widget.keyboardType ?? TextInputType.text,
        decoration: InputDecoration(
          filled: true,
          fillColor: widget.colorBackground ?? Colors.white,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 2.0),
            borderRadius: BorderRadius.circular(22),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 2.0),
            borderRadius: BorderRadius.circular(22),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white , width: 2.0),
            borderRadius: BorderRadius.circular(22),
          ),
          prefixIcon: Icon(
            widget.icon,
            color: widget.colorIcon ?? Colors.white ,
          ),
          hintText: widget.hintText,
          hintStyle: widget.hintStyle ?? AppStyles.med16White,
        ),
      ),
    );
  }
}
