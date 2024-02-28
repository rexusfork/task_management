import 'package:flutter/material.dart';
import 'package:latihan_golang_resfull_api/screen/Add_task_screen.dart';
import 'package:latihan_golang_resfull_api/screen/All_task_screen.dart';
import 'package:latihan_golang_resfull_api/screen/home_screen.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

