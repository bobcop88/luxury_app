import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:luxury_app/agenda/day_one.dart';
import 'package:luxury_app/agenda/day_three.dart';
import 'package:luxury_app/agenda/day_two.dart';
import 'package:timelines/timelines.dart';

class AgendaHome extends StatefulWidget {
  const AgendaHome({Key? key}) : super(key: key);

  @override
  State<AgendaHome> createState() => _AgendaHomeState();
}

class _AgendaHomeState extends State<AgendaHome> {
  final PageController pageController = PageController();
  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Agenda',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    pageController.jumpToPage(0);
                    selectedPage = 0;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: selectedPage == 0 ? Colors.green : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                    child: Column(
                      children: [
                        Text(
                          'FEB',
                          style: TextStyle(fontSize: 9),
                        ),
                        Text(
                          '2',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'FRI',
                          style: TextStyle(fontSize: 9),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    pageController.jumpToPage(1);
                    selectedPage = 1;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: selectedPage == 1 ? Colors.green : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                    child: Column(
                      children: [
                        Text(
                          'FEB',
                          style: TextStyle(fontSize: 9),
                        ),
                        Text(
                          '3',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'SAT',
                          style: TextStyle(fontSize: 9),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    pageController.jumpToPage(2);
                    selectedPage = 2;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: selectedPage == 2 ? Colors.green : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                    child: Column(
                      children: [
                        Text(
                          'FEB',
                          style: TextStyle(fontSize: 9),
                        ),
                        Text(
                          '4',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'SUN',
                          style: TextStyle(fontSize: 9),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: PageView(
                    controller: pageController,
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.white),
                        child: DayOne(),
                      ),
                      Container(
                        decoration: BoxDecoration(color: Colors.blue),
                        child: DayTwo(),
                      ),
                      Container(
                        decoration: BoxDecoration(color: Colors.red.shade200),
                        child: DayThree(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
