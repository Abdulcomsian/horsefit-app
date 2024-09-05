part of 'internet_connectivity_bloc.dart';

@freezed
class InternetConnectivityState with _$InternetConnectivityState {
  const factory InternetConnectivityState.internetConnectivityState(
          {@Default(NetworkStatus.online) NetworkStatus status}) =
      _InternetConnectivityState;
}
