import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class TopChoicesPage extends StatefulWidget {
  const TopChoicesPage({Key? key}) : super(key: key);

  @override
  State<TopChoicesPage> createState() => _TopChoicesPageState();
}

class _TopChoicesPageState extends State<TopChoicesPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            'Top Choices',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Stack(children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                child: Image(
                                  image: AssetImage(
                                      'assets/restaurants/gaytan.webp'),
                                  height: 150,
                                  width: 300,
                                  fit: BoxFit.cover,
                                  alignment: Alignment.center,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(0, 101, 47, 1),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        'Restaurant',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Image(
                                  height: 20,
                                  image: AssetImage(
                                      'assets/restaurants/michelin_star.png')),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Gaytan',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Modern Cousine',
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 101, 47, 1),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Príncipe de Vergara 205, Madrid, 28002',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              ),
                              const SizedBox(
                                height: 25,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Stack(children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                child: Image(
                                  image:
                                      AssetImage('assets/shops/vuitton.jpeg'),
                                  height: 150,
                                  width: 300,
                                  fit: BoxFit.cover,
                                  alignment: Alignment.center,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(0, 101, 47, 1),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        'Shopping',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Icon(
                                FontAwesome5.star_of_life,
                                color: Colors.yellow.shade700,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Louis Vuitton',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'The most luxurious shopping',
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 101, 47, 1),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'C. de Serrano, 66, 28001 Madrid',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              ),
                              const SizedBox(
                                height: 25,
                              )
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
        ],
      ),
    );
  }
}
