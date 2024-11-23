class ServerEndpoint{

  ServerEndpoint._();
  static const String baseUrl = "https://api.sampleapis.com/movies/";
  static const int receiveTimeout = 5000;
  static const int connectionTimeout = 3000;
  static const String apiKeys = "1z!2z4yft121";

  static Map<String,dynamic> get headerMap{
    return {
      'Content-Type': 'application/json; charset=UTF-8',
      "key": apiKeys
    };
  }

}

enum ApiSeriesList{
  family
}
