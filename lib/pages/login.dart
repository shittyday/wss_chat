import 'package:flutter/material.dart';
import 'package:wss_chat/uikits/avatar_container.dart';
import 'package:wss_chat/uikits/login_button.dart';
import 'package:wss_chat/uikits/login_form.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
          children: const [AvatarContainer(), LoginForm(), LoginButton()],
        ),
      ),
    );
  }
}
