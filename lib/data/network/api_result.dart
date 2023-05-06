class ApiResult<T, V> {
  T? response;
  V? exception;

  ApiResult({this.response, this.exception});

  bool isSuccessful() {
    if (exception == null && response != null) {
      return true;
    }
    return false;
  }
}
