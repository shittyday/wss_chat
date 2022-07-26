import 'package:flutter/widgets.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

/// Need dispose sink
///
/// Dispose sing  method [close()]
///
/// Send message setter [sendMessage]
///
/// Get stream getter [stream]
///
final websocketSingleton = _AppWsClient();

class _AppWsClient {
  static final _AppWsClient _singleton = _AppWsClient._internal();
  late final IOWebSocketChannel _websocket;

  factory _AppWsClient() {
    return _singleton;
  }

  _AppWsClient._internal() {
    try {
      _websocket = IOWebSocketChannel.connect('ws://localhost:80',
          pingInterval: const Duration(seconds: 10));
    } on WebSocketChannelException {
      throw Exception('Error connect to server');
    }
  }

  /// Dispose sink
  ///
  Future close([int? closeCode, String? closeReason]) async =>
      await _websocket.sink.close(closeCode, closeReason);

  /// Sending message
  ///
  set sendMessage(dynamic data) => _websocket.sink.add(data);

  Stream get stream => _websocket.stream;
}
