// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../colors.dart';

class welcome_message extends StatelessWidget {
  const welcome_message({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(left:w/9),
      child: RichText(
          softWrap: false,
          text: TextSpan(
              text: "Welcome to",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Appcolors.black,
                  wordSpacing: 1.5,
                  height: 1.5,
                  letterSpacing: 1.2),
              children: [
                TextSpan(
                  text: " the \nFuture",
                  style: TextStyle(
                      color: Appcolors.primary,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 1.5,
                      height: 1.5,
                      letterSpacing: 1.2),
                ),
                TextSpan(
                    text: " of Learning!",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Appcolors.black,
                        wordSpacing: 1.5,
                        
                        letterSpacing: 1.2)),
              ])),
    );
  }
}
