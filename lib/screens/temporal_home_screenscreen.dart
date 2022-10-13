// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:udea_students_group/screens/activities_list.screen.dart';
import 'package:udea_students_group/screens/activity_details.screen.dart';
import 'package:udea_students_group/screens/login.screen.dart';
import 'package:udea_students_group/screens/login_registry.screen.dart';
import 'package:udea_students_group/screens/my_activities.screen.dart';
import 'package:udea_students_group/screens/my_profile.screen.dart';
import 'package:flutter/material.dart';

class TemporalHomeScreen extends StatelessWidget {
  const TemporalHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Screens',
          style: TextStyle(color: Colors.black54),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TemporalItem(
              itemName: '1. Listado actividades',
              routePath: ActivitiesListScreen.screenRoute,
            ),
            TemporalItem(
              itemName: '2. Detalles de actividad',
              routePath: ActivityDetailsScreen.screenRoute,
            ),
            TemporalItem(
              itemName: '3. Mis actividades',
              routePath: MyActivitiesScreen.screenRoute,
            ),
            TemporalItem(
              itemName: '4. Mi perfil',
              routePath: MyProfileScreen.screenRoute,
            ),
            TemporalItem(
              itemName: '5. Login',
              routePath: LoginScreen.screenRoute,
            ),
            TemporalItem(
              itemName: '6. Registro',
              routePath: LoginRegistryScreen.screenRoute,
            ),
          ],
        ),
      ),
    );
  }
}

class TemporalItem extends StatelessWidget {
  final String itemName;
  final String routePath;

  const TemporalItem({
    Key? key,
    required this.itemName,
    required this.routePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(routePath),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          itemName,
          style: TextStyle(
            color: Colors.black54,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
