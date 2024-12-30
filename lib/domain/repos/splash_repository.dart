abstract class SplashRepository {
  Future<void> connectToServer({required String host, required int port});
  void sentRequest({required String request});
}
