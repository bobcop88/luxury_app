import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class AgendaHome extends StatefulWidget {
  const AgendaHome({Key? key}) : super(key: key);

  @override
  State<AgendaHome> createState() => _AgendaHomeState();
}

class _AgendaHomeState extends State<AgendaHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Event Day',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: Column(
                    children: [
                      Text(
                        'FEB',
                        style: TextStyle(fontSize: 9),
                      ),
                      Text(
                        '2',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'FRI',
                        style: TextStyle(fontSize: 9),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: Column(
                    children: [
                      Text(
                        'FEB',
                        style: TextStyle(fontSize: 9),
                      ),
                      Text(
                        '3',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'SAT',
                        style: TextStyle(fontSize: 9),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: Column(
                    children: [
                      Text(
                        'FEB',
                        style: TextStyle(fontSize: 9),
                      ),
                      Text(
                        '4',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'SUN',
                        style: TextStyle(fontSize: 9),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Timeline(
                  children: [
                    TimelineTile(
                      oppositeContents: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'opposite',
                        ),
                      ),
                      contents: Card(
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text('contents'),
                        ),
                      ),
                      node: TimelineNode(
                        indicator: DotIndicator(),
                        startConnector: SolidLineConnector(),
                        endConnector: SolidLineConnector(),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Text(
                'adtsfsd',
                style: TextStyle(color: Colors.white),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
