// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tamuz_application/shared/Components/Button.dart';
import 'package:tamuz_application/shared/Components/FormField.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);
  static const routeName = "/ResetPassword";

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
          Form(
              child: Column(
            children: const [
              FormInputField(
                label: 'ادخل بريدك الاكتروني',
                placeholder: 'البريد الاكتروني',
              ),
              FormInputField(
                label: 'ادخل كلمة المرور الجديدة',
                placeholder: 'كلمة المرور الجديدة',
              ),
              FormInputField(
                label: ' ادخل كلمة المرور الجديدة مرة اخري',
                placeholder: 'كلمة المرور الجديدة',
              ),
            ],
          )),
          Button(
              text: 'حفظ كلمة المرور',
              onPress: () {},
              secondayColor: Colors.white,
              primaryColor: Colors.blue),
        ],
      ),
    );
  }
}
