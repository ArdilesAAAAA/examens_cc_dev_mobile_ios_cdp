import 'package:flutter/material.dart';
import 'package:studlink_app/screens/Login_screen.dart';
import 'package:studlink_app/screens/acceuil_screen.dart';
import 'package:studlink_app/screens/home_loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeLoading(),
      debugShowCheckedModeBanner: false,
    );
  }
}
