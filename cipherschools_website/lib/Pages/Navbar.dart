// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, file_names

import 'package:cipherschools/Pages/colors.dart';
import 'package:cipherschools/Pages/styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../const.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => Mobile_Navbar(),
      desktop: (context) => Desktop_Navbar(),
    );
  }

  Widget Mobile_Navbar() {
    return Container(
      decoration: BoxDecoration(boxShadow: [BoxShadow(blurRadius: 15)]),
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Image.asset(
                  'android/asset/images/logo.png',
                  height: 35,
                ),
                SizedBox(
                  width: 2,
                ),
                Text('Cipher Schools',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Icon(Icons.menu),
        ],
      ),
    );
  }

  Widget Desktop_Navbar() {
    return Container(
      decoration:
          BoxDecoration(color: Appcolors.secondary, boxShadow: [BoxShadow()]),
      margin: EdgeInsets.only(left: 20),
      height: 85,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Image.asset(
                  'android/asset/images/logo.png',
                  height: 35,
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  'Cipher Schools',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Row(
            children: [
              navbutton('Home'),
              navbutton('Creator Access'),
              navbutton('Live Reviews'),
              navbutton('Community'),
            ],
          ),
          Container(
            child: ElevatedButton(
                style: buttonStyle,
                onPressed: () {},
                onHover: (value) {
                  setState(() {
                    isHover = value;
                  });
                },
                child: Text(
                  'Explore Courses',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                )),
          ),
        ],
      ),
    );
  }

  Widget navbutton(text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Appcolors.secondary),
              elevation: MaterialStateProperty.all(0)),
          child: Text(
            text,
            style: TextStyle(color: Colors.black, fontSize: 20),
          )),
    );
  }
}
