// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tamuz_application/Authentication/ForgotPasswordScreen.dart';
import 'package:tamuz_application/shared/Components/Button.dart';
import 'package:tamuz_application/shared/Components/FormField.dart';
import 'package:tamuz_application/shared/Components/Splitter.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);
  static const routeName = "/authenticationScreen";
  @override
  Widget build(BuildContext context) {
    var isSignUp = false;
    if (ModalRoute.of(context)!.settings.arguments != null) {
      isSignUp = ModalRoute.of(context)!.settings.arguments as bool;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          isSignUp ? 'انشاء حساب جديد' : 'تسجيل الدخول',
          style: const TextStyle(color: Color.fromARGB(200, 44, 62, 80)),
        ),
        iconTheme: const IconThemeData(color: Colors.blue),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Form(
                        child: Column(
                      children: [
                        if (isSignUp)
                          const FormInputField(
                            label: 'ادخل اسمك بالكامل',
                            placeholder: 'الاسم بالكامل',
                          ),
                        const FormInputField(
                          label: 'ادخل بريدك الاكتروني',
                          placeholder: 'البريد الاكتروني',
                        ),
                        const FormInputField(
                            label: 'ادخل كلمة المرور ',
                            placeholder: 'كلمة المرور'),
                        if (isSignUp)
                          const FormInputField(
                              label: 'اكد كلمة المرور ',
                              placeholder: 'اكد كلمة المرور'),
                      ],
                    )),
                    if (!isSignUp)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children:  [
                            GestureDetector(
                              child: const Text(
                                'نسيت كلمة المرور؟',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 20),
                              ),onTap: (){
                                Navigator.of(context).pushNamed(ForgotPasswordScreen.routeName);
                              },
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.end,
                        ),
                      ),
                    Button(
                        text: !isSignUp ? 'تسجيل الدخول' : 'إنشاء حساب جديد',
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
            ),
            Text(isSignUp ? 'لديك حساب بالفعل؟' : 'لا تملك حساب؟'),
            Button(
                text: isSignUp ? 'تسجيل الدخول' : 'إنشاء حساب جديد',
                onPress: () {
                  Navigator.of(context).pushReplacementNamed(routeName,arguments: !isSignUp);
                },
                primaryColor: Color.fromARGB(200, 44, 62, 80),
                secondayColor: Colors.white)
          ],
        ),
      ),
    );
  }
}
