class ErrorCode {
  static const String userInvalid = "ACCOUNT_BLOCKED";
  static const String alreadyUsed = "ALREADY_USED";
  static const String expired = "EXPIRED";
  static const String dataInvalid = "DATA_INVALID";
  static const String notFound = "NOT_FOUND";
  static const String playedWelcomeGame = "PLAYED_WELCOME_GAME";
  static const String limitedPoint = "LIMITED_POINT";
  static const String canNotJoin = "CAN_NOT_JOIN";
}

class NetworkConstants {
  // receiveTimeout
  static const int receiveTimeout = 30000;

  // connectTimeout
  static const int connectionTimeout = 30000;

  // sendTimeout
  static const int sendTimeout = 30000;
}

class NetworkErrorMessage {
  static String noInternet = "Thiết bị không có kết nối Internet.";
  static String notResponding = "Kết nối với máy chủ không thành công.";
  static String unknown = "Đã xảy ra lỗi. Vui lòng thử lại.";

  // static String unexpectedError = "Unexpected Error";
  // static String defaultError = "Có lỗi xảy ra.";
  // static String requestCancelled = "Request Cancelled.";
  // static String unauthorizedRequest = "Unauthorized Request.";
  // static String badRequest = "Bad request.";
  // static String notFound = "Not Found.";
  // static String methodNotAllowed = "Method Allowed.";
  // static String notAcceptable = "Not Acceptable";
  // static String requestTimeout = "Connection Request Timeout.";
  // static String sendTimeout = "Send Timeout in connection with API server.";
  // static String receiveTimeout =
  //     "Receive Timeout in connection with API server.";
  // static String conflict = "Error due to a conflict.";
  // static String internalServerError = "Internal Server Error.";
  // static String notImplemented = "Not Implemented.";
  // static String serviceUnavailable = "Service Unavailable.";
  // static String unableToProcess = "Unable to process the data.";
  // static String formatException = "Format Exception.";
}
