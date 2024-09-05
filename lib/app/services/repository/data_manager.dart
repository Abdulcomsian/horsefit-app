// ignore_for_file: unused_field

import '../../../core/constants/exports.dart';

class DataManager implements DataManagerImp {
  DataManager({
    required NetworkApiClient networkApiClient,
    required ErrorHandler errorHandler,
  })  : _networkApiClient = networkApiClient,
        _errorHandler = errorHandler
        ;

  late final NetworkApiClient _networkApiClient;
  late final ErrorHandler _errorHandler;
  

}
