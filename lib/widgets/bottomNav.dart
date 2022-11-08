import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:luxury_app/homepage/homepage.dart';
import 'package:page_transition/page_transition.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          color: Color.fromRGBO(39, 80, 66, 0.35),
          borderRadius: BorderRadius.only(
              topLeft: Radius.elliptical(150, 40),
              topRight: Radius.elliptical(150, 40))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade, child: Homepage()));
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.home_outlined,
                      color: Colors.grey.shade200,
                      size: 35,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.grey.shade200,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Icon(
                    FontAwesome.chat_empty,
                    color: Colors.grey.shade200,
                    size: 35,
                  ),
                  Text(
                    'Help',
                    style: TextStyle(
                      color: Colors.grey.shade200,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
