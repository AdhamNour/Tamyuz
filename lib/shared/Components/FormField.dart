// ignore_for_file: file_names

import 'package:flutter/material.dart';

class FormInputField extends StatelessWidget {
  final String label, placeholder;
  const FormInputField(
      {Key? key, required this.label, required this.placeholder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            textDirection: TextDirection.rtl,
          ),
          TextFormField(
            decoration:  InputDecoration(
                hintText: placeholder,
                // labelText: 'البريد الالكتروني',
                border: const OutlineInputBorder(),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(200, 44, 62, 80), width: 2))),
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
