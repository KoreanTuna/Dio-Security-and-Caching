import 'package:freezed_annotation/freezed_annotation.dart';
part 'token_entity.g.dart';
part 'token_entity.freezed.dart';

@freezed
abstract class TokenEntity with _$TokenEntity {
  const factory TokenEntity({
    required String accessToken,
    required String refreshToken,
  }) = _TokenEntity;

  factory TokenEntity.fromJson(Map<String, dynamic> json) =>
      _$TokenEntityFromJson(json);
}
