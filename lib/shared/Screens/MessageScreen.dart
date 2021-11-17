// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tamuz_application/Authentication/ResetPassword.dart';
import 'package:tamuz_application/shared/Components/Button.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);
  static const routeName = "/message";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'التحقق من البريد الالكتروني',
          style: TextStyle(color: Color.fromARGB(200, 44, 62, 80)),
        ),
        iconTheme: const IconThemeData(color: Colors.blue),
        elevation: 0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(Icons.mail, size: 64, color: Colors.blue),
          ),
          const Text(
            'راجع بريدك الإلكتروني حتى تتمكن من إعادة تعيين كلمةالمرور الخاصة بك',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          Button(
              text: 'الانتقال الى بريدك الالكتروني',
              onPress: () {
                Navigator.of(context)
                    .pushReplacementNamed(ResetPasswordScreen.routeName);
              },
              primaryColor: Colors.blue,
              secondayColor: Colors.white)
        ],
      ),
    );
  }
}
