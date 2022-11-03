import 'dart:async';

import 'package:flutter/material.dart';
import 'package:luxury_app/homepage/homepage.dart';
import 'package:pinput/pinput.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  final pinController = TextEditingController();
  late AnimationController loadingController;
  bool showLoading = false;

  @override
  void initState() {
    loadingController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    loadingController.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    loadingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    'ENTER YOUR UNIQUE EMERALD CODE',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Pinput(
                      controller: pinController,
                      length: 5,
                      cursor: Text(
                        '|',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      defaultPinTheme: PinTheme(
                        textStyle: TextStyle(color: Colors.white, fontSize: 20),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                      ),
                      focusedPinTheme: PinTheme(
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 20),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          )),
                      onCompleted: (pin) {
                        setState(() {
                          showLoading = true;
                        });
                        Timer(Duration(seconds: 3), () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Homepage()));
                        });
                      }),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Visibility(
                  visible: showLoading,
                  child: Flexible(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(50.0, 0, 50, 0),
                    child: LinearProgressIndicator(
                        value: loadingController.value,
                        valueColor: AlwaysStoppedAnimation<Color>(
                            Color.fromRGBO(0, 138, 69, 1))),
                  )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
