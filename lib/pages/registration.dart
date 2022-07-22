import 'package:flutter/material.dart';
import 'package:wss_chat/uikits/registration_button.dart';
import 'package:wss_chat/uikits/registration_form.dart';

class Registraition extends StatelessWidget {
  const Registraition({Key? key}) : super(key: key);

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
                color: Color.fromRGBO(110, 201, 230, 1),
                shape: BoxShape.circle),
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
              Container(
                height: MediaQuery.of(context).size.height / 6,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 4,
                        color: const Color.fromRGBO(110, 201, 230, 1)),
                    shape: BoxShape.circle,
                    color: Colors.amber),
              ),
              const RegistrationForm(),
              const RegistrationButton(newStyle: true)
            ],
          ),
        ));
  }
}
