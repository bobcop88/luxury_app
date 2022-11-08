import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [const Color(0xff1d453c), Color(0xff292728)],
          center: Alignment.center,
          radius: 0.8,
        ),
        image: DecorationImage(
            fit: BoxFit.cover,
            opacity: 0.9,
            image: AssetImage('assets/image_event.png')),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Text(
                      'Modern Lunch',
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'The new concept brought in a Modern and Fashion lunch. Enjoy the experience of the new ideas and go beyond what is just on the table...',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.grey.shade200,
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 1,
                            color: Colors.grey.shade300,
                            indent: 0,
                            endIndent: 260,
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Time',
                                    style:
                                        TextStyle(color: Colors.grey.shade400),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  const Text(
                                    '13:00',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Where',
                                    style:
                                        TextStyle(color: Colors.grey.shade400),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  const Text(
                                    'Madrid Expo',
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Icon(
                                      Icons.my_location,
                                      size: 18,
                                      color: Colors.blueAccent,
                                    ),
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    const Text(
                                      'Open in Maps',
                                      style: const TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: Colors.blueAccent),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          // Row(
                          //   children: [
                          //     Column(
                          //       crossAxisAlignment: CrossAxisAlignment.start,
                          //       children: [
                          //         Text(
                          //           'Address',
                          //           style:
                          //               TextStyle(color: Colors.grey.shade400),
                          //         ),
                          //         const SizedBox(
                          //           height: 4,
                          //         ),
                          //         const Text(
                          //           'Príncipe de Vergara 205, Madrid',
                          //           style: const TextStyle(
                          //               color: Colors.white,
                          //               fontSize: 18,
                          //               fontWeight: FontWeight.bold),
                          //         ),
                          //         GestureDetector(
                          //           onTap: () {},
                          //           child: Row(
                          //             crossAxisAlignment:
                          //                 CrossAxisAlignment.end,
                          //             children: [
                          //               const Icon(
                          //                 Icons.my_location,
                          //                 size: 18,
                          //                 color: Colors.blueAccent,
                          //               ),
                          //               const SizedBox(
                          //                 width: 3,
                          //               ),
                          //               const Text(
                          //                 'Open in Maps',
                          //                 style: const TextStyle(
                          //                     decoration:
                          //                         TextDecoration.underline,
                          //                     color: Colors.blueAccent),
                          //               ),
                          //             ],
                          //           ),
                          //         ),
                          //       ],
                          //     ),
                          //   ],
                          // ),
                          const SizedBox(
                            height: 80,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
