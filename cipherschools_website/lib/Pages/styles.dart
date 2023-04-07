
// ignore_for_file: prefer_const_constructors

import 'package:cipherschools/Pages/colors.dart';
import 'package:flutter/material.dart';
import '../const.dart';

ButtonStyle buttonStyle = ButtonStyle(
  elevation: MaterialStateProperty.all(0),
  backgroundColor: MaterialStateProperty.all(isHover ? Appcolors.onhover : Appcolors.primary),
  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
  foregroundColor: MaterialStateProperty.all(Appcolors.secondary),
  minimumSize: MaterialStateProperty.all(Size(15, 55)),
);