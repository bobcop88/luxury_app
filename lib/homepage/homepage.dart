import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:luxury_app/agenda/agenda_home.dart';
import 'package:luxury_app/flight/flight_page.dart';
import 'package:luxury_app/hotel_page/hotel_page.dart';
import 'package:luxury_app/personal_assistant/personal_assistant_page.dart';
import 'package:luxury_app/transfer/transfer_page.dart';
import 'package:luxury_app/widgets/bottomNav.dart';
import 'package:page_transition/page_transition.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: RadialGradient(
        colors: [Color(0xff1d453c), Color(0xff292728)],
        center: Alignment.center,
        radius: 0.8,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SafeArea(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(41, 39, 39, 0.52),
                        borderRadius: BorderRadius.circular(150)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Image(
                                width: MediaQuery.of(context).size.width,
                                image: const AssetImage(
                                    'assets/home_logo_new.png'),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          'Welcome Mr. Smith',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 60.0),
                          child: Text(
                            'To Your Tailor Made Experience',
                            style: TextStyle(
                              color: Color.fromRGBO(106, 160, 142, 1),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Services',
                              style: TextStyle(
                                  color: Colors.grey.shade200, fontSize: 24),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade200,
                    indent: 200,
                    endIndent: 200,
                    thickness: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          type: PageTransitionType.fade,
                                          child: const FlightPage()));
                                },
                                child: Container(
                                  height: 115,
                                  width: 115,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color.fromRGBO(39, 80, 66, 1),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.airplanemode_active,
                                          size: 55,
                                          color: Colors.grey.shade300,
                                        ),
                                      ],
                                    ),
                                    // Image(
                                    //   image: AssetImage(
                                    //       'assets/icons_home/plane_icon2.png'),
                                    // ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Flight',
                                style: TextStyle(
                                  color: Colors.grey.shade200,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          type: PageTransitionType.fade,
                                          child: const TransferPage()));
                                },
                                child: Container(
                                  height: 115,
                                  width: 115,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color.fromRGBO(39, 80, 66, 1),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.local_taxi,
                                          size: 55,
                                          color: Colors.grey.shade300,
                                        ),
                                      ],
                                    ),
                                    //  Image(
                                    //   image: AssetImage(
                                    //       'assets/icons_home/transfer_icon.png'),
                                    // ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Transfer',
                                style: TextStyle(
                                  color: Colors.grey.shade200,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          type: PageTransitionType.fade,
                                          child: const HotelPage()));
                                },
                                child: Container(
                                  height: 115,
                                  width: 115,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color.fromRGBO(39, 80, 66, 1),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          FontAwesome5.hotel,
                                          size: 40,
                                          color: Colors.grey.shade300,
                                        ),
                                      ],
                                    ),
                                    //  Image(
                                    //   image: AssetImage(
                                    //       'assets/icons_home/hotel_icon1.png'),
                                    // ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Hotel',
                                style: TextStyle(
                                  color: Colors.grey.shade200,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          type: PageTransitionType.fade,
                                          child:
                                              const PersonalAssistantPage()));
                                },
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 110,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: const Color.fromRGBO(
                                              39, 80, 66, 1),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(20.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                FontAwesome5.map_marked_alt,
                                                size: 50,
                                                color: Colors.grey.shade300,
                                              ),
                                            ],
                                          ),
                                          // Image(
                                          //   image: AssetImage(
                                          //       'assets/icons_home/assistant_icon1.png'),
                                          // ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Your Madrid',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.grey.shade200,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          type: PageTransitionType.fade,
                                          child: const AgendaHome()));
                                },
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 110,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: const Color.fromRGBO(
                                              39, 80, 66, 1),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(20.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Iconic.calendar_inv,
                                                size: 50,
                                                color: Colors.grey.shade300,
                                              ),
                                            ],
                                          ),
                                          // Image(
                                          //   image: AssetImage(
                                          //       'assets/icons_home/calendar_icon1.png'),
                                          // ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Agenda',
                                style: TextStyle(
                                  color: Colors.grey.shade200,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
