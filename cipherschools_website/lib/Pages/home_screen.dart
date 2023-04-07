// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_local_variable, sized_box_for_whitespace, sort_child_properties_last

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cipherschools/Pages/Navbar.dart';
import 'package:cipherschools/Pages/content.dart';
import 'package:cipherschools/Pages/footer_cont.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../const.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  bool isHover = false;
  bool isHover2 = false;
  bool isHover_discord = false;
  int pageIndex = 0;
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    double padd = MediaQuery.of(context).size.width * 0.1600;
    double width = MediaQuery.of(context).size.width * 0.5;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Navbar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // color: Colors.blue,
                  width: width,
                  height: 600,
                  child: Padding(
                    padding: const EdgeInsets.all(48.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Welcome to",
                              style: TextStyle(
                                fontSize: 55,
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              "the Future",
                              style: TextStyle(
                                  fontSize: 55,
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "of Learning!",
                          style: TextStyle(
                            fontSize: 55,
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Text(
                          "Start Learning by best Creators",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IntrinsicHeight(
                            child: Row(
                              children: [
                                Container(
                                  width: 150,
                                  child: Stack(
                                    children: [
                                      Image.asset(
                                        "android/asset/images/logo.png",
                                        width: 60,
                                      ),
                                      Positioned(
                                          left: 45,
                                          child: Image.asset(
                                            "android/asset/images/logo.png",
                                            width: 60,
                                          )),
                                      Positioned(
                                          left: 90,
                                          child: Image.asset(
                                            "android/asset/images/logo.png",
                                            width: 60,
                                          )),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Text(
                                  "50+ \nMentors",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Container(
                                  width: 2,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      border: Border(
                                          right: BorderSide(
                                        color: Colors.grey,
                                      ))),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Container(
                                  // color: Colors.red,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "4.8/5",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                              "android/asset/images/stars.png"),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text("Ratings"),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          onHover: (value) {
                            setState(() {
                              isHover = value;
                            });
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              color: isHover
                                  ? Colors.deepOrangeAccent.shade200
                                  : Colors.deepOrangeAccent.shade400,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Start Learning Now',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      size: 24.0,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Stack(
                    children: [
                      // Container(
                      //   width: 6,
                      //   height: 500,
                      //   decoration: BoxDecoration(
                      //       // color: Colors.green
                      //       boxShadow: [
                      //         BoxShadow(
                      //             color: Colors.black,
                      //             offset: Offset(6, 8),
                      //             spreadRadius: 15,
                      //             blurRadius: 8)
                      //       ]),
                      // ),
                      // Positioned(
                      //   left: width - width * 0.25 - 3,
                      //   child: Container(
                      //     width: 6,
                      //     height: 500,
                      //     decoration: BoxDecoration(
                      //         // color: Colors.blue,
                      //         boxShadow: [
                      //           BoxShadow(
                      //               color: Colors.black,
                      //               offset: Offset(-4, 4),
                      //               spreadRadius: 15,
                      //               blurRadius: 8)
                      //         ]),
                      //   ),
                      // ),
                      Container(
                          width: width - width * 0.25,
                          height: 500,
                          // color: Colors.lightGreenAccent,
                          child: Center(
                            child: CarouselSlider.builder(
                                itemCount: text.length,
                                itemBuilder: (context, index, realIndex) {
                                  return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: content(
                                          text: text[index],
                                          para: para[index]));
                                },
                                options: CarouselOptions(
                                  autoPlay: true,
                                  height: 300,
                                )),
                          )),
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                Text("Scroll Down",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                Icon(Icons.keyboard_double_arrow_down)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                col("15K+", 'Students'),
                col("10K+", 'Certificates Delivered'),
                col("450K+", 'Streamed minutes'),
                col("12TB+", 'Content streamed in last 60 Days'),
                col("50+", 'Mentors'),
                col("110+", 'Programs'),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  creater_access(
                      context,
                      'https://images.pexels.com/photos/3807755/pexels-photo-3807755.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      'Unlock your learning potential with CipherSchools',
                      'Best platform for the\nstudents',
                      'For Students',
                      0.24,
                      Icons.school_sharp),
                  creater_access(
                      context,
                      'https://images.pexels.com/photos/3182792/pexels-photo-3182792.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      'Empowering students to open their minds to utmost knowledge',
                      'Be the mentor you never\nhad',
                      'For Creators',
                      0.26,
                      Icons.personal_video_outlined),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Color(0xff36454F),
              height: MediaQuery.of(context).size.width * 0.40,
              child: Padding(
                padding: const EdgeInsets.only(top: 28.0, left: 18, right: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Text(
                        "Students LIVE Feedback",
                        style:
                            TextStyle(color: Colors.deepOrange, fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Text(
                        "We love to read them",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Text(
                        "feedback is a significant component of our success because it inspires us to get better and meet\nthe expectations of our students.",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: double.infinity,
                      // color: Colors.red,
                      height: MediaQuery.of(context).size.width * 0.18,
                      child: PageView(
                        controller: _controller,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              card(
                                  'Awanit Singh',
                                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                  'HyperText Markup Language (HTML)',
                                  'Thank you for giving me these types of videos.\nThat help to understand HTML and CSS',
                                  context),
                              card(
                                  'Awanit Singh',
                                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                  'HyperText Markup Language (HTML)',
                                  'Thank you for giving me these types of videos.\nThat help to understand HTML and CSS',
                                  context),
                              card(
                                  'Awanit Singh',
                                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                  'HyperText Markup Language (HTML)',
                                  'Thank you for giving me these types of videos.\nThat help to understand HTML and CSS',
                                  context),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              card(
                                  'Awanit Singh',
                                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                  'HyperText Markup Language (HTML)',
                                  'Thank you for giving me these types of videos.\nThat help to understand HTML and CSS',
                                  context),
                              card(
                                  'Awanit Singh',
                                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                  'HyperText Markup Language (HTML)',
                                  'Thank you for giving me these types of videos.\nThat help to understand HTML and CSS',
                                  context),
                              card(
                                  'Awanit Singh',
                                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                  'HyperText Markup Language (HTML)',
                                  'Thank you for giving me these types of videos.\nThat help to understand HTML and CSS',
                                  context),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              card(
                                  'Awanit Singh',
                                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                  'HyperText Markup Language (HTML)',
                                  'Thank you for giving me these types of videos.\nThat help to understand HTML and CSS',
                                  context),
                              card(
                                  'Awanit Singh',
                                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                  'HyperText Markup Language (HTML)',
                                  'Thank you for giving me these types of videos.\nThat help to understand HTML and CSS',
                                  context),
                              card(
                                  'Awanit Singh',
                                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                  'HyperText Markup Language (HTML)',
                                  'Thank you for giving me these types of videos.\nThat help to understand HTML and CSS',
                                  context),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0, left: 55),
                      child: SmoothPageIndicator(
                        controller: _controller,
                        count: 4,
                        effect: ExpandingDotsEffect(
                            dotWidth: 18,
                            activeDotColor: Colors.deepOrangeAccent,
                            strokeWidth: 2,
                            spacing: 10),
                      ),
                    )
                  ],
                ),
              ),
            ),
            //* Creators From

            //* Bests are Here
            SizedBox(
              width: double.infinity,
              height: 500,
              child: DefaultTabController(
                  length: 5,
                  child: Column(
                    children: [
                      ButtonsTabBar(
                          backgroundColor: Color(0xffF3912E),
                          contentPadding: EdgeInsets.all(22),
                          duration: 100,
                          height: 70,
                          labelStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                          tabs: [
                            Tab(text: "Trending"),
                            Tab(text: "Web Developement"),
                            Tab(text: "App Developement"),
                            Tab(text: "Game Developement"),
                            Tab(text: "Data Structures"),
                          ]),
                      Expanded(
                        child: TabBarView(children: [
                          //? detail card

                          Row(
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
                          Row(
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
                          Row(
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
                          Row(
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
                          Row(
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
                        ]),
                      )
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Container(
                color: Color(0xff353A42),
                height: MediaQuery.of(context).size.width * 0.3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Image.asset(
                          'android/asset/images/mobile.png',
                          height: MediaQuery.of(context).size.width * 0.47 -
                              MediaQuery.of(context).size.width * 0.20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(90.0),
                        child: Container(
                          // color: Colors.red,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Join Our Community",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "on",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 12),
                                  Image.asset(
                                    'android/asset/images/discord.png',
                                    height: 30,
                                  ),
                                  SizedBox(width: 12),
                                  Text("Discord",
                                      style: TextStyle(
                                          color: Color(0xff5865F2),
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              SizedBox(height: 40),
                              Text('Come together and make a difference!',
                                  style: TextStyle(color: Colors.white)),
                              Text(
                                  'Connect and grow with our Discord community!',
                                  style: TextStyle(color: Colors.white)),
                              Text(
                                  'Join our community for an interactive learning experience!',
                                  style: TextStyle(color: Colors.white)),
                              SizedBox(
                                height: 30,
                              ),
                              InkWell(
                                onTap: () {},
                                onHover: (value) {
                                  setState(() {
                                    isHover_discord = value;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: isHover_discord
                                        ? Color.fromARGB(255, 71, 81, 188)
                                        : Color(0xff5865F2),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      children: [
                                        Text("Join Discord",
                                            style:
                                                TextStyle(color: Colors.white)),
                                        SizedBox(width: 10),
                                        //! white discord image
                                        Image.asset(
                                          'android/asset/images/discord.png',
                                          height: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
                color: Colors.white,
                width: double.infinity,
                height: MediaQuery.of(context).size.width * 0.25,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: MediaQuery.of(context).size.width * 0.21,
                    // color:Colors.red,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                          'android/asset/images/logo.png',
                                          height: 45),
                                      Text('Cipher Schools'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                      'Cipherschools is a bootstrapped educational video streaming platform in\nIndia that is connecting passionate unskilled students to skilled Industry\nexperts to fulfill their career dreams.'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: Row(children: [
                                      Icon(Icons.mail),
                                      SizedBox(width: 8),
                                      Text("support@cipherschools.com"),
                                    ]),
                                  )
                                ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Popular Courses',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                footer_cont(text: 'Cipher Schools'),
                                footer_cont(text: 'Coders Troops'),
                                footer_cont(text: 'Harshit Vashisth'),
                                footer_cont(text: 'Ayushi Sharma'),
                                footer_cont(text: 'Danish Shaikh'),
                                footer_cont(text: 'Shruti Codes'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Popular Courses',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                footer_cont(text: 'Cipher Schools'),
                                footer_cont(text: 'Coders Troops'),
                                footer_cont(text: 'Harshit Vashisth'),
                                footer_cont(text: 'Ayushi Sharma'),
                                footer_cont(text: 'Danish Shaikh'),
                                footer_cont(text: 'Shruti Codes'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Popular Courses',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                footer_cont(text: 'Cipher Schools'),
                                footer_cont(text: 'Coders Troops'),
                                footer_cont(text: 'Harshit Vashisth'),
                                footer_cont(text: 'Ayushi Sharma'),
                                footer_cont(text: 'Danish Shaikh'),
                                footer_cont(text: 'Shruti Codes'),
                              ],
                            ),
                          ),
                        ]),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
