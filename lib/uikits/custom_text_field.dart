import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.icon,
      this.retryPassword = false,
      this.password = false,
      this.currentPassword})
      : super(key: key);
  final Icon icon;
  final String hintText;
  final TextEditingController controller;
  final bool password;
  final bool retryPassword;
  final TextEditingController? currentPassword;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  String? errorText;
  bool hidePassword = true;
  @override
  void initState() {
    super.initState();
    widget.currentPassword?.addListener(() {
      validatePassword();
    });
    widget.controller.addListener(() {
      if (widget.retryPassword) {
        validatePassword();
      } else if (widget.controller.text == '') {
        setState(() {
          errorText = 'Empty field';
        });
      } else {
        setState(() {
          errorText = null;
        });
      }
    });
  }

  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: TextField(
        controller: widget.controller,
        textAlign: TextAlign.left,
        keyboardAppearance: Theme.of(context).brightness,
        obscureText: hidePassword && widget.password,
        decoration: InputDecoration(
          errorText: errorText,
          icon: widget.icon,
          suffix: widget.password
              ? IconButton(
                  alignment: Alignment.center,
                  padding: EdgeInsets.zero,
                  iconSize: 25,
                  visualDensity: VisualDensity.adaptivePlatformDensity,
                  splashRadius: 1,
                  onPressed: () {
                    setState(() {
                      hidePassword = !hidePassword;
                    });
                  },
                  icon: hidePassword
                      ? const Icon(Icons.visibility_off_outlined,
                          color: Color.fromRGBO(110, 201, 230, 1))
                      : const Icon(Icons.visibility_outlined,
                          color: Color.fromRGBO(110, 201, 230, 1)))
              : null,
          hintText: widget.hintText,
        ),
      ),
    );
  }

  void validatePassword() {
    bool validate = (widget.currentPassword?.text == widget.controller.text) &&
        widget.controller.text != '';
    setState(() {
      errorText = validate ? null : 'Wrong Password';
    });
  }
}
