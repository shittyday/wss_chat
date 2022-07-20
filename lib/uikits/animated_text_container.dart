import 'package:flutter/material.dart';
import 'package:wss_chat/common/app_text_style.dart';

class AnimatedTextContainer extends StatefulWidget {
  const AnimatedTextContainer({Key? key}) : super(key: key);

  @override
  State<AnimatedTextContainer> createState() => _AnimatedTextContainerState();
}

class _AnimatedTextContainerState extends State<AnimatedTextContainer> {
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(
          const Duration(milliseconds: 500), () => _visible = true),
      builder: (context, snapshot) {
        return AnimatedOpacity(
            opacity: _visible ? 1 : 0,
            duration: const Duration(milliseconds: 500),
            child: Text('Привет, мой сладкий\nпирожочек',
                textAlign: TextAlign.center,
                style:
                    AppTextStyle.objSans13W400.copyWith(color: Colors.black)));
      },
    );
  }
}
