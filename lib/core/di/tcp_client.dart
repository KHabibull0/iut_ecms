// import 'dart:convert';
// import 'dart:developer';
// import 'dart:io';
//
// class TcpClient {
//   late Socket _socket;
//   final String host;
//   final int port;
//
//   TcpClient(this.host, this.port);
//
//   Future<void> connect() async {
//     try {
//       _socket = await Socket.connect(host, port);
//       log('Connected to: ${_socket.remoteAddress.address}:${_socket.remotePort}');
//     } catch (e) {
//       log('Error connecting to socket: $e');
//     }
//  }
//
//   void sendMessage(String message) {
//     if (_socket != null && _socket.remoteAddress.address.isNotEmpty) {
//       _socket.add(utf8.encode(message));
//       _socket.flush();
//       log('Message sent: $message');
//     } else {
//       log('No socket connection. Message not sent.');
//     }
//   }
//
//   void listen(Function(String message) onMessageReceived) {
//     _socket.listen((data) {
//       final message = utf8.decode(data);
//       onMessageReceived(message);
//     }, onError: (error) {
//       log('Socket error: $error');
//     }, onDone: () {
//       log('Socket connection closed');
//     });
//   }
//
//   void close() {
//     _socket.close();
//     log('Socket connection closed.');
//   }
// }
