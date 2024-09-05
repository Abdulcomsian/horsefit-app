part of 'internet_connectivity_bloc.dart';

@freezed
class InternetConnectivityEvent with _$InternetConnectivityEvent {
  const factory InternetConnectivityEvent.networkStatusChanged(
      {required NetworkStatus status}) = NetworkStatusChanged;
}
