import '../../../../core/constants/exports.dart';

part 'post_model.g.dart';

@JsonSerializable()
class PostModel {
  PostModel({
    this.profileUrl,
    this.name,
    this.date,
    this.text,
    this.images,
  });

  final String? profileUrl;
  final String? name;
  final String? date;
  final String? text;
  final List<String>? images;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  Map<String, dynamic> toJson() => _$PostModelToJson(this);
}
