import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0xFFB1B0B2),
            height: 1,
            thickness: 1,
          ),
        ),
        Text(
          '  Ou conecte-se com  ',
          style: TextStyle(
            fontFamily: 'Effra Trial',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xFF454545),
          ),
        ),
        Expanded(
          child: Divider(
            color: Color(0xFFB1B0B2),
            height: 1,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
