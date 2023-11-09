import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrm_web/controllers/dataController.dart';
import 'package:hrm_web/screens/HomePage.dart';
import 'package:hrm_web/screens/LoginSignup/login.dart';
import 'package:hrm_web/views/EmployeesScreen.dart';
import 'package:hrm_web/views/dashboard.dart';
import 'package:hrm_web/views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final DataController dataController = Get.put(DataController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HRM',
      theme: ThemeData(),
      home: const Home_page(),
    );
  }
}
