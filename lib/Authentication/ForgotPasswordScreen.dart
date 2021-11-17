// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tamuz_application/Authentication/ResetPassword.dart';
import 'package:tamuz_application/shared/Components/Button.dart';
import 'package:tamuz_application/shared/Components/FormField.dart';
import 'package:tamuz_application/shared/Screens/MessageScreen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  static const routeName = "/ForgotPassword";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'نسيت كلمة المرور',
          style: TextStyle(color: Color.fromARGB(200, 44, 62, 80)),
        ),
        iconTheme: const IconThemeData(color: Colors.blue),
        elevation: 0,
      ),
      body: Column(
        children: [
          const Text(
            'أدخل البريد الإلكتروني الخاص بك و سوف نرسل لك رسالةللتحقق من البريد الإلكتروني',
            style:
                TextStyle(color: Color.fromARGB(200, 44, 62, 80), fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const Form(
            child: FormInputField(
              label: 'ادخل بريدك الاكتروني',
              placeholder: 'البريد الاكتروني',
            ),
          ),
          Button(
              text: 'متابعة',
              onPress: () {
                Navigator.of(context).pushNamed(MessageScreen.routeName);
              },
              secondayColor: Colors.white,
              primaryColor: Colors.blue),
        ],
      ),
    );
  }
}
