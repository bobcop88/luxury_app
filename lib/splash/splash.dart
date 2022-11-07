import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:ui';

import 'package:luxury_app/login_page/login_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:video_player/video_player.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late VideoPlayerController videoController;
  @override
  void initState() {
    super.initState();
    videoController = VideoPlayerController.asset('assets/EMERALD_1.mp4')
      ..initialize().then((value) => videoController.play());
    Timer(
      const Duration(seconds: 8),
      () => Navigator.pushReplacement(context,
          PageTransition(type: PageTransitionType.fade, child: LoginPage())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VideoPlayer(videoController),
    );

    // return Scaffold(
    //   body: Row(
    //     children: [
    //       Expanded(
    //         child: Column(
    //           children: [
    //             Expanded(
    //               child: Container(
    //                 decoration: BoxDecoration(color: Colors.black),
    //                 child: Column(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   children: [
    //                     Image(
    //                       image: AssetImage('assets/logo_emerald.png'),
    //                     ),
    //                     SizedBox(
    //                       width: 50,
    //                       height: 50,
    //                       child: CircularProgressIndicator.adaptive(
    //                         backgroundColor: Colors.white,
    //                         valueColor: AlwaysStoppedAnimation<Color>(
    //                             Color.fromRGBO(0, 138, 69, 1)),
    //                       ),
    //                     ),
    //                   ],
    //                 ),
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
