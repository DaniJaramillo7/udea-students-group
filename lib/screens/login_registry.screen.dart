import 'package:flutter/material.dart';
import 'package:udea_students_group/widgets/custom_input.dart';

class LoginRegistryScreen extends StatefulWidget {
  static const screenRoute = '/login_registry_screen';

  const LoginRegistryScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginRegistryScreen> createState() => _LoginRegistryScreenState();
}

class _LoginRegistryScreenState extends State<LoginRegistryScreen> {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle de actividad'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 220,
                  child: Text(
                    '¡Regístrate en la mejor app de la UdeA!',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Ingresa el correo electrónico con el que vas a registrarte. Te recomendamos usar el correo institucional; así, los demás participantes estarán más tranquilos al sabes que haces parte de la comunidad universitaria.',
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 8),
              CustomInput(
                inputController: emailController,
                textInputType: TextInputType.emailAddress,
                hintText: 'Email',
              ),
              const SizedBox(height: 30),
              const Text(
                '¡Elije una contraseña con cuidado! Recuerda que la seguridad comienza contigo :)',
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 8),
              CustomInput(
                inputController: passController,
                textInputType: TextInputType.visiblePassword,
                hintText: 'Contraseña',
              ),
              const SizedBox(height: 30),

              ElevatedButton(
                onPressed: () async {},
                child: const Text('¡Regístrame!'),
              ),
              // SizedBox(
              //   width: logoWidth,
              //   child: Image.asset('assets/logo.png'),
              // ),
              // const SizedBox(height: 30),
              // CustomInput(inputController: inputController),
              // const SizedBox(height: 30),
              // CustomInput(inputController: inputController),
              // const SizedBox(height: 30),
              // ElevatedButton(
              //   onPressed: () async {},
              //   child: const Text('Ingresar'),
              // ),
              // const SizedBox(height: 30),
              // RichText(
              //   text: TextSpan(
              //     children: [
              //       const TextSpan(
              //         text: '¿No tienes una cuenta? ',
              //         style: TextStyle(
              //           color: Colors.black54,
              //           fontSize: 14,
              //         ),
              //       ),
              //       TextSpan(
              //         text: '¡Regístrate aquí!',
              //         style: TextStyle(
              //           color: Theme.of(context).primaryColor,
              //           fontSize: 14,
              //         ),
              //         recognizer: TapGestureRecognizer()..onTap = () {},
              //       ),
              //     ],
              //   ),
              // ),
              // const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
