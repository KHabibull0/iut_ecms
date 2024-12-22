import 'dart:developer';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:iut_ecms/domain/repos/splash_repository.dart';

@Injectable(as: SplashRepository)
class SplashRepositoryImpl extends SplashRepository {
  late Socket _socket;

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

  @override
  void sentRequest({required String request}) {
    try {
      _socket.write(request);
      log('Sent request: $request');
    } catch (e) {
      log('Error sending request: $e');
    }
  }
}
