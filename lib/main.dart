import 'package:flutter/material.dart';
import 'package:flutter_application_2/modules/home_viev.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI',
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
