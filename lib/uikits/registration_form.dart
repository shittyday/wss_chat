import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wss_chat/uikits/custom_text_field.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key, this.validate}) : super(key: key);
  final StreamController<bool>? validate;
  @override
  State<RegistrationForm> createState() => RregistratioFormState();
}

class RregistratioFormState extends State<RegistrationForm> {
  final passwordController = TextEditingController();
  final retryPasswordController = TextEditingController();
  final nameController = TextEditingController();
  final nicknameController = TextEditingController();
  bool passwordValidate = false;
  @override
  void initState() {
    super.initState();
    passwordController.addListener(() {
      passwordValidate =
          (passwordController.text == retryPasswordController.text) &&
              passwordController.text != '';
      widget.validate?.add(passwordValidate);
    });
    retryPasswordController.addListener(() {
      passwordValidate =
          (passwordController.text == retryPasswordController.text) &&
              retryPasswordController.text != '';
      widget.validate?.add(passwordValidate);
    });
    nameController.addListener(() {
      widget.validate?.add(passwordValidate && nameController.text != '');
    });
    nicknameController.addListener(() {
      widget.validate?.add(passwordValidate && nicknameController.text != '');
    });
  }

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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(37)),
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(height: 20),
            CustomTextField(
              controller: nameController,
              hintText: 'Name',
              icon: const Icon(Icons.person_outline,
                  color: Color.fromRGBO(110, 201, 230, 1)),
            ),
            CustomTextField(
              controller: nicknameController,
              hintText: 'Nickname',
              icon: const Icon(Icons.mail_outline,
                  color: Color.fromRGBO(110, 201, 230, 1)),
            ),
            CustomTextField(
              controller: passwordController,
              hintText: 'Password',
              password: true,
              icon: const Icon(Icons.lock_outline,
                  color: Color.fromRGBO(110, 201, 230, 1)),
            ),
            CustomTextField(
              controller: retryPasswordController,
              retryPassword: true,
              password: true,
              currentPassword: passwordController,
              hintText: 'Retry Password',
              icon: const Icon(Icons.lock_open,
                  color: Color.fromRGBO(110, 201, 230, 1)),
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
