// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

class stacked_images extends StatefulWidget {
  const stacked_images({super.key});

  @override
  State<stacked_images> createState() => _stacked_imagesState();
}

class _stacked_imagesState extends State<stacked_images> {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
        child: Container(
          // color: Colors.red,
          child: Row(
              children: [
          Container(
            width: 90,
            // color: Colors.red,
            child: Stack(
              children: [
                Image.asset(
                  "android/asset/images/logo.png",
                  width: 40,
                ),
                Positioned(
                    left: 25,
                    child: Image.asset(
                      "android/asset/images/logo.png",
                      width: 40,
                    )),
                Positioned(
                    left: 52,
                    child: Image.asset(
                      "android/asset/images/logo.png",
                      width: 40,
                    )),
              ],
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            "50+ \nMentors",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            width: 2,
            height: 70,
            decoration: BoxDecoration(
                color: Colors.grey,
                border: Border(
                    right: BorderSide(
                  color: Colors.grey,
                ))),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            // color: Colors.lightGreenAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "4.8/5",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Image.asset("android/asset/images/stars.png",width: 90,),
                    SizedBox(
                      width: 4,
                    ),
                    Text("Ratings",style: TextStyle( fontSize: 18)),
                  ],
                ),
              ],
            ),
          )
              ],
            ),
        ));
  }
}
