// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainResponse _$MainResponseFromJson(Map<String, dynamic> json) => MainResponse(
      success: json['success'] as bool,
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MainResponseToJson(MainResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
