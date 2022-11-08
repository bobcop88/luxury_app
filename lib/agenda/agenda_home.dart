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
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xff5bb85f), Color(0xff464646)],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
        image: const DecorationImage(
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
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          '2 February',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Today',
                          style: TextStyle(
                              fontSize: 24,
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
                            const EdgeInsets.symmetric(horizontal: 25),
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

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     GestureDetector(
              //       onTap: () {
              //         setState(() {
              //           pageController.jumpToPage(0);
              //           selectedPage = 0;
              //         });
              //       },
              //       child: Container(
              //         decoration: BoxDecoration(
              //           border: selectedPage == 0
              //               ? Border(
              //                   bottom: BorderSide(
              //                       color: Color.fromRGBO(125, 196, 174, 1)))
              //               : Border(bottom: BorderSide.none),
              //         ),
              //         child: Padding(
              //           padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              //           child: Column(
              //             children: const [
              //               Text(
              //                 'Fri',
              //                 style:
              //                     TextStyle(fontSize: 16, color: Colors.white),
              //               ),
              //               Text(
              //                 '2',
              //                 style: TextStyle(
              //                     fontSize: 24,
              //                     fontWeight: FontWeight.bold,
              //                     color: Colors.white),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 15,
              //     ),
              //     GestureDetector(
              //       onTap: () {
              //         setState(() {
              //           pageController.jumpToPage(1);
              //           selectedPage = 1;
              //         });
              //       },
              //       child: Container(
              //         decoration: BoxDecoration(
              //           border: selectedPage == 1
              //               ? Border(
              //                   bottom: BorderSide(
              //                       color: Color.fromRGBO(125, 196, 174, 1)))
              //               : Border(bottom: BorderSide.none),
              //         ),
              //         child: Padding(
              //           padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              //           child: Column(
              //             children: const [
              //               Text(
              //                 'Sat',
              //                 style:
              //                     TextStyle(fontSize: 16, color: Colors.white),
              //               ),
              //               Text(
              //                 '3',
              //                 style: TextStyle(
              //                     fontSize: 24,
              //                     fontWeight: FontWeight.bold,
              //                     color: Colors.white),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 15,
              //     ),
              //     GestureDetector(
              //       onTap: () {
              //         setState(() {
              //           pageController.jumpToPage(2);
              //           selectedPage = 2;
              //         });
              //       },
              //       child: Container(
              //         decoration: BoxDecoration(
              //           color: selectedPage == 2 ? Colors.green : Colors.white,
              //           borderRadius: BorderRadius.circular(10),
              //         ),
              //         child: Padding(
              //           padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              //           child: Column(
              //             children: const [
              //               Text(
              //                 'FEB',
              //                 style: TextStyle(fontSize: 9),
              //               ),
              //               Text(
              //                 '4',
              //                 style: TextStyle(
              //                     fontSize: 20, fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 'SUN',
              //                 style: TextStyle(fontSize: 9),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // const SizedBox(
              //   height: 25,
              // ),
              // Expanded(
              //   child: Row(
              //     children: [
              //       Expanded(
              //         child: PageView(
              //           controller: pageController,
              //           children: [
              //             Container(
              //               decoration: BoxDecoration(color: Colors.white),
              //               child: DayOne(),
              //             ),
              //             Container(
              //               decoration: BoxDecoration(color: Colors.blue),
              //               child: DayTwo(),
              //             ),
              //             Container(
              //               decoration:
              //                   BoxDecoration(color: Colors.red.shade200),
              //               child: DayThree(),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
