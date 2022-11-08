import 'package:flutter/material.dart';

class BarsHome extends StatefulWidget {
  const BarsHome({Key? key}) : super(key: key);

  @override
  State<BarsHome> createState() => _BarsHomeState();
}

class _BarsHomeState extends State<BarsHome> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
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
                              onTap: () {
                                // Navigator.of(context).push(MaterialPageRoute(
                                //     builder: (context) => RestaurantPage()));
                              },
                              child: Container(
                                height: 120,
                                decoration: BoxDecoration(
                                    color: const Color.fromRGBO(39, 80, 66, 1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(10),
                                                      bottomLeft:
                                                          Radius.circular(10)),
                                              child: Row(
                                                children: const [
                                                  Expanded(
                                                    child: Image(
                                                        fit: BoxFit.cover,
                                                        image: AssetImage(
                                                            'assets/bars/bar1.jpeg')),
                                                  ),
                                                ],
                                              ),
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
                                                        'Bad Company 1920',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 25,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  const Text(
                                                    'C de Miguel Moya 8, 28004 Madrid',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          const Divider(
                                            color: Colors.white,
                                            indent: 120,
                                            endIndent: 120,
                                            height: 20,
                                            thickness: 1,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: const Color.fromRGBO(
                                                      19, 65, 55, 1),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: const Padding(
                                                  padding: EdgeInsets.all(6.0),
                                                  child: Text(
                                                    'Cocktails',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.white),
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
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 120,
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(39, 80, 66, 1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      children: [
                                        Flexible(
                                          child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10)),
                                            child: Row(
                                              children: const [
                                                Expanded(
                                                  child: Image(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage(
                                                          'assets/bars/bar2.jpeg')),
                                                ),
                                              ],
                                            ),
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
                                                      'La Santoria',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                const Text(
                                                  'C. de Lope de Vega, 30, 28014 Madrid',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const Divider(
                                          color: Colors.white,
                                          indent: 120,
                                          endIndent: 120,
                                          height: 20,
                                          thickness: 1,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(
                                                    19, 65, 55, 1),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.all(6.0),
                                                child: Text(
                                                  'Creative Cocktails',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white),
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
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 120,
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(39, 80, 66, 1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10)),
                                            child: Row(
                                              children: const [
                                                Expanded(
                                                  child: Image(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage(
                                                          'assets/bars/bar3.jpeg')),
                                                ),
                                              ],
                                            ),
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
                                                      'Salmon Guru',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                const Text(
                                                  'Calle de Echegaray, 21, 28014 Madrid',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const Divider(
                                          color: Colors.white,
                                          indent: 120,
                                          endIndent: 120,
                                          height: 20,
                                          thickness: 1,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(
                                                    19, 65, 55, 1),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.all(6.0),
                                                child: Text(
                                                  'Funky Cocktails',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.white),
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
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 120,
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(39, 80, 66, 1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10)),
                                            child: Row(
                                              children: const [
                                                Expanded(
                                                  child: Image(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage(
                                                          'assets/bars/bar4.jpeg')),
                                                ),
                                              ],
                                            ),
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
                                                      'Ficus Bar',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                const Text(
                                                  'C. de Santo Tomé, 8, 28004 Madrid',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const Divider(
                                          color: Colors.white,
                                          indent: 120,
                                          endIndent: 120,
                                          height: 20,
                                          thickness: 1,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(
                                                    19, 65, 55, 1),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.all(6.0),
                                                child: Text(
                                                  'International Cocktails',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.white),
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
      ],
    );
  }
}
