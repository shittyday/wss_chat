import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wss_chat/common/chat_routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:wss_chat/controllers/app_ws_client.dart';
import 'package:wss_chat/controllers/authorize.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as status;

class ChatApp extends StatefulWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  State<ChatApp> createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {
  @override
  void dispose() {
    websocketSingleton.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => Authorize(),
        child: MaterialApp(
          color: Colors.white,
          theme: ThemeData(
              colorScheme: ColorScheme.fromSwatch(
                      brightness: Brightness.light,
                      errorColor: Colors.red,
                      backgroundColor: Colors.white)
                  .copyWith(secondary: const Color.fromRGBO(110, 201, 230, 1))),
          title: 'Messenger',
          onGenerateRoute: ChatRoutes.onGenerateRoute,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
        ));
  }
}
