import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:udea_students_group/widgets/custom_input.dart';

class LoginScreen extends StatefulWidget {
  static const screenRoute = '/login_screen';

  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var logoWidth = min(
          MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height,
        ) /
        2;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height / 4),
              SizedBox(
                width: logoWidth,
                child: Image.asset('assets/logo.png'),
              ),
              const SizedBox(height: 30),
              CustomInput(
                inputController: emailController,
                textInputType: TextInputType.emailAddress,
                hintText: 'Correo',
              ),
              const SizedBox(height: 30),
              CustomInput(
                inputController: passController,
                textInputType: TextInputType.visiblePassword,
                hintText: 'Contraseña',
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () async {},
                child: const Text('Ingresar'),
              ),
              const SizedBox(height: 30),
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: '¿No tienes una cuenta? ',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                      ),
                    ),
                    TextSpan(
                      text: '¡Regístrate aquí!',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 14,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
