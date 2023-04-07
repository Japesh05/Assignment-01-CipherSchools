import 'package:cipherschools/AppScrollBehaviour.dart';
import 'package:cipherschools/Pages/colors.dart';
import 'package:cipherschools/Pages/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: AppScrollBehavior(),
      title: 'Cipher Schools',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primaryColor: Appcolors.primary,
        useMaterial3: true,
      ),
      home: const home_screen(),
    );
  }
}
