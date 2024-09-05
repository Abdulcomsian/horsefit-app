import '../../../core/constants/exports.dart';
import 'package:retrofit/retrofit.dart';

part 'network_api_client.g.dart';

@RestApi(baseUrl: '')
abstract class NetworkApiClient {
  factory NetworkApiClient(Dio dio, {String baseUrl}) = _NetworkApiClient;

 }
