import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:luxury_app/personal_assistant/restaurants/list_restaurants.dart';
import 'package:luxury_app/personal_assistant/restaurants/top_choices.dart';
import 'package:luxury_app/personal_assistant/shops/list_shops.dart';
import 'package:luxury_app/widgets/bottomNav.dart';
import 'package:page_transition/page_transition.dart';

import '../homepage/homepage.dart';

class PersonalAssistantPage extends StatefulWidget {
  const PersonalAssistantPage({Key? key}) : super(key: key);

  @override
  State<PersonalAssistantPage> createState() => _PersonalAssistantPageState();
}

class _PersonalAssistantPageState extends State<PersonalAssistantPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff5bb85f), Color(0xff464646)],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
          image: DecorationImage(
              fit: BoxFit.cover,
              opacity: 0.2,
              image: AssetImage('assets/assistant_background.png'))),
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
              DefaultTabController(
                length: 4,
                initialIndex: 1,
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TabBar(
                        isScrollable: true,
                        controller: tabController,
                        indicatorColor: Color.fromRGBO(0, 138, 69, 1),
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        unselectedLabelStyle:
                            TextStyle(fontWeight: FontWeight.normal),
                        tabs: const [
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              'Top Choices',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text('Restaurants'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text('Bars'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text('Shops'),
                          ),
                        ])),
              ),
              Expanded(
                child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    controller: tabController,
                    children: const [
                      TopChoicesPage(),
                      RestaurantList(),
                      Icon(Icons.directions_bike),
                      Icon(Icons.directions_bike),
                    ]),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
    // return Scaffold(
    //   backgroundColor: Colors.black,
    //   appBar: AppBar(
    //     backgroundColor: Colors.black,
    //     leading: IconButton(
    //       iconSize: 35,
    //       icon: Icon(Icons.keyboard_arrow_left),
    //       onPressed: () => Navigator.of(context).pop(),
    //     ),
    //     title: Text('Home Page'),
    //   ),
    //   body: Column(
    //     mainAxisSize: MainAxisSize.max,
    //     children: [
    //       Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: SingleChildScrollView(
    //           scrollDirection: Axis.horizontal,
    //           child: Row(
    //             children: [
    //               GestureDetector(
    //                 onTap: () {
    //                   setState(() {
    //                     selectedPage = 1;
    //                     assistantController.jumpToPage(1);
    //                   });
    //                 },
    //                 child: Container(
    //                   height: 100,
    //                   width: 200,
    //                   decoration: BoxDecoration(
    //                       image: DecorationImage(
    //                           opacity: selectedPage == 1 ? 0.5 : 0.3,
    //                           fit: BoxFit.cover,
    //                           image: AssetImage('assets/restaurant_image.png')),
    //                       border: Border.all(color: Colors.white),
    //                       borderRadius: BorderRadius.circular(10)),
    //                   child: Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: Column(
    //                       mainAxisAlignment: MainAxisAlignment.end,
    //                       children: [
    //                         Text(
    //                           'Restaurants',
    //                           style: TextStyle(
    //                               color: Colors.white,
    //                               fontSize: 25,
    //                               fontWeight: FontWeight.bold),
    //                           textAlign: TextAlign.center,
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //               const SizedBox(
    //                 width: 10,
    //               ),
    //               GestureDetector(
    //                 onTap: () {
    //                   setState(() {
    //                     selectedPage = 2;
    //                     assistantController.jumpToPage(2);
    //                   });
    //                 },
    //                 child: Container(
    //                   height: 100,
    //                   width: 200,
    //                   decoration: BoxDecoration(
    //                       image: DecorationImage(
    //                           opacity: selectedPage == 2 ? 0.5 : 0.3,
    //                           fit: BoxFit.cover,
    //                           image: AssetImage('assets/shops_image.png')),
    //                       border: Border.all(color: Colors.white),
    //                       borderRadius: BorderRadius.circular(10)),
    //                   child: Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: Column(
    //                       mainAxisAlignment: MainAxisAlignment.end,
    //                       children: [
    //                         Text(
    //                           'Shops',
    //                           style: TextStyle(
    //                               color: Colors.white,
    //                               fontSize: 25,
    //                               fontWeight: FontWeight.bold),
    //                           textAlign: TextAlign.center,
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //               const SizedBox(
    //                 width: 10,
    //               ),
    //               GestureDetector(
    //                 onTap: () {
    //                   setState(() {
    //                     selectedPage = 3;
    //                   });
    //                 },
    //                 child: Container(
    //                   height: 100,
    //                   width: 200,
    //                   decoration: BoxDecoration(
    //                       image: DecorationImage(
    //                           opacity: selectedPage == 3 ? 0.5 : 0.3,
    //                           fit: BoxFit.cover,
    //                           image: AssetImage('assets/bar_image.png')),
    //                       border: Border.all(color: Colors.white),
    //                       borderRadius: BorderRadius.circular(10)),
    //                   child: Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: Column(
    //                       mainAxisAlignment: MainAxisAlignment.end,
    //                       children: [
    //                         Text(
    //                           'Fashion Bars',
    //                           style: TextStyle(
    //                               color: Colors.white,
    //                               fontSize: 25,
    //                               fontWeight: FontWeight.bold),
    //                           textAlign: TextAlign.center,
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //               const SizedBox(
    //                 width: 10,
    //               ),
    //               GestureDetector(
    //                 onTap: () {
    //                   setState(() {
    //                     selectedPage = 4;
    //                   });
    //                 },
    //                 child: Container(
    //                   height: 100,
    //                   width: 200,
    //                   decoration: BoxDecoration(
    //                       image: DecorationImage(
    //                           opacity: selectedPage == 4 ? 0.5 : 0.3,
    //                           fit: BoxFit.cover,
    //                           image: AssetImage('assets/events_image.png')),
    //                       border: Border.all(color: Colors.white),
    //                       borderRadius: BorderRadius.circular(10)),
    //                   child: Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: Column(
    //                       mainAxisAlignment: MainAxisAlignment.end,
    //                       children: [
    //                         Text(
    //                           'Events',
    //                           style: TextStyle(
    //                               color: Colors.white,
    //                               fontSize: 25,
    //                               fontWeight: FontWeight.bold),
    //                           textAlign: TextAlign.center,
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //               const SizedBox(
    //                 width: 10,
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //       const SizedBox(
    //         height: 15,
    //       ),
    //       Expanded(
    //         child: Row(
    //           children: [
    //             Expanded(
    //               child: PageView(
    //                 controller: assistantController,
    //                 children: [
    //                   Container(
    //                     child: TopChoicesPage(),
    //                   ),
    //                   Container(
    //                     child: RestaurantList(),
    //                   ),
    //                   Container(
    //                     child: ShopList(),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
