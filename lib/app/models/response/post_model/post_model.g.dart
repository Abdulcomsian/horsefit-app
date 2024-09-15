// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostModel _$PostModelFromJson(Map<String, dynamic> json) => PostModel(
      profileUrl: json['profileUrl'] as String?,
      name: json['name'] as String?,
      date: json['date'] as String?,
      text: json['text'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$PostModelToJson(PostModel instance) => <String, dynamic>{
      'profileUrl': instance.profileUrl,
      'name': instance.name,
      'date': instance.date,
      'text': instance.text,
      'images': instance.images,
    };
