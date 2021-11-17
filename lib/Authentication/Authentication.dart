// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tamuz_application/shared/Components/Button.dart';
import 'package:tamuz_application/shared/Components/FormField.dart';
import 'package:tamuz_application/shared/Components/Splitter.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);
  static const routeName = "/authenticationScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'تسجيل الدخول',
          style: TextStyle(color: Color.fromARGB(200, 44, 62, 80)),
        ),
        iconTheme: const IconThemeData(color: Colors.blue),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Form(
                child: Column(
              children: const [
                FormInputField(
                  label: 'ادخل بريدك الاكتروني',
                  placeholder: 'البريد الاكتروني',
                ),
                FormInputField(
                    label: 'ادخل كلمة المرور ', placeholder: 'كلمة المرور')
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Text(
                    'نسيت كلمة المرور؟',
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.end,
              ),
            ),
            Button(
                text: 'تسجيل الدخول',
                onPress: () {},
                secondayColor: Colors.white,
                primaryColor: Colors.blue),
            const Spliter(
              spliterString: 'سجل عبر',
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const FaIcon(
                          FontAwesomeIcons.facebookF,
                          color: Colors.blue,
                        ),
                        label: const Text('فيسبوك',
                            style: TextStyle(color: Colors.black))),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const FaIcon(
                          FontAwesomeIcons.google,
                          color: Colors.red,
                        ),
                        label: const Text('جوجل',
                            style: TextStyle(color: Colors.black))),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
