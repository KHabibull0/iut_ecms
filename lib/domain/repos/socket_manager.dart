import 'dart:async';
import 'dart:io';

class SocketManager {
  static final SocketManager _instance = SocketManager._internal();
  late Socket _socket;
  final StreamController<String> _dataController = StreamController.broadcast();
  bool _isConnected = false;

  factory SocketManager() => _instance;

  SocketManager._internal();

  Stream<String> get dataStream => _dataController.stream;

  Future<void> connect(String host, int port) async {
    if (_isConnected) return;
    try {
      _socket = await Socket.connect(host, port);
      _isConnected = true;
      _socket.listen((data) {
        final message = String.fromCharCodes(data);
        _dataController.add(message);
      });
    } catch (e) {
      _isConnected = false;
      rethrow;
    }
  }

  void send(String message) {
    if (_isConnected) _socket.write(message);
  }

  void close() {
    if (_isConnected) {
      _socket.close();
      _isConnected = false;
    }
  }
}
