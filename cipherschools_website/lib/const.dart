// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

bool isHover = false;

List<SidebarXItem> sidebar_items = [
  SidebarXItem(icon: Icons.search_sharp),
  SidebarXItem(icon: Icons.home),
  SidebarXItem(icon: Icons.movie_creation_outlined),
  SidebarXItem(icon: Icons.tv_rounded),
  SidebarXItem(icon: Icons.moving_rounded),
  SidebarXItem(icon: Icons.category_outlined),
  SidebarXItem(icon: Icons.add),
  SidebarXItem(icon: Icons.person),
];

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

Widget col(String text, String detail) {
  return Padding(
    padding: const EdgeInsets.all(18.0),
    child: Column(
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 45,
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          detail,
          style: TextStyle(fontSize: 17),
        )
      ],
    ),
  );
}

Widget creater_access(context, url, text, detail, for_whom, height, icon) {
  return Padding(
    padding: const EdgeInsets.only(top: 48.0, bottom: 8),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.width * height,
        decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
                image: NetworkImage(url),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.srcOver))),
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                detail,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.white)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18.0, vertical: 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            for_whom,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            icon,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
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
        width: MediaQuery.of(context).size.width * 0.28,
        height: MediaQuery.of(context).size.width * 0.18,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        text,
                        style:
                            TextStyle(color: Colors.deepOrange, fontSize: 16),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        topic,
                        style: TextStyle(fontSize: 16),
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
              row("Content", "Mentor"),
              SizedBox(
                height: 10,
              ),
              row('Platform', 'Community'),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget row(text1, text2) {
  return Padding(
    padding: const EdgeInsets.only(left: 18.0, right: 28),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text1,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 5,
            ),
            Image.asset('android/asset/images/stars.png'),
          ],
        ),
        SizedBox(
          width: 60,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text2,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 5,
            ),
            Image.asset('android/asset/images/stars.png'),
          ],
        ),
      ],
    ),
  );
}

//* 


Widget detail_card(image, topic, sub_topic, video_no, time, dp, name, post,context) {
  return Align(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.2,
        height: MediaQuery.of(context).size.width * 0.25,
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
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.width * 0.1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            image),
                        fit: BoxFit.cover),
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
                            fontSize: 18, fontWeight: FontWeight.bold),
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
                  Text("No of Videos : $video_no",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  ////
                  Text("Course Time : $time",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              dp),
                          radius: 20,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(name,
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 4,
                            ),
                            Text(post,
                                style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.w500)),
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


Widget Scroll_Down(){
  return Container(
    child: const Column(
      children: [
        Text('Scroll Down'),
        SizedBox(height: 5,),
        Icon(Icons.keyboard_double_arrow_down)
      ],
    ),
  );
}