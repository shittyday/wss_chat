import 'package:flutter/material.dart';
import 'package:wss_chat/common/app_text_style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  Color color = const Color.fromRGBO(110, 201, 230, 1);
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        onTapDown: (down) {
          setState(() {
            if (!checked) {
              color = const Color.fromRGBO(110, 201, 230, 1).withOpacity(0.2);
              checked = !checked;
            } else {
              checked = !checked;
              color = const Color.fromRGBO(110, 201, 230, 1);
            }
          });
        },
        onTapUp: (up) {
          setState(() {
            if (!checked) {
              color = const Color.fromRGBO(110, 201, 230, 1).withOpacity(0.2);
              checked = !checked;
            } else {
              checked = !checked;
              color = const Color.fromRGBO(110, 201, 230, 1);
            }
          });
        },
        onTapCancel: () {},
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            child: Container(
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(21)),
                height: 50,
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 6.29,
                    right: MediaQuery.of(context).size.width / 6.29,
                    top: MediaQuery.of(context).size.height / 3,
                    bottom: 10),
                alignment: Alignment.center,
                child: Text(AppLocalizations.of(context).login,
                    textWidthBasis: TextWidthBasis.longestLine,
                    style: AppTextStyle.objSans15W800.copyWith(
                        color: !checked
                            ? Colors.white
                            : const Color.fromRGBO(110, 201, 230, 1))))));
  }
}
