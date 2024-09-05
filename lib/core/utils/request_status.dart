abstract class RequestStatus {
  const RequestStatus();
}

class InitialRequestStatus extends RequestStatus {
  const InitialRequestStatus();
}

class LoadingRequestStatus extends RequestStatus {}

class SuccessRequestStatus extends RequestStatus {
  final dynamic data;
  final List<dynamic>? dataList;

  const SuccessRequestStatus({this.data, this.dataList});
}

class FailureRequestStatus extends RequestStatus {
  final int? errorCode;
  final String errorMessage;

  FailureRequestStatus({this.errorCode, required this.errorMessage});
}
