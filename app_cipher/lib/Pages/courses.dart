import 'package:app_cipher/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class courses extends StatefulWidget {
  final String brief;
  final String course_name;
  final String name;
  final String url;
  final PageController controller;
  const courses(
      {super.key,
      required this.brief,
      required this.course_name,
      required this.name,
      required this.url,
      required this.controller});

  @override
  State<courses> createState() => _coursesState();
}

class _coursesState extends State<courses> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28.0, bottom: 40),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Wrap(
          direction: Axis.vertical,
          spacing: 13,
          children: [
            Text(
              widget.brief,
              style: TextStyle(
                  color: Appcolors.secondary,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.grey.shade700),
                ),
                child: Text(
                  widget.course_name,
                  style: TextStyle(color: Appcolors.secondary, fontSize: 16),
                )),
            Row(
              children: [
                Image.network(
                  widget.url,
                  height: 20,
                ),
                Text(widget.name,
                    style: TextStyle(
                        color: Appcolors.secondary,
                        fontSize: 16,
                        fontWeight: FontWeight.bold))
              ],
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    color: Appcolors.primary,
                    borderRadius: BorderRadius.circular(6)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 4),
                  child: Text('Watch',
                      style: TextStyle(
                        color: Appcolors.secondary,
                        fontSize: 16,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              // color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                ),
                child: SmoothPageIndicator(
                  controller: widget.controller,
                  count: 3,
                  effect: const ScrollingDotsEffect(
                      activeDotColor: Colors.deepOrangeAccent,
                      dotWidth: 12,
                      dotHeight: 12,
                      strokeWidth: 2,
                      spacing: 10),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
