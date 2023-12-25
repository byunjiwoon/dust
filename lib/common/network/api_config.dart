class ApiConfig {
  ApiConfig._();

  static const serviceKey =
      "6Ht6tLR3X9ZykdziAGVFjTO4oKzsXNS/W9u04jKFCs+v9+93SQATnXKzbijFR4FWAzliHSnbU3KMqNDNvkKD7g==";
  static const String baseUrl = "http://apis.data.go.kr/B552584/ArpltnStatsSvc";
  static const Duration receiveTimeout = Duration(milliseconds: 15000);
  static const Duration connectionTimeout = Duration(milliseconds: 15000);
  static const String dust = "/getCtprvnMesureLIst";
  static const header = {
    'content-Type': 'application/json',
  };
}
