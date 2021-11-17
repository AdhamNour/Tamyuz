// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tamuz_application/Authentication/Authentication.dart';
import 'package:tamuz_application/shared/Components/Button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static const String routeName = "/WelcomeScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  children: [
                    const Icon(
                      Icons.stacked_bar_chart,
                      color: Colors.white,
                      size: 128,
                    ),
                    Container(
                      child: const Center(
                        child: Text(
                          'تمييز',
                          style: TextStyle(color: Colors.white, fontSize: 48),
                        ),
                      ),
                      // decoration: const BoxDecoration(color: Colors.amber),
                      width: double.infinity,
                      padding: const EdgeInsets.only(left: 20),
                    ),
                    const SizedBox(
                      child: Center(
                        child: Text(
                          'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      // decoration: const BoxDecoration(color: Colors.amber),
                      width: double.infinity,
                      // padding: const EdgeInsets.only(),
                    )
                  ],
                  mainAxisSize: MainAxisSize.min,
                ),
              ),
            ),
            Button(
                text: 'انشاء حساب',
                onPress: () {
                  Navigator.of(context).pushNamed(
                      AuthenticationScreen.routeName,
                      arguments: true);
                },
                secondayColor: const Color.fromARGB(200, 44, 62, 80),
                primaryColor: Colors.white),
            Button(
                text: 'تسجيل الدخول',
                onPress: () {
                  Navigator.of(context)
                      .pushNamed(AuthenticationScreen.routeName);
                },
                primaryColor: const Color.fromARGB(200, 44, 62, 80),
                secondayColor: Colors.white),
          ],
        ),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
