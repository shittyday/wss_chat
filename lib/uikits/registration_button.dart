import 'package:flutter/material.dart';
import 'package:wss_chat/common/app_text_style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RegistrationButton extends StatefulWidget {
  const RegistrationButton({Key? key}) : super(key: key);

  @override
  State<RegistrationButton> createState() => _RegistrationButtonState();
}

class _RegistrationButtonState extends State<RegistrationButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(AppLocalizations.of(context).registration,
          textAlign: TextAlign.center,
          style: AppTextStyle.objSans15W800
              .copyWith(color: const Color.fromRGBO(110, 201, 230, 1))),
    );
  }
}
