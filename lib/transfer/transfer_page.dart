import 'package:flutter/material.dart';
import 'package:luxury_app/homepage/homepage.dart';
import 'package:luxury_app/widgets/bottomNav.dart';
import 'package:page_transition/page_transition.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({Key? key}) : super(key: key);

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
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
              opacity: 0.2,
              image: AssetImage('assets/transfer/car_transfer.png'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: const Homepage()));
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Image(
                            width: 350,
                            image: AssetImage('assets/car_image.png'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Model',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'MERCEDES S CLASS',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Driver',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Juan Gonzalez',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Plate',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '1234 NXB',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: const [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              'A',
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 101, 47, 1),
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'EMERALD AIRPORT GROUP',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: const [
                              Flexible(
                                child: Text(
                                  'At the airport the driver will be waiting for you showing the Emerald Group A sign. Please get in touch with the driver to reach your hotel.',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
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
        bottomNavigationBar: const BottomNavBar(),
      ),
    );

    // Scaffold(
    //   backgroundColor: Colors.black,
    //   appBar: AppBar(
    //     backgroundColor: Colors.black,
    //     leading: IconButton(
    //       iconSize: 35,
    //       icon: Icon(Icons.keyboard_arrow_left),
    //       onPressed: () => Navigator.of(context).pop(),
    //     ),
    //     title: Text('Back'),
    //   ),
    //   body: Column(
    //     mainAxisAlignment: MainAxisAlignment.start,
    //     children: [
    //       Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: Container(
    //           decoration: BoxDecoration(boxShadow: [
    //             BoxShadow(
    //                 color: Colors.grey.shade600,
    //                 spreadRadius: 1,
    //                 blurRadius: 15,
    //                 offset: const Offset(0, 15))
    //           ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
    //           child: Column(
    //             children: [
    //               Row(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: [
    //                   Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: Text(
    //                       'At aiport: ',
    //                       style: TextStyle(
    //                           fontSize: 18, color: Colors.grey.shade600),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //               const Divider(
    //                 thickness: 1,
    //                 indent: 150,
    //                 endIndent: 150,
    //                 color: Colors.black,
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.all(8.0),
    //                 child: Row(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   children: [
    //                     Column(
    //                       children: [
    //                         Padding(
    //                           padding: const EdgeInsets.all(8.0),
    //                           child: Image(
    //                             width: 50,
    //                             image: AssetImage('assets/emerald_image.png'),
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                     Column(
    //                       children: [
    //                         Text(
    //                           'EMERALD',
    //                           style: TextStyle(
    //                               fontSize: 25, fontWeight: FontWeight.bold),
    //                         ),
    //                         Text(
    //                           'GROUP A',
    //                           style: TextStyle(
    //                               fontSize: 25, fontWeight: FontWeight.bold),
    //                         ),
    //                       ],
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //       const SizedBox(
    //         height: 30,
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: Container(
    //           decoration: BoxDecoration(
    //               color: Colors.grey.shade200,
    //               borderRadius: BorderRadius.circular(10)),
    //           child: Column(
    //             mainAxisSize: MainAxisSize.min,
    //             children: [
    //               Row(
    //                 children: [
    //                   Expanded(
    //                     child: Column(
    //                       children: [
    //                         Image(
    //                           width: 350,
    //                           image: AssetImage('assets/car_image.png'),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //               const SizedBox(
    //                 height: 15,
    //               ),
    //               Row(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: [
    //                   Image(
    //                     width: 25,
    //                     image: AssetImage('assets/mercedes_logo.png'),
    //                   ),
    //                   const SizedBox(
    //                     width: 5,
    //                   ),
    //                   Text(
    //                     'Mercedes S Class',
    //                     style: TextStyle(
    //                         color: Colors.black,
    //                         fontSize: 20,
    //                         fontWeight: FontWeight.bold),
    //                   ),
    //                 ],
    //               ),
    //               const SizedBox(
    //                 height: 5,
    //               ),
    //               const SizedBox(
    //                 height: 15,
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
    //                 child: Row(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   children: [
    //                     Container(
    //                       height: 35,
    //                       decoration: BoxDecoration(
    //                           color: Colors.white,
    //                           borderRadius: BorderRadius.circular(5)),
    //                       child: Row(
    //                         children: [
    //                           Container(
    //                             decoration:
    //                                 BoxDecoration(color: Colors.blue.shade900),
    //                             child: Column(
    //                               mainAxisAlignment: MainAxisAlignment.center,
    //                               children: [
    //                                 Padding(
    //                                   padding: const EdgeInsets.only(top: 5.0),
    //                                   child: Image(
    //                                     height: 5,
    //                                     image: AssetImage('assets/eu_logo.png'),
    //                                   ),
    //                                 ),
    //                                 Padding(
    //                                   padding: const EdgeInsets.fromLTRB(
    //                                       8.0, 8, 8, 2),
    //                                   child: Text(
    //                                     'E',
    //                                     style: TextStyle(
    //                                         color: Colors.white,
    //                                         fontWeight: FontWeight.bold,
    //                                         fontSize: 8),
    //                                   ),
    //                                 ),
    //                               ],
    //                             ),
    //                           ),
    //                           Padding(
    //                             padding:
    //                                 const EdgeInsets.only(left: 8.0, right: 8),
    //                             child: Text(
    //                               '1234 NXB',
    //                               style: TextStyle(
    //                                   fontWeight: FontWeight.bold,
    //                                   fontSize: 25),
    //                               textAlign: TextAlign.center,
    //                             ),
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               const SizedBox(
    //                 height: 15,
    //               ),
    //               // Row(
    //               //   mainAxisAlignment: MainAxisAlignment.center,
    //               //   children: [
    //               //     Container(
    //               //       decoration: BoxDecoration(
    //               //           boxShadow: [
    //               //             BoxShadow(
    //               //                 color: Colors.grey.shade600,
    //               //                 spreadRadius: 1,
    //               //                 blurRadius: 15,
    //               //                 offset: const Offset(0, 15))
    //               //           ],
    //               //           color: Colors.white,
    //               //           borderRadius: BorderRadius.circular(10)),
    //               //       child: Column(
    //               //         children: [
    //               //           Row(
    //               //             mainAxisAlignment: MainAxisAlignment.center,
    //               //             children: [
    //               //               Padding(
    //               //                 padding: const EdgeInsets.all(8.0),
    //               //                 child: Text(
    //               //                   'At aiport follow: ',
    //               //                   style: TextStyle(
    //               //                       fontSize: 18,
    //               //                       color: Colors.grey.shade600),
    //               //                 ),
    //               //               ),
    //               //             ],
    //               //           ),
    //               //           const Divider(
    //               //             thickness: 2,
    //               //             indent: 150,
    //               //             endIndent: 150,
    //               //             color: Colors.black,
    //               //           ),
    //               //           Padding(
    //               //             padding: const EdgeInsets.all(8.0),
    //               //             child: Row(
    //               //               mainAxisAlignment: MainAxisAlignment.center,
    //               //               children: [
    //               //                 Column(
    //               //                   children: [
    //               //                     Padding(
    //               //                       padding: const EdgeInsets.all(8.0),
    //               //                       child: Image(
    //               //                         width: 50,
    //               //                         image: AssetImage(
    //               //                             'assets/emerald_image.png'),
    //               //                       ),
    //               //                     ),
    //               //                   ],
    //               //                 ),
    //               //                 Column(
    //               //                   children: [
    //               //                     Text(
    //               //                       'EMERALD',
    //               //                       style: TextStyle(
    //               //                           fontSize: 25,
    //               //                           fontWeight: FontWeight.bold),
    //               //                     ),
    //               //                     Text(
    //               //                       'GROUP A',
    //               //                       style: TextStyle(
    //               //                           fontSize: 25,
    //               //                           fontWeight: FontWeight.bold),
    //               //                     ),
    //               //                   ],
    //               //                 ),
    //               //               ],
    //               //             ),
    //               //           ),
    //               //         ],
    //               //       ),
    //               //     ),
    //               //   ],
    //               // ),
    //               const SizedBox(
    //                 height: 20,
    //               )
    //             ],
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
