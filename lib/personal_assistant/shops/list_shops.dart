import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class ShopList extends StatefulWidget {
  const ShopList({Key? key}) : super(key: key);

  @override
  State<ShopList> createState() => _ShopListState();
}

class _ShopListState extends State<ShopList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: ListView(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 120,
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.3),
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          children: const [
                                            Expanded(
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10)),
                                                child: Image(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                        'assets/shops/vuitton.jpeg')),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: const [
                                                        Text(
                                                          'Luois Vuitton',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 25,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Icon(
                                                          FontAwesome5
                                                              .star_of_life,
                                                          color: Colors.red,
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    const Text(
                                                      'C. de Serrano, 66, 28001 Madrid',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 120,
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.3),
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          children: const [
                                            Expanded(
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10)),
                                                child: Image(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                        'assets/shops/bulgari.webp')),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: const [
                                                        Text(
                                                          'BVLGARI',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 25,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Icon(
                                                          FontAwesome5
                                                              .star_of_life,
                                                          color: Colors.red,
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    const Text(
                                                      'C. de José Ortega y Gasset, 17, 28006 Madrid',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 120,
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.3),
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          children: const [
                                            Expanded(
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10)),
                                                child: Image(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                        'assets/shops/chanel.jpeg')),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: const [
                                                        Text(
                                                          'Chanel',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 25,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Icon(
                                                          FontAwesome5
                                                              .star_of_life,
                                                          color: Colors.red,
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    const Text(
                                                      'C. de José Ortega y Gasset, 16, 28006 Madrid',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 120,
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.3),
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          children: const [
                                            Expanded(
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10)),
                                                child: Image(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                        'assets/shops/gucci.jpeg')),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: const [
                                                        Text(
                                                          'Gucci',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 25,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Icon(
                                                          FontAwesome5
                                                              .star_of_life,
                                                          color: Colors.red,
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    const Text(
                                                      'C. de Serrano, 49, 28006 Madrid',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
