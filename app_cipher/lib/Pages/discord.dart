// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:app_cipher/colors.dart';
import 'package:app_cipher/image_strings.dart';
import 'package:flutter/material.dart';

class discord extends StatefulWidget {
  const discord({super.key});

  @override
  State<discord> createState() => _discordState();
}

class _discordState extends State<discord> {
  @override
  Widget build(BuildContext context) {
    bool isHover_discord = false;
    return Container(
      color: Color(0xff353A42),
      height: MediaQuery.of(context).size.height / 1.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 15),
                  child: Text(
                    "Join Our Community",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, bottom: 10),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "on",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 12),
                      Image.asset(
                        logo_discord,
                        height: 30,
                      ),
                      SizedBox(width: 12),
                      Text("Discord",
                          style: TextStyle(
                              color: Color(0xff5865F2),
                              fontSize: 20,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Come together and make a difference!',
                          style: TextStyle(color: Colors.white)),
                      Text('Connect and grow with our Discord community!',
                          style: TextStyle(color: Colors.white)),
                      Text(
                          'Join our community for an interactive learning experience!',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isHover_discord = value;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: isHover_discord
                            ? Color.fromARGB(255, 71, 81, 188)
                            : Color(0xff5865F2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Join Discord",
                                style: TextStyle(color: Appcolors.secondary)),
                            SizedBox(width: 10),
                            //! white discord image
                            Image.asset(
                              logo_discord,
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0,left:8),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                mobile,
                height: MediaQuery.of(context).size.height/2.8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
