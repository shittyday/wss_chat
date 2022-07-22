import 'package:flutter/material.dart';
import 'package:wss_chat/uikits/custom_text_field.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  State<RegistrationForm> createState() => RregistratioFormState();
}

class RregistratioFormState extends State<RegistrationForm> {
  final passwordController = TextEditingController();
  final retryPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: Card(
        margin: const EdgeInsets.all(20),
        elevation: 16,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(37)),
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
                child: CustomTextField(
              controller: TextEditingController(),
              hintText: 'Name',
              icon: const Icon(Icons.person_outline,
                  color: Color.fromRGBO(110, 201, 230, 1)),
            )),
            Expanded(
                child: CustomTextField(
              controller: TextEditingController(),
              hintText: 'Nickname',
              icon: const Icon(Icons.mail_outline,
                  color: Color.fromRGBO(110, 201, 230, 1)),
            )),
            Expanded(
                child: CustomTextField(
              controller: passwordController,
              hintText: 'Password',
              password: true,
              icon: const Icon(Icons.lock_outline,
                  color: Color.fromRGBO(110, 201, 230, 1)),
            )),
            Expanded(
                child: CustomTextField(
              controller: retryPasswordController,
              retryPassword: true,
              password: true,
              currentPassword: passwordController,
              hintText: 'Retry Password',
              icon: const Icon(Icons.lock_open,
                  color: Color.fromRGBO(110, 201, 230, 1)),
            )),
          ],
        ),
      ),
    );
  }
}
