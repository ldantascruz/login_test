import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page_test/features/login/widgets/divider_widget.dart';
import 'package:login_page_test/features/login/widgets/elevated_button_widget.dart';
import 'package:login_page_test/features/login/widgets/sign_up_button_widget.dart';
import 'package:login_page_test/features/login/widgets/social_buttons_widget.dart';
import 'package:login_page_test/features/login/widgets/text_form_field_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool obscureText = true;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF4F3F6),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          topLeft: Radius.circular(8),
                          bottomRight: Radius.circular(64),
                        ),
                        child: Image.asset(
                          'assets/images/login_image.png',
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/images/logo.svg',
                      ),
                    ],
                  ),
                  SizedBox(height: sizeHeight * 0.05),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Bem vindo de volta!',
                          style: TextStyle(
                            fontFamily: 'Effra Trial',
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(width: sizeWidth * 0.027),
                            const Text(
                              'Faça seu login para continuar',
                              style: TextStyle(
                                fontFamily: 'Effra Trial',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF878688),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: sizeHeight * 0.025),
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Email',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Effra Trial',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextFormFieldWidget(
                          onFieldSubmitted: (value) {
                            if (_formKey.currentState!.validate()) {
                              log('Validado');
                            }
                          },
                          controller: _emailController,
                          hintText: 'Digite o seu email',
                          keyboardType: TextInputType.emailAddress,
                          obscureText: false,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Campo obrigatório';
                            } else if (!value.contains('@')) {
                              return 'Email inválido';
                            }
                          },
                          textInputAction: TextInputAction.next,
                        ),
                        SizedBox(height: sizeHeight * 0.025),
                        const Text(
                          'Senha',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Effra Trial',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextFormFieldWidget(
                          onFieldSubmitted: (value) {
                            if (_formKey.currentState!.validate()) {
                              log('Validado');
                            }
                          },
                          suffixIcon: IconButton(
                            icon: obscureText
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility),
                            onPressed: () {
                              setState(() {
                                obscureText = !obscureText;
                              });
                            },
                          ),
                          controller: _passwordController,
                          hintText: 'Digite a senha',
                          obscureText: obscureText,
                          keyboardType: TextInputType.visiblePassword,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Campo obrigatório';
                            } else if (value.length < 8) {
                              return 'Senha inválida';
                            }
                          },
                          textInputAction: TextInputAction.done,
                        ),
                        SizedBox(height: sizeHeight * 0.02),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/forgot_password');
                        },
                        child: const Text(
                          'Esqueci minha senha',
                          style: TextStyle(
                            fontFamily: 'Effra Trial',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF276BE9),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: sizeHeight * 0.03),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: sizeWidth * 0.045),
                    child: isLoading
                        ? const Center(
                            child: CircularProgressIndicator(
                              color: Color(0xFF00F0AA),
                              strokeWidth: 5,
                            ),
                          )
                        : ElevatedButtonWidget(
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                log('Validado com Sucesso');
                                setState(() {
                                  isLoading = true;
                                });
                                Future.delayed(const Duration(seconds: 2)).then(
                                  (value) {
                                    setState(() {
                                      isLoading = false;
                                    });
                                    Navigator.popAndPushNamed(context, '/home');
                                  },
                                );
                              }
                            },
                            height: sizeHeight * 0.055,
                            width: double.infinity,
                            text: 'Entrar',
                          ),
                  ),
                  SizedBox(height: sizeHeight * 0.02),
                  const DividerWidget(),
                  SizedBox(height: sizeHeight * 0.02),
                  const SocialButtonsWidget(),
                  SizedBox(height: sizeHeight * 0.03),
                  const SignUpButtonWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
