import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wss_chat/uikits/avatar_container.dart';
import 'package:wss_chat/uikits/login_button.dart';
import 'package:wss_chat/uikits/login_form.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final validate = StreamController<bool>.broadcast();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void initState() {
    super.initState();
    nameController.addListener(() {
      validate.add(nameController.text != '' && passwordController.text != '');
    });
    passwordController.addListener(() {
      validate.add(nameController.text != '' && passwordController.text != '');
    });
  }

  @override
  void dispose() {
    validate.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.only(left: 3),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              color: Color.fromRGBO(110, 201, 230, 1), shape: BoxShape.circle),
          child: IconButton(
              icon: const Icon(Icons.arrow_back_ios, size: 20),
              splashRadius: 1,
              onPressed: () {
                Navigator.of(context).pop();
              }),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AvatarContainer(),
            LoginForm(
                nameController: nameController,
                passwordController: passwordController),
            StreamBuilder<bool>(
              initialData: false,
              stream: validate.stream,
              builder: (context, snapshot) {
                return LoginButton(validate: true, enabled: snapshot.data);
              },
            )
          ],
        ),
      ),
    );
  }
}
