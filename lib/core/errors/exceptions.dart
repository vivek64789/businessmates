class ServerException implements Exception {
  final String? message;
  final int? statusCode;
  final String? error;
  ServerException({this.message, this.statusCode, this.error});

  factory ServerException.fromJson(Map<String, dynamic> json) {
    return ServerException(
      message: json['message'],
      statusCode: json['statusCode'],
      error: json['error'],
    );
  }
}

class CacheException implements Exception {
  final String? message;

  CacheException({this.message});
}

class LocationException implements Exception {}
