import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wss_chat/uikits/filled_container.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:wss_chat/uikits/login_button.dart';

class Authorization extends StatelessWidget {
  const Authorization({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: const FilledContainer(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Align(
              alignment: Alignment.topCenter,
              child: Text(AppLocalizations.of(context)!.helloTitle,
                  textWidthBasis: TextWidthBasis.longestLine,
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontSize: 16,
                      fontWeight: FontWeight.normal))),
          Align(
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.all(100),
                decoration: const BoxDecoration(
                    color: Colors.green, shape: BoxShape.circle),
              )),
          const Align(alignment: Alignment.bottomCenter, child: LoginButton())
        ],
      ),
    );
  }
}
