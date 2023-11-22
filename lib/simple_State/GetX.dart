// View 역할
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'SampleScreen.dart';
import 'samplecontroller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    // MaterialApp 을 GetMaterialApp 으로 변경
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SampleScreen(),
    );
  }
}