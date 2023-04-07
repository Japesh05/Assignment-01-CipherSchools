// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:app_cipher/Pages/home.dart';
import 'package:app_cipher/colors.dart';
import 'package:app_cipher/image_strings.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Pages/courses_details.dart';

List pages = [home() , courses_details(),];

List<String> text = [
  'Projects',
  'Mentors',
  'Earn Cipher Points',
  'Q Rated Content',
  'Projects',
  'Mentors',
  'Earn Cipher Points',
  'Q Rated Content'
];
List<String> para = [
  'Get the hands-on experience with real-time projects guided by expert mentors!',
  'Start learning from the mentors coming from giant corporations like Microsoft, Google, Amazon, Paypal, etc!',
  'Earn exclusive rewards by developing your skills with us!',
  'Unlock quality content with our Q-rated content!',
  'Get the hands-on experience with real-time projects guided by expert mentors!',
  'Start learning from the mentors coming from giant corporations like Microsoft, Google, Amazon, Paypal, etc!',
  'Earn exclusive rewards by developing your skills with us!',
  'Unlock quality content with our Q-rated content!',
];

Widget row(data, text, data2, text2) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data + '+',
                style: TextStyle(
                    color: Appcolors.primary,
                    fontSize: 20,
                    fontWeight: FontWeight.w700)),
            const SizedBox(
              height: 5,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 17,
              ),
            )
          ],
        ),
        Column(
          children: [
            Text(data2 + '+',
                style: TextStyle(
                    color: Appcolors.primary,
                    fontSize: 20,
                    fontWeight: FontWeight.w700)),
            const SizedBox(
              height: 5,
            ),
            Text(
              text2,
              style: TextStyle(
                fontSize: 17,
              ),
            )
          ],
        )
      ],
    ),
  );
}

Widget creater_access(context, url, text, detail, for_whom, height, icon) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(12),
    child: Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.width / 1.2,
      decoration: BoxDecoration(
          // color: Colors.red,
          image: DecorationImage(
              image: NetworkImage(url),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.darken))),
      child: Container(
        margin: EdgeInsets.only(top: 40, left: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                color: Appcolors.secondary,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              detail,
              style: TextStyle(
                  color: Appcolors.secondary,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Appcolors.secondary),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          for_whom,
                          style: TextStyle(
                            color: Appcolors.secondary,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          icon,
                          color: Appcolors.secondary,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget card(text, url, topic, review, context) {
  return Align(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.01,
        height: MediaQuery.of(context).size.height,
        color: Appcolors.secondary,
        //* here was the padding
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //* here is the row
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(url),
                    radius: 20,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        text,
                        style: TextStyle(
                            color: Appcolors.deep_primary, fontSize: 16),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        topic,
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(review,
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 15)),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Content',
                            style: TextStyle(
                              fontSize: 20,
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        Image.asset(stars)
                      ],
                    ),
                    Column(
                      children: [
                        Text('Mentors',
                            style: TextStyle(
                              fontSize: 20,
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        Image.asset(stars)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Platform',
                            style: TextStyle(
                              fontSize: 20,
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        Image.asset(stars)
                      ],
                    ),
                    Column(
                      children: [
                        Text('Community',
                            style: TextStyle(
                              fontSize: 20,
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        Image.asset(stars)
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

//* Tab-bar and cards

Widget tab_bar(context) {
  return SizedBox(
    width: double.infinity,
    height: MediaQuery.of(context).size.height / 2,
    child: DefaultTabController(
        length: 5,
        child: Column(
          children: [
            ButtonsTabBar(
                backgroundColor: Color(0xffF3912E),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                buttonMargin: EdgeInsets.only(left: 12, right: 12),
                duration: 100,
                height: 60,
                labelStyle: TextStyle(color: Appcolors.secondary),
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
              ]),
            )
          ],
        )),
  );
}

//* details card

Widget detail_card(
    image, topic, sub_topic, video_no, time, dp, name, post, context) {
  return Align(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: MediaQuery.of(context).size.width / 2.1,
        // height: MediaQuery.of(context).size.width * 0.25,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black,
              offset: Offset(12, 20),
              spreadRadius: 7,
              blurRadius: 5),
        ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(image), fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            topic,
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        color: Color(0xffFEF4EA),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        sub_topic,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "No of Videos : $video_no",
                  ),
                  ////
                  Text(
                    "Course Time : $time",
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(dp),
                          radius: 20,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(name, style: TextStyle(fontSize: 16)),
                            SizedBox(
                              width: 4,
                            ),
                            Text(post,
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                )),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
