import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:wss_chat/uikits/avatar_container.dart';
import 'package:wss_chat/uikits/registration_button.dart';
import 'package:wss_chat/uikits/registration_form.dart';

class Registraition extends StatefulWidget {
  const Registraition({Key? key}) : super(key: key);

  @override
  State<Registraition> createState() => _RegistraitionState();
}

class _RegistraitionState extends State<Registraition> {
  final validate = StreamController<bool>.broadcast();

  @override
  void initState() {
    super.initState();
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
              const AvatarContainer(),
              RegistrationForm(validate: validate),
              StreamBuilder<bool>(
                stream: validate.stream,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return RegistrationButton(
                      newStyle: true,
                      enabled: snapshot.data,
                    );
                  }
                  return const RegistrationButton(
                      newStyle: true, enabled: false);
                },
              )
            ],
          ),
        ));
  }
}
