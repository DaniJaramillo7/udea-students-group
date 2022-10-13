import 'package:flutter/material.dart';

class ActivitiesListScreen extends StatelessWidget {
  static const screenRoute = '/activities_list_screen';

  const ActivitiesListScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Listado de actividades',
          style: TextStyle(color: Colors.black54),
        ),
      ),
      body: const Center(
        child: Text(
          'Vista 1',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
