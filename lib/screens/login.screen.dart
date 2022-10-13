import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const screenRoute = '/login_screen';

  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(color: Colors.black54),
        ),
      ),
      body: const Center(
        child: Text(
          'Vista 5',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
