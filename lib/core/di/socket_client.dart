// import 'dart:convert';
// import 'dart:developer';
//
// import 'package:injectable/injectable.dart';
// import 'package:iut_ecms/core/constants/constants.dart';
// import 'package:iut_ecms/core/di/tcp_client.dart';
// import 'package:iut_ecms/domain/models/auth_interceptor/auth_interceptor.dart';
// import 'package:iut_ecms/domain/models/tokens/tokens.dart';
// import 'package:jwt_decoder/jwt_decoder.dart';
//
// @injectable
// class SocketClient {
//   final TcpClient tcpClient;
//   final AuthInterceptor authInterceptor;
//
//   SocketClient(this.tcpClient, this.authInterceptor);
//
//   Future<void> connectAndListen() async {
//     try {
//       String? accessToken = await _getAccessToken();
//
//       if (accessToken == null) {
//         log("No access token available.");
//         return;
//       }
//
//       await tcpClient.connect(Constants.uniCmsSocketUrl, Constants.uniCmsSocketPort);
//
//       final initialMessage = {'type': 'handshake', 'access_token': accessToken};
//       tcpClient.sendMessage(json.encode(initialMessage));
//
//       tcpClient.listen((message) {
//         log('Message from server: $message');
//       });
//     } catch (e) {
//       log("Error connecting to socket: $e");
//     }
//   }
//
//   Future<void> sendMessage(String message) async {
//     try {
//       String? accessToken = await _getAccessToken();
//
//       if (accessToken == null) {
//         log("Access token is not available. Cannot send message.");
//         return;
//       }
//
//       final messageWithToken = {
//         'message': message,
//         'access_token': accessToken,
//       };
//
//       tcpClient.sendMessage(json.encode(messageWithToken));
//     } catch (e) {
//       log("Error sending message: $e");
//     }
//   }
//
//   Future<String?> _getAccessToken() async {
//     try {
//       final Tokens? tokens = await authInterceptor._storage.tokens.call();
//
//       if (tokens == null || JwtDecoder.isExpired(tokens.access)) {
//         final newToken = await authInterceptor.refreshToken(tokens?.refresh ?? '');
//         return newToken;
//       }
//
//       return tokens.access;
//     } catch (e) {
//       return null;
//     }
//   }
// }
