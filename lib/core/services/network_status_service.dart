import '../constants/exports.dart';

class NetworkStatusService {
  StreamController<NetworkStatus> networkStatusController =
      StreamController<NetworkStatus>();
  NetworkStatus networkStatus = NetworkStatus.online;

  NetworkStatusService() {
    Connectivity().onConnectivityChanged.listen((result) =>
        networkStatusController.add(_getNetworkStatus(result.first)));
  }

  NetworkStatus _getNetworkStatus(ConnectivityResult result) {
    NetworkStatus netState =
        result == ConnectivityResult.mobile || result == ConnectivityResult.wifi
            ? NetworkStatus.online
            : NetworkStatus.offline;
    networkStatus = netState;
    return netState;
  }
}
