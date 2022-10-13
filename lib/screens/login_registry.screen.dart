import 'package:flutter/material.dart';

class LoginRegistryScreen extends StatelessWidget {
  static const screenRoute = '/login_registry_screen';

  const LoginRegistryScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Registro',
          style: TextStyle(color: Colors.black54),
        ),
      ),
      body: const Center(
        child: Text(
          'Vista 6',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
