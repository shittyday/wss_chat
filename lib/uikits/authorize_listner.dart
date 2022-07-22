import 'package:flutter/cupertino.dart';
import 'package:wss_chat/models/user.dart';

class AuthorizeListner extends InheritedNotifier<ValueNotifier<User>> {
  const AuthorizeListner({super.key, required super.child, super.notifier});

  static ValueNotifier<User>? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<AuthorizeListner>()
        ?.notifier;
  }
}
