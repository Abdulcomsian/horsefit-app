import '../../../../core/constants/exports.dart';

part 'main_response_model.g.dart';

@JsonSerializable()
class MainResponse {
  MainResponse({
    required this.success,
    required this.code,
    required this.message,
    this.data,
  });

  bool success;
  int code;
  String message;
  DataModel? data;

  factory MainResponse.fromJson(Map<String, dynamic> json) =>
      _$MainResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MainResponseToJson(this);
}
