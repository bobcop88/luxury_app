import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({Key? key}) : super(key: key);

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  List<Widget> restaurantImages = [
    Image(image: AssetImage('assets/restaurants/gaytan_1.webp')),
    Image(image: AssetImage('assets/restaurants/gaytan.webp'))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          iconSize: 35,
          icon: Icon(Icons.keyboard_arrow_left),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Back to Personal Assistant'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/restaurants/michelin_star.png'),
                  height: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Gaytán',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                  child: CarouselSlider(
                      items: restaurantImages,
                      options: CarouselOptions(
                        viewportFraction: 1,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                'The dream of chef Javier Aranda which then became a reality, Gaytán is far from your usual type of restaurant.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey.shade600, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromRGBO(0, 138, 69, 1))),
                              onPressed: () {},
                              child: Text('Book now'),
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromRGBO(19, 65, 55, 1))),
                              onPressed: () {},
                              child: Text('Website'),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 2,
                          indent: 150,
                          endIndent: 150,
                          height: 25,
                        ),
                        Row(
                          children: [
                            Text(
                              'Executive Chef: ',
                              style: TextStyle(
                                color: Colors.grey.shade700,
                              ),
                            ),
                            Text(
                              'Javier Aranda',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        // const SizedBox(
                        //   height: 8,
                        // ),
                        // Row(
                        //   children: [
                        //     Text(
                        //       'Phone number: ',
                        //       style: TextStyle(
                        //         color: Colors.grey.shade700,
                        //       ),
                        //     ),
                        //     Text(
                        //       '+34 913 48 50 30',
                        //       style: TextStyle(fontWeight: FontWeight.bold),
                        //     ),
                        //   ],
                        // ),
                        // const SizedBox(
                        //   height: 8,
                        // ),
                        // Row(
                        //   children: [
                        //     Text(
                        //       'Website: ',
                        //       style: TextStyle(
                        //         color: Colors.grey.shade700,
                        //       ),
                        //     ),
                        //     GestureDetector(
                        //       onTap: _launchUrl,
                        //       child: Text(
                        //         'Gaytan Restaurant',
                        //         style: TextStyle(fontWeight: FontWeight.bold),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Text(
                              'Address: ',
                              style: TextStyle(
                                color: Colors.grey.shade700,
                              ),
                            ),
                            GestureDetector(
                              onTap: _launchUrl,
                              child: Text(
                                'Príncipe de Vergara 205, Madrid, 28002',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     SizedBox(
                        //       width: 350,
                        //       height: 350,
                        //       child: FlutterMap(
                        //         options: new MapOptions(
                        //           center: new LatLng(
                        //               40.45040900734417, -3.677942628820985),
                        //           zoom: 17,
                        //         ),
                        //         layers: [
                        //           new TileLayerOptions(
                        //             urlTemplate:
                        //                 "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                        //           ),
                        //           new MarkerLayerOptions(
                        //             markers: [
                        //               new Marker(
                        //                 width: 80.0,
                        //                 height: 80.0,
                        //                 point: new LatLng(40.45040900734417,
                        //                     -3.677942628820985),
                        //                 builder: (ctx) => new Container(
                        //                   child: Icon(Icons.location_on),
                        //                 ),
                        //               ),
                        //             ],
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _launchUrl() async {
    await launchUrl(Uri.parse('https://chefjavieraranda.com/en/'));
  }
}
