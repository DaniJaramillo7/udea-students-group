import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
  static const screenRoute = '/my_profile_screen';

  const MyProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mi perfil',
          style: TextStyle(color: Colors.black54),
        ),
      ),
      body: const Center(
        child: Text(
          'Vista 4',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
