import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class DayTwo extends StatefulWidget {
  const DayTwo({Key? key}) : super(key: key);

  @override
  State<DayTwo> createState() => _DayTwoState();
}

class _DayTwoState extends State<DayTwo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Events February, 3rd',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Timeline(
                    theme: TimelineTheme.of(context).copyWith(
                        color: Color.fromRGBO(0, 101, 47, 1),
                        nodePosition: 0.2),
                    padding: EdgeInsets.only(top: 20, bottom: 100),
                    children: [
                      TimelineTile(
                        mainAxisExtent: 150,
                        oppositeContents: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '13.00',
                          ),
                        ),
                        contents: Card(
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Lunch Event in Expo'),
                          ),
                        ),
                        node: TimelineNode(
                          indicator: DotIndicator(),
                          startConnector: SolidLineConnector(),
                          endConnector: SolidLineConnector(),
                        ),
                      ),
                      TimelineTile(
                        mainAxisExtent: 150,
                        oppositeContents: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '15.00',
                          ),
                        ),
                        contents: Card(
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Coffee Break'),
                          ),
                        ),
                        node: TimelineNode(
                          indicator: DotIndicator(),
                          startConnector: SolidLineConnector(),
                          endConnector: SolidLineConnector(),
                        ),
                      ),
                      TimelineTile(
                        mainAxisExtent: 150,
                        oppositeContents: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '18.00',
                          ),
                        ),
                        contents: Card(
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Gift Reward to best'),
                          ),
                        ),
                        node: TimelineNode(
                          indicator: DotIndicator(),
                          startConnector: SolidLineConnector(),
                          endConnector: SolidLineConnector(),
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
