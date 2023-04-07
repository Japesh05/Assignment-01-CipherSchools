// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, camel_case_types

import 'package:flutter/material.dart';

class footer_cont extends StatefulWidget {
  final String text;
  const footer_cont({super.key, required this.text});

  @override
  State<footer_cont> createState() => _footer_contState();
}

class _footer_contState extends State<footer_cont> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onHover: (value) {
          setState(() {
            isHover = value;
            print("Hovered!");
          });
        },
        child: Container(
          child: Row(
            children: [
              Icon(Icons.arrow_forward,
                  color: isHover ? Color(0xffF3912E) : Colors.black),
              SizedBox(
                width: 8,
              ),
              Text(
                widget.text,
                style: TextStyle(
                    color: isHover ? Color(0xffF3912E) : Colors.grey.shade700,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
      ),
    );
  }
}
