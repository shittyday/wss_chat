import 'package:wss_chat/common/environment_config.dart';

typedef Json = Map<String, dynamic>;

enum AuthorizeStatus { authorized, unauthorized, failure }

final chatEnvironmet = ChatEnvironmet.internal();

class ChatEnvironmet {
  ChatEnvironmet._() {
    _baseConfig = EnvironmentConfig(baseAddress: _initServerEnv());
  }
  factory ChatEnvironmet.internal() {
    return ChatEnvironmet._();
  }
  static String _initServerEnv() {
    return const String.fromEnvironment('SERVER', defaultValue: _baseAddress);
  }

  static const String _baseAddress = 'http://10.0.2.2/';
  late EnvironmentConfig _baseConfig;
  EnvironmentConfig get environmentConfig => _baseConfig;
}
