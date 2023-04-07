import 'package:app_cipher/colors.dart';
import 'package:app_cipher/styles.dart';
import 'package:flutter/material.dart';

class button extends StatelessWidget {
  const button({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(left: w / 7),
      child: ElevatedButton(
          onPressed: () {},
          style: buttonStyle,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Start Learning Now',
                style: TextStyle(color: Appcolors.secondary, fontSize: 18),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.arrow_forward,color: Appcolors.secondary,),
            ],
          )),
    );
  }
}
