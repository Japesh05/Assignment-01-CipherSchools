// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, camel_case_types

import 'dart:html';

import 'package:app_cipher/Pages/carousel.dart';
import 'package:app_cipher/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../colors.dart';
import '../const.dart';
import '../image_strings.dart';
import 'courses.dart';

class courses_details extends StatefulWidget {
  const courses_details({
    super.key,
  });


  @override
  State<courses_details> createState() => _coursesState();
}

class _coursesState extends State<courses_details> {
  final _controller = PageController();
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolors.secondary,
        // toolbarHeight: 60,
        elevation: 8,
        leading: Container(
            margin: EdgeInsets.only(left: 8),
            child: Image.asset('android/asset/images/logo.png')),
        title: Text(
          'Cipher Schools',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FaIcon(FontAwesomeIcons.compass),
                  Text("Browse"),
                  Icon(Icons.arrow_drop_down_sharp),
                  Icon(Icons.notifications),
                  Icon(Icons.search),
                ],
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 2.5,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                          image: NetworkImage(
                            'https://images.pexels.com/photos/2653362/pexels-photo-2653362.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                          ),
                          fit: BoxFit.cover),
                    ),
                    child: PageView(
                      controller: _controller,
                      children: [
                        courses(
                            brief: 'Full Stack \nWeb Developement \nusing MERN',
                            course_name: 'Web Developement',
                            name: 'Cipher Schools',
                            url: logo,
                            controller: _controller),
                        courses(
                            brief: 'Full Stack \nWeb Developement \nusing MERN',
                            course_name: 'Web Developement',
                            name: 'Cipher Schools',
                            url: logo,
                            controller: _controller),
                        courses(
                            brief: 'Full Stack \nWeb Developement \nusing MERN',
                            course_name: 'Web Developement',
                            name: 'Cipher Schools',
                            url: logo,
                            controller: _controller)
                      ],
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Text(
                      'Recommended Courses',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(6)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 4),
                          child: Row(
                            children: [
                              Text('Popular',
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                              Icon(Icons.arrow_drop_down),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    detail_card(
                        'https://images.pexels.com/photos/11035380/pexels-photo-11035380.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        'Web Developement',
                        'JavaScript (JS)',
                        '36',
                        '6.1 hours',
                        'https://d3gmywgj71m21w.cloudfront.net/5cf2479a2a7995f728c5c378ac709d70',
                        'Shruti Codes',
                        'Instructor',
                        context),
                    SizedBox(width: 8),
                    detail_card(
                        'https://images.pexels.com/photos/11035380/pexels-photo-11035380.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        'Web Developement',
                        'JavaScript (JS)',
                        '36',
                        '6.1 hours',
                        'https://d3gmywgj71m21w.cloudfront.net/5cf2479a2a7995f728c5c378ac709d70',
                        'Shruti Codes',
                        'Instructor',
                        context),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 12, top: 12),
                  child: Text('Latest Videos',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold))),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    detail_card(
                        'https://images.pexels.com/photos/11035380/pexels-photo-11035380.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        'Web Developement',
                        'JavaScript (JS)',
                        '36',
                        '6.1 hours',
                        'https://d3gmywgj71m21w.cloudfront.net/5cf2479a2a7995f728c5c378ac709d70',
                        'Shruti Codes',
                        'Instructor',
                        context),
                    SizedBox(width: 8),
                    detail_card(
                        'https://images.pexels.com/photos/11035380/pexels-photo-11035380.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        'Web Developement',
                        'JavaScript (JS)',
                        '36',
                        '6.1 hours',
                        'https://d3gmywgj71m21w.cloudfront.net/5cf2479a2a7995f728c5c378ac709d70',
                        'Shruti Codes',
                        'Instructor',
                        context),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 12, top: 12),
                  child: Text('All Courses',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold))),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    detail_card(
                        'https://images.pexels.com/photos/11035380/pexels-photo-11035380.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        'Web Developement',
                        'JavaScript (JS)',
                        '36',
                        '6.1 hours',
                        'https://d3gmywgj71m21w.cloudfront.net/5cf2479a2a7995f728c5c378ac709d70',
                        'Shruti Codes',
                        'Instructor',
                        context),
                    SizedBox(width: 8),
                    detail_card(
                        'https://images.pexels.com/photos/11035380/pexels-photo-11035380.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        'Web Developement',
                        'JavaScript (JS)',
                        '36',
                        '6.1 hours',
                        'https://d3gmywgj71m21w.cloudfront.net/5cf2479a2a7995f728c5c378ac709d70',
                        'Shruti Codes',
                        'Instructor',
                        context),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    color: Colors.grey.shade500,
                    child: GNav(
                        backgroundColor: Appcolors.secondary,
                        gap: 8,
                        padding: EdgeInsets.all(15),
                        activeColor: Appcolors.primary,
                        selectedIndex: index,
                        onTabChange: (value) {
                          setState(() {
                            index = value;
                          });
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => pages[value],
                              ));
                        },
                        tabs: [
                          GButton(
                            icon: Icons.home,
                            haptic: true,
                            text: 'Home',
                          ),
                          GButton(
                            icon: FontAwesomeIcons.book,
                            haptic: true,
                            text: 'Courses',
                          ),
                          GButton(
                            icon: FontAwesomeIcons.compass,
                            haptic: true,
                            text: 'Trending',
                          ),
                          GButton(
                            icon: Icons.person,
                            haptic: true,
                            text: 'Profile',
                          )
                        ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
