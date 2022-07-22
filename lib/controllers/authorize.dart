import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wss_chat/api/authorize_api.dart';
import 'package:wss_chat/models/user.dart';
import 'package:wss_chat/states/authorize_state.dart';

class Authorize extends Cubit<AuthorizeState> {
  Authorize() : super(AuthorizeState.init);
  final _api = AuthorizeApi();

  void login({required String name, required String password}) async {
    try {
      var token = await _api.login(name: name, password: password);
      if (token != '') {
        emit(AuthorizeState.authorized);
      } else {
        emit(AuthorizeState.failure);
      }
    } catch (e) {
      emit(AuthorizeState.failure);
    }
  }

  void logout({required String name}) async {
    try {
      if (await _api.logout(name: name)) {
        emit(AuthorizeState.unauthorized);
      } else {
        emit(AuthorizeState.failure);
      }
    } catch (e) {
      emit(AuthorizeState.failure);
    }
  }

  void register({required User user}) async {
    try {
      var token = await _api.register(user: user);
      if (token != '') {
        emit(AuthorizeState.authorized);
      } else {
        emit(AuthorizeState.failure);
      }
    } catch (e) {
      emit(AuthorizeState.failure);
    }
  }
}
