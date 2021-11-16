// ignore_for_file: file_names

import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static const String routeName = "/WelcomeScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          ElevatedButton(onPressed: () {}, child: const Text('انشاء حساب')),
          ElevatedButton(onPressed: () {}, child: const Text('نسجيل دخول')),
        ],
      ),
      backgroundColor: Colors.blue,
    );
  }
}
