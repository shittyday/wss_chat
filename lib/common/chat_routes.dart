import 'package:flutter/material.dart';
import 'package:wss_chat/common/routes_const.dart';
import 'package:wss_chat/pages/authorization.dart';
import 'package:wss_chat/pages/home.dart';
import 'package:wss_chat/pages/init.dart';
import 'package:wss_chat/pages/login.dart';
import 'package:wss_chat/pages/registration.dart';

class ChatRoutes {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.chat:
        break;
      case AppRoutes.home:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return const Home();
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            final tween = Tween(begin: begin, end: end);
            final offsetAnimation = animation.drive(tween);

            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        );

      case AppRoutes.authorization:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return const Authorization();
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            final tween = Tween(begin: begin, end: end);
            final offsetAnimation = animation.drive(tween);

            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        );

      case AppRoutes.registration:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return const Registraition();
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            final tween = Tween(begin: begin, end: end);
            final offsetAnimation = animation.drive(tween);

            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        );
      case AppRoutes.login:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return const Login();
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            final tween = Tween(begin: begin, end: end);
            final offsetAnimation = animation.drive(tween);

            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        );
      default:
        return MaterialPageRoute(builder: (context) => const InitPage());
    }
    return null;
  }
}
