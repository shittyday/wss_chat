import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm(
      {Key? key,
      required this.nameController,
      required this.passwordController})
      : super(key: key);
  final TextEditingController nameController;
  final TextEditingController passwordController;
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(37)),
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(height: 20),
              CustomTextField(
                controller: widget.nameController,
                hintText: 'Name',
                icon: const Icon(Icons.person_outline,
                    color: Color.fromRGBO(110, 201, 230, 1)),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: widget.passwordController,
                hintText: 'Password',
                password: true,
                icon: const Icon(Icons.lock_outline,
                    color: Color.fromRGBO(110, 201, 230, 1)),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ));
  }
}
