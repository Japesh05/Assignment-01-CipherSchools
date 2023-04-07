import 'package:app_cipher/Pages/content.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../const.dart';

class carousel extends StatelessWidget {
  const carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: text.length,
        itemBuilder: (context, index, realIndex) {
          return Padding(
              padding: const EdgeInsets.all(8.0),
              child: content(text: text[index], para: para[index]));
        },
        options: CarouselOptions(
          autoPlay: true,
          height: 300,
        ));
  }
}
