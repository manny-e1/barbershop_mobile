class AuthenticationException implements Exception {
  final int? statusCode;
  final String? message;
  AuthenticationException(this.message, this.statusCode);
}
