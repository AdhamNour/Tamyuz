// ignore_for_file: file_names

import 'package:flutter/material.dart';

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {},
                  child: const Text('انشاء حساب',
                      style: TextStyle(
                          color: Color.fromARGB(200, 44, 62, 80), fontSize: 24)),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      minimumSize: MaterialStateProperty.all<Size>(
                          const Size.fromHeight(50)))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {},
                  child: const Text('تسجيل الدخول',
                      style: TextStyle(color: Colors.white, fontSize: 24)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(200, 44, 62, 80)),
                      minimumSize: MaterialStateProperty.all<Size>(
                          const Size.fromHeight(50)))),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
