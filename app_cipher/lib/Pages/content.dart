// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:app_cipher/colors.dart';
import 'package:flutter/material.dart';

class content extends StatelessWidget {
  final String text;
  final String para;
  const content({super.key, required this.text, required this.para});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal : 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('android/asset/images/logo.png' , width: 30,),
                  Spacer(),
                  Image.asset('android/asset/images/logo.png' , width: 30,),
                ],
              ),
              SizedBox(height: 30,),
              Text(text , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold , color: Appcolors.secondary),),
              SizedBox(height: 10,),
              Text(para , style: TextStyle(fontSize: 16 , color: Colors.white60),),
            ],
          ),
        ),
      ),
    );
  }
}