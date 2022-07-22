import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wss_chat/common/routes_const.dart';
import 'package:wss_chat/controllers/authorize.dart';
import 'package:wss_chat/states/authorize_state.dart';
import 'package:wss_chat/uikits/loader.dart';

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  @override
  void initState() {
    super.initState();
    context.read<Authorize>().login(name: 'Alex', password: '1234');
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<Authorize, AuthorizeState>(
        listener: (context, state) {
          switch (state) {
            case AuthorizeState.authorized:
              Navigator.of(context).pushNamed(AppRoutes.home);
              break;
            case AuthorizeState.unauthorized:
              Navigator.of(context).pushNamed(AppRoutes.home);
              break;
            case AuthorizeState.failure:
              Navigator.of(context).pushNamed(AppRoutes.home);
              break;
            default:
              break;
          }
        },
        child: const Scaffold(body: Center(child: Loader())));
  }
}
