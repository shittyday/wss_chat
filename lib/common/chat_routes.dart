import 'package:flutter/material.dart';
import 'package:wss_chat/common/routes_const.dart';
import 'package:wss_chat/pages/authorization.dart';
import 'package:wss_chat/pages/home.dart';
import 'package:wss_chat/pages/init.dart';
import 'package:wss_chat/pages/registration.dart';

class ChatRoutes {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.chat:
        break;
      case AppRoutes.home:
        return MaterialPageRoute(builder: (context) => const Home());
      case AppRoutes.authorization:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return const Authorization();
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return ScaleTransition(
                filterQuality: FilterQuality.high,
                scale: animation,
                child: RotationTransition(turns: animation, child: child));
          },
        );

      case AppRoutes.registration:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return const Registraition();
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return ScaleTransition(
                filterQuality: FilterQuality.high,
                scale: animation,
                child: RotationTransition(turns: animation, child: child));
          },
        );
      default:
        return MaterialPageRoute(builder: (context) => const InitPage());
    }
    return null;
  }
}
