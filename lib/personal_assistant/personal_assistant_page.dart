import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:luxury_app/personal_assistant/bars/bars_home.dart';
import 'package:luxury_app/personal_assistant/restaurants/list_restaurants.dart';
import 'package:luxury_app/personal_assistant/restaurants/top_choices.dart';
import 'package:luxury_app/personal_assistant/shops/list_shops.dart';
import 'package:luxury_app/widgets/bottomNav.dart';

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
        gradient: RadialGradient(
          colors: [Color(0xff1d453c), Color(0xff292728)],
          center: Alignment.center,
          radius: 0.8,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
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
                      BarsHome(),
                      ShopList(),
                    ]),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
