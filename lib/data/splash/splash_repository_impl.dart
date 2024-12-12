import 'dart:developer';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:iut_ecms/domain/repos/splash_repository.dart';

@Injectable(as: SplashRepository)
class SplashRepositoryImpl extends SplashRepository {
  late ServerSocket _serverSocket;
  late Socket _socket;

  @override
  Future<void> startServer({required String host, required int port}) async {
    _serverSocket = await ServerSocket.bind(host, port);
    log("Mock server started on $host:$port");

    _serverSocket.listen((Socket client) {
      log("Client connected: ${client.remoteAddress}:${client.remotePort}");

      client.write("Welcome to the mock server!");

      client.listen((data) {
        final message = String.fromCharCodes(data);
        log("Received from client: $message");

        client.write("Server received: $message");
      }, onDone: () {
        log("Client disconnected.");
      });
    });
  }

  @override
  Future<void> connectToServer({required String host, required int port}) async {
    try {
      _socket = await Socket.connect(host, port);

      log('Connected to: ${_socket.remoteAddress.address}:${_socket.remotePort}');

      _socket.listen(
        (data) {
          final message = String.fromCharCodes(data);
          log('Received from server: $message');
        },
        onError: (error) {
          log('Error occurred: $error');
        },
        onDone: () {
          log('Connection closed');
        },
      );
    } catch (e) {
      log('Error connecting to server: $e');
    }
  }
}
