import 'package:app_cipher/Pages/courses_details.dart';
import 'package:app_cipher/Pages/home.dart';
import 'package:app_cipher/colors.dart';
import 'package:flutter/material.dart';

import 'image_strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primaryColor: Appcolors.primary,
      ),
      home: home()
    );
  }
}
