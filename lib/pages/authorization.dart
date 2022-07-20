import 'package:flutter/material.dart';
import 'package:wss_chat/common/app_icons.dart';
import 'package:wss_chat/common/app_text_style.dart';
import 'package:wss_chat/uikits/animated_text_container.dart';
import 'package:wss_chat/uikits/drop_shadow_image.dart';
import 'package:wss_chat/uikits/filled_container.dart';
import 'package:wss_chat/uikits/login_button.dart';

class Authorization extends StatelessWidget {
  const Authorization({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final checked = ValueNotifier(false);
    return CustomPaint(
      painter: const FilledContainer(color: Colors.white),
      child: Stack(
        children: [
          Align(
              alignment: Alignment.center,
              child: ValueListenableBuilder<bool>(
                  valueListenable: checked,
                  builder: (context, value, child) {
                    return DropShadowImage(
                      scale: 1,
                      image: Image.asset(AppIcons.applogo,
                          colorBlendMode: BlendMode.modulate,
                          color: value
                              ? const Color.fromRGBO(251, 154, 100, 1)
                              : null),
                      blurRadius: 18,
                      offset: const Offset(0, 4),
                    );
                  })),
          Positioned(
              bottom: 100,
              left: 0,
              right: 0,
              child: LoginButton(value: checked)),
          Positioned(
              bottom: 80,
              left: 0,
              right: 0,
              child: Text('Регистрация',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.objSans15W800.copyWith(
                      color: const Color.fromRGBO(110, 201, 230, 1)))),
          const Align(
              alignment: Alignment(0, -0.3), child: AnimatedTextContainer()),
          Align(
            alignment: Alignment.center,
            child: Text('MESSENGER',
                textAlign: TextAlign.center,
                style:
                    AppTextStyle.objSans12W400.copyWith(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
