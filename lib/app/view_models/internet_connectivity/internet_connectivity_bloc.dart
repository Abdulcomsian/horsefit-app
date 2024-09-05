import '../../../core/constants/exports.dart';

part 'internet_connectivity_state.dart';
part 'internet_connectivity_event.dart';
part 'internet_connectivity_bloc.freezed.dart';

class InternetConnectivityBloc
    extends Bloc<InternetConnectivityEvent, InternetConnectivityState> {
  StreamSubscription<List<ConnectivityResult>>? _connectivitySubscription;

  InternetConnectivityBloc()
      : super(const InternetConnectivityState.internetConnectivityState()) {
    on<NetworkStatusChanged>(_onNetworkStatusChanged);
    _connectivitySubscription = Connectivity().onConnectivityChanged.listen(
          (result) => add(
              NetworkStatusChanged(status: _getNetworkStatus(result.first))),
        );
  }

  void _onNetworkStatusChanged(
      NetworkStatusChanged event, Emitter<InternetConnectivityState> emit) {
    emit(state.copyWith(status: event.status));
  }

  NetworkStatus _getNetworkStatus(ConnectivityResult result) {
    return result == ConnectivityResult.mobile ||
            result == ConnectivityResult.wifi
        ? NetworkStatus.online
        : NetworkStatus.offline;
  }

  @override
  Future<void> close() {
    _connectivitySubscription?.cancel();
    return super.close();
  }
}
