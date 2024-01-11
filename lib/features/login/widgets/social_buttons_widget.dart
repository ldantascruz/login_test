import 'package:flutter/material.dart';

class SocialButtonsWidget extends StatelessWidget {
  const SocialButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/google_button.png',
          width: sizeWidth * 0.14,
        ),
        SizedBox(width: sizeWidth * 0.05),
        Image.asset(
          'assets/images/facebook_button.png',
          width: sizeWidth * 0.14,
        ),
      ],
    );
  }
}
