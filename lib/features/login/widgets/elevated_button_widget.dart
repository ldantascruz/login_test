import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatefulWidget {
  final double height;
  final double width;
  final String text;
  final Function() onTap;

  const ElevatedButtonWidget({
    super.key,
    required this.height,
    required this.width,
    required this.text,
    required this.onTap,
  });

  @override
  State<ElevatedButtonWidget> createState() => _ElevatedButtonWidgetState();
}

class _ElevatedButtonWidgetState extends State<ElevatedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFF00F0AA),
        ),
        width: widget.width,
        height: widget.height,
        child: Center(
          child: Text(
            widget.text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
