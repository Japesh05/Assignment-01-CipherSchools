import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../const.dart';

class feedback extends StatefulWidget {
  final BuildContext context_;
  const feedback({super.key, required this.context_});

  @override
  State<feedback> createState() => _feedbackState();
}

class _feedbackState extends State<feedback> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff36454F),
      height: MediaQuery.of(widget.context_).size.height / 1.3,
      child: Padding(
        padding: const EdgeInsets.only(top: 28.0, left: 18, right: 18),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  "Students LIVE Feedback",
                  style: TextStyle(color: Colors.deepOrange, fontSize: 17),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
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
                padding: const EdgeInsets.only(left: 5.0),
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
                height: MediaQuery.of(context).size.height / 2.7,
                child: PageView(
                  controller: _controller,
                  children: [
                    card(
                        'Awanit Singh',
                        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        'HyperText Markup Language (HTML)',
                        'Thank you for giving me these types of videos.\nThat help to understand HTML and CSS',
                        widget.context_),
                    card(
                        'Awanit Singh',
                        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        'HyperText Markup Language (HTML)',
                        'Thank you for giving me these types of videos.\nThat help to understand HTML and CSS',
                        widget.context_),
                    card(
                        'Awanit Singh',
                        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        'HyperText Markup Language (HTML)',
                        'Thank you for giving me these types of videos.\nThat help to understand HTML and CSS',
                        widget.context_),
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
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 15.0,
                  left: 5,
                ),
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 8,
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
    );
  }
}
