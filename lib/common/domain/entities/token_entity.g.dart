// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokenEntity _$TokenEntityFromJson(Map<String, dynamic> json) => _TokenEntity(
  accessToken: json['accessToken'] as String,
  refreshToken: json['refreshToken'] as String,
);

Map<String, dynamic> _$TokenEntityToJson(_TokenEntity instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
