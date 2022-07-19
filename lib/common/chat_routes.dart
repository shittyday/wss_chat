import 'package:flutter/material.dart';
import 'package:wss_chat/common/routes_const.dart';
import 'package:wss_chat/pages/authorization.dart';

class ChatRoutes {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.chat:
        break;
      default:
        return MaterialPageRoute(builder: (context) => const Authorization());
    }
    return null;
  }
}