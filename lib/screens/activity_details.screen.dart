import 'package:flutter/material.dart';

class ActivityDetailsScreen extends StatelessWidget {
  static const screenRoute = '/activity_details_screen';

  const ActivityDetailsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detalle de actividad',
          style: TextStyle(color: Colors.black54),
        ),
      ),
      body: const Center(
        child: Text(
          'Vista 2',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
