class SocketConfig {
  static const String SOCKET_HOST = '10.144.89.41';
  static const int SOCKET_PORT = 9000;
  static const String BASE_URL = 'http://$SOCKET_HOST:8082';
  static const String E_BOOK_SENT_FILE_URL = '$BASE_URL/v1/api/books';
  static const String ARTICLES_SENT_FILE_URL = '$BASE_URL/v1/api/articles';
  static const String E_LETTER_SENT_FILE_URL = "$BASE_URL/v1/api/e-letters";
}
