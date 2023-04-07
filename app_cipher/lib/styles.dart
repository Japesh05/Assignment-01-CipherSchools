import 'package:app_cipher/colors.dart';
import 'package:flutter/material.dart';

ButtonStyle buttonStyle = ButtonStyle(
  elevation: MaterialStateProperty.all(0),
  backgroundColor: MaterialStateProperty.all(Appcolors.primary),
  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
  minimumSize: MaterialStateProperty.all(Size(15, 55)),
);