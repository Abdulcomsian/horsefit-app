import '../../../../core/constants/exports.dart';

part 'data_model.g.dart';

@JsonSerializable()
class DataModel {
  DataModel();

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);

  Map<String, dynamic> toJson() => _$DataModelToJson(this);
}
