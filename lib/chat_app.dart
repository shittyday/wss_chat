import 'package:flutter/material.dart';
import 'package:wss_chat/common/chat_routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ChatApp extends StatelessWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Messenger',
      onGenerateRoute: ChatRoutes.onGenerateRoute,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
