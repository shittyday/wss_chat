import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  Color color = Colors.green;
  double opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        onTapDown: (down) {
          setState(() {
            if (opacity == 1.0) {
              opacity = 0.2;
            } else {
              opacity = 1.0;
            }
          });
        },
        onTapUp: (up) {
          setState(() {
            if (opacity == 1.0) {
              opacity = 0.2;
            } else {
              opacity = 1.0;
            }
          });
        },
        onTapCancel: () {},
        child: AnimatedOpacity(
            opacity: opacity,
            duration: const Duration(milliseconds: 100),
            child: Container(
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(46)),
                padding: const EdgeInsets.all(15),
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 10,
                    right: MediaQuery.of(context).size.width / 10,
                    top: MediaQuery.of(context).size.height / 3),
                alignment: Alignment.center,
                child: Text(AppLocalizations.of(context)!.login,
                    textWidthBasis: TextWidthBasis.longestLine,
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        fontSize: 16,
                        fontWeight: FontWeight.normal)))));
  }
}
