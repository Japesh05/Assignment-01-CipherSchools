// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:super_banners/super_banners.dart';

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
        width: 400,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('android/asset/images/logo.png' , width: 30,),
                  Image.asset('android/asset/images/logo.png' , width: 30,),
                ],
              ),
              SizedBox(height: 30,),
              Text(text , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold , color: Colors.white),),
              SizedBox(height: 10,),
              Text(para , style: TextStyle(fontSize: 16 , color: Colors.white60),),
            ],
          ),
        ),
      ),
    );
  }
}