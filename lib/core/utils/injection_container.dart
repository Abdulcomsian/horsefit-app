import '../constants/exports.dart';

Future<void> initDependancies() async {
  locator.registerLazySingleton<AppRouter>(() => AppRouter());
  locator.registerLazySingleton<PermissionUtils>(() => PermissionUtils());
  locator.registerLazySingleton<DialogueUtils>(() => DialogueUtils());
  locator.registerLazySingleton<Utils>(() => Utils());
  locator.registerLazySingleton<Dio>(() => setupDio());
  locator.registerLazySingleton<NetworkApiClient>(
      () => NetworkApiClient(locator<Dio>()));
  locator.registerLazySingleton<ErrorHandler>(() => ErrorHandler());
  locator.registerLazySingleton<DataManager>(() => DataManager(
        networkApiClient: locator<NetworkApiClient>(),
        errorHandler: locator<ErrorHandler>(),
      ));
}

Dio setupDio() {
  Dio dio = Dio();
  if (kDebugMode) {
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
  }
  return dio;
}
