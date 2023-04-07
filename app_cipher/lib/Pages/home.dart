// ignore_for_file: avoid_unnecessary_containers, camel_case_types, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:app_cipher/Pages/Stacked_images.dart';
import 'package:app_cipher/Pages/Welcome_message.dart';
import 'package:app_cipher/Pages/button.dart';
import 'package:app_cipher/Pages/carousel.dart';
import 'package:app_cipher/Pages/courses_details.dart';
import 'package:app_cipher/Pages/discord.dart';
import 'package:app_cipher/Pages/feedback.dart';
import 'package:app_cipher/Pages/footer.dart';
import 'package:app_cipher/colors.dart';
import 'package:app_cipher/const.dart';
import 'package:app_cipher/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
            padding: EdgeInsets.only(right: 8.0),
            child: Builder(builder: (context) {
              return IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            }),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Container(
              margin: EdgeInsets.only(top: w / 7, left: 5, right: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  welcome_message(),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: w / 12),
                    child: Text(
                      "Start learning by best creators for",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  stacked_images(),
                  SizedBox(
                    height: 40,
                  ),
                  button(),
                  SizedBox(
                    height: 40,
                  ),
                  carousel(),
                  SizedBox(
                    height: 40,
                  ),
                  row('15K', 'Students', '10K', 'Certificates Delivered'),
                  SizedBox(
                    height: 10,
                  ),
                  row('450K', 'Streamed Minutes', '12TB',
                      'Content Streamed in \n        last 60 days'),
                  SizedBox(
                    height: 10,
                  ),
                  row('50', 'Creators', '110', 'Programs Available'),
                  SizedBox(
                    height: 40,
                  ),
                  creater_access(
                      context,
                      'https://images.pexels.com/photos/3807755/pexels-photo-3807755.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      'Unlock your learning potential with CipherSchools',
                      'Best platform for the\nstudents',
                      'For Students',
                      0.24,
                      Icons.school_sharp),
                  SizedBox(
                    height: 15,
                  ),
                  creater_access(
                      context,
                      'https://images.pexels.com/photos/3182792/pexels-photo-3182792.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      'Empowering students to open their minds to utmost knowledge',
                      'Be the mentor you never\nhad',
                      'For Creators',
                      0.26,
                      Icons.personal_video_outlined),
                  SizedBox(
                    height: 15,
                  ),
                  feedback(
                    context_: context,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Center(
                        child: Text(
                      "Best are Here",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  tab_bar(context),
                  SizedBox(
                    height: 30,
                  ),
                  discord(),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      color: Appcolors.secondary,
                      width: double.infinity,
                      // height: MediaQuery.of(context).size.width * 0.25,
                      child: Container(
                        // height: MediaQuery.of(context).size.width * 0.21,
                        // color:Colors.red,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        height: 25,
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 28),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                color: Colors.grey.shade200,
                                width: double.infinity,
                                height: MediaQuery.of(context).size.height / 7,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 28.0, vertical: 20),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.copyright),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text('2020 CipherSchools'),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Icon(
                                            Icons.circle,
                                            size: 8,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text('All Rights Reserved'),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        // mainAxisSize: MainAxisSize.min,
                                        children: [
                                          FaIcon(FontAwesomeIcons.discord),
                                          FaIcon(FontAwesomeIcons.instagram),
                                          FaIcon(FontAwesomeIcons.linkedin),
                                          FaIcon(FontAwesomeIcons.github),
                                          FaIcon(FontAwesomeIcons.facebook),
                                          FaIcon(FontAwesomeIcons.twitter),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                      )),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15, top: 15),
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
                              if (this.mounted) {
                                setState(() {
                                  index = value;
                                });
                              }

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
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Appcolors.secondary,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Appcolors.secondary),
                accountName: Text(
                  "Name",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("example@gmail.com"),
                currentAccountPictureSize: Size.square(40),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Appcolors.primary,
                  child: Text(
                    "X",
                    style: TextStyle(fontSize: 20.0, color: Colors.blue),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' Home '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' Courses '),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => courses_details(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Go Premium '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Saved Videos '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
