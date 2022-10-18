// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:firebase_core/firebase_core.dart';
import 'package:udea_students_group/screens/activities_list.screen.dart';
import 'package:udea_students_group/screens/activity_details.screen.dart';
import 'package:udea_students_group/screens/login.screen.dart';
import 'package:udea_students_group/screens/login_registry.screen.dart';
import 'package:udea_students_group/screens/my_activities.screen.dart';
import 'package:udea_students_group/screens/my_profile.screen.dart';
import 'package:udea_students_group/screens/temporal_home_screenscreen.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: {
        '/': (_) => const TemporalHomeScreen(),
        ActivitiesListScreen.screenRoute: (_) => const ActivitiesListScreen(),
        ActivityDetailsScreen.screenRoute: (_) => const ActivityDetailsScreen(),
        LoginRegistryScreen.screenRoute: (_) => const LoginRegistryScreen(),
        LoginScreen.screenRoute: (_) => const LoginScreen(),
        MyActivitiesScreen.screenRoute: (_) => const MyActivitiesScreen(),
        MyProfileScreen.screenRoute: (_) => const MyProfileScreen(),
      },
    );
  }
}
