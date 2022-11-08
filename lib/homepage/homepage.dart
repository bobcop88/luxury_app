import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
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
      decoration: BoxDecoration(
          gradient: RadialGradient(
        colors: [Color(0xff1d453c), Color(0xff292728)],
        center: Alignment.center,
        radius: 0.8,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(120),
                  )),
              child: SafeArea(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Image(
                            width: MediaQuery.of(context).size.width,
                            image:
                                const AssetImage('assets/EMERALD_correct.gif'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color.fromRGBO(33, 33, 33, 1),
                              boxShadow: [
                                const BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(1, 1),
                                    blurRadius: 2,
                                    spreadRadius: 1),
                                BoxShadow(
                                    color: Colors.grey.shade800,
                                    offset: const Offset(-1, -1),
                                    blurRadius: 2,
                                    spreadRadius: 1),
                              ]),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Welcome Mr. Smith',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Stack(children: [
                Container(
                  decoration: BoxDecoration(color: Colors.grey.shade900),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(51, 201, 159, 1),
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(120))),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
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
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        color: const Color.fromRGBO(
                                            51, 201, 159, 1),
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 37, 148, 116),
                                              offset: Offset(1, 1),
                                              blurRadius: 2,
                                              spreadRadius: 1),
                                          BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 59, 233, 184),
                                              offset: Offset(-1, -1),
                                              blurRadius: 2,
                                              spreadRadius: 1),
                                        ]),
                                    child: const Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Image(
                                        image: AssetImage(
                                            'assets/trip/plane_icon.png'),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Flight',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
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
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        color: const Color.fromRGBO(
                                            51, 201, 159, 1),
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 37, 148, 116),
                                              offset: Offset(1, 1),
                                              blurRadius: 2,
                                              spreadRadius: 1),
                                          BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 59, 233, 184),
                                              offset: Offset(-1, -1),
                                              blurRadius: 2,
                                              spreadRadius: 1),
                                        ]),
                                    child: const Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Image(
                                        image: AssetImage(
                                            'assets/trip/texi_icon.png'),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Transfer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
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
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        color: const Color.fromRGBO(
                                            51, 201, 159, 1),
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 37, 148, 116),
                                              offset: Offset(1, 1),
                                              blurRadius: 2,
                                              spreadRadius: 1),
                                          BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 59, 233, 184),
                                              offset: Offset(-1, -1),
                                              blurRadius: 2,
                                              spreadRadius: 1),
                                        ]),
                                    child: const Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Image(
                                        image: AssetImage(
                                            'assets/trip/hotel_icon.png'),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Hotel',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
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
                                    child: Container(
                                      width: 200,
                                      height: 150,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          color: const Color.fromRGBO(
                                              51, 201, 159, 1),
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Color.fromARGB(
                                                    255, 37, 148, 116),
                                                offset: Offset(1, 1),
                                                blurRadius: 2,
                                                spreadRadius: 1),
                                            BoxShadow(
                                                color: Color.fromARGB(
                                                    255, 59, 233, 184),
                                                offset: Offset(-1, -1),
                                                blurRadius: 2,
                                                spreadRadius: 1),
                                          ]),
                                      child: const Padding(
                                        padding: EdgeInsets.all(20.0),
                                        child: Image(
                                          image: AssetImage(
                                              'assets/assistant_icon.png'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'Personal Assistant',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
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
                                    child: Container(
                                      width: 200,
                                      height: 150,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          color: const Color.fromRGBO(
                                              51, 201, 159, 1),
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Color.fromARGB(
                                                    255, 37, 148, 116),
                                                offset: Offset(1, 1),
                                                blurRadius: 2,
                                                spreadRadius: 1),
                                            BoxShadow(
                                                color: Color.fromARGB(
                                                    255, 59, 233, 184),
                                                offset: Offset(-1, -1),
                                                blurRadius: 2,
                                                spreadRadius: 1),
                                          ]),
                                      child: const Padding(
                                        padding: EdgeInsets.all(20.0),
                                        child: Image(
                                          image: AssetImage(
                                              'assets/calendar_icon.png'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'Agenda',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
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
              ]),
            ),
          ],
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
