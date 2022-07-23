import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        child: Card(
          margin: const EdgeInsets.all(20),
          elevation: 10,
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(37)),
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(height: 20),
              CustomTextField(
                controller: TextEditingController(),
                hintText: 'Name',
                icon: const Icon(Icons.person_outline,
                    color: Color.fromRGBO(110, 201, 230, 1)),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: TextEditingController(),
                hintText: 'Password',
                icon: const Icon(Icons.person_outline,
                    color: Color.fromRGBO(110, 201, 230, 1)),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ));
  }
}
