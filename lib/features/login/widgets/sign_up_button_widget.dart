import 'package:flutter/material.dart';

class SignUpButtonWidget extends StatelessWidget {
  const SignUpButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/sign_up');
      },
      child: const Text.rich(
        TextSpan(
          text: 'Não tem uma conta? ',
          style: TextStyle(
            fontFamily: 'Effra Trial',
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(0xFF454545),
          ),
          children: [
            TextSpan(
              text: 'Registre-se agora!',
              style: TextStyle(
                fontFamily: 'Effra Trial',
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xFF276BE9),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
