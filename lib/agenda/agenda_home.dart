import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:luxury_app/agenda/day_one.dart';
import 'package:luxury_app/agenda/day_three.dart';
import 'package:luxury_app/agenda/day_two.dart';
import 'package:luxury_app/widgets/bottomNav.dart';
import 'package:page_transition/page_transition.dart';
import 'package:timelines/timelines.dart';

import '../homepage/homepage.dart';

class AgendaHome extends StatefulWidget {
  const AgendaHome({Key? key}) : super(key: key);

  @override
  State<AgendaHome> createState() => _AgendaHomeState();
}

class _AgendaHomeState extends State<AgendaHome>
    with SingleTickerProviderStateMixin {
  late TabController agendaTabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    agendaTabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [Color(0xff1d453c), Color(0xff292728)],
          center: Alignment.center,
          radius: 0.8,
        ),
        image: DecorationImage(
            fit: BoxFit.cover,
            opacity: 0.05,
            image: AssetImage('assets/agenda_background.png')),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              // Row(
              //   children: [
              //     IconButton(
              //       icon: const Icon(
              //         Icons.arrow_back,
              //         color: Colors.white,
              //       ),
              //       onPressed: () {
              //         Navigator.push(
              //             context,
              //             PageTransition(
              //                 type: PageTransitionType.fade,
              //                 child: const Homepage()));
              //       },
              //     ),
              //   ],
              // ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          '2 February',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Today',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              DefaultTabController(
                length: 3,
                initialIndex: 1,
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TabBar(
                        labelPadding:
                            const EdgeInsets.symmetric(horizontal: 35),
                        indicatorPadding:
                            const EdgeInsets.symmetric(horizontal: 25),
                        // indicatorSize: TabBarIndicatorSize(),
                        isScrollable: true,
                        controller: agendaTabController,
                        indicatorColor: const Color.fromRGBO(0, 138, 69, 1),
                        labelStyle:
                            const TextStyle(fontWeight: FontWeight.bold),
                        unselectedLabelStyle:
                            const TextStyle(fontWeight: FontWeight.normal),
                        tabs: [
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 8.0,
                            ),
                            child: Column(
                              children: const [
                                Text(
                                  'Fri',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                                Text(
                                  '2',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Column(
                              children: const [
                                Text(
                                  'Sat',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                                Text(
                                  '3',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Column(
                              children: const [
                                Text(
                                  'Sun',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                                Text(
                                  '4',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ])),
              ),

              Expanded(
                child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: agendaTabController,
                    children: const [DayOne(), DayTwo(), DayThree()]),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
