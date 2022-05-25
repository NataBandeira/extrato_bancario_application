abstract class RemoteSource {
  Future<dynamic> get({
    required String url,
    Map? headers,
  });
}
