abstract class SplashRepository {
  Future<void> startServer({required String host, required int port});
  Future<void> connectToServer({required String host, required int port});
}
