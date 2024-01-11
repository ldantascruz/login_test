import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final Function(String) validator;
  final Function(String) onFieldSubmitted;
  final TextInputAction textInputAction;
  final Widget? suffixIcon;

  const TextFormFieldWidget({
    super.key,
    required this.hintText,
    required this.controller,
    required this.obscureText,
    required this.keyboardType,
    required this.validator,
    required this.onFieldSubmitted,
    required this.textInputAction,
    this.suffixIcon,
  });

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obscureText,
      keyboardType: widget.keyboardType,
      validator: (value) => widget.validator(value!),
      onFieldSubmitted: (value) => widget.onFieldSubmitted!(value),
      textInputAction: widget.textInputAction,
      decoration: InputDecoration(
        suffixIcon: widget.suffixIcon,
        filled: true,
        fillColor: const Color(0xFFFFFFFF),
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          color: Color(0xFFB1B0B2),
          fontSize: 16,
          fontFamily: 'Effra Trial',
          fontWeight: FontWeight.bold,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            width: 0.5,
            color: Color(0xFF9C9B9D),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            width: 1.5,
            color: Color(0xFF2F9BFF),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
      ),
      style: const TextStyle(
        color: Color(0xFF393A3B),
        fontSize: 16,
        fontFamily: 'Effra Trial',
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
