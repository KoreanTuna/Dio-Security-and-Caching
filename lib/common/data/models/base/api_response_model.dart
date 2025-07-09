import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response_model.g.dart';
part 'api_response_model.freezed.dart';

/// Success example reponse
// {
//   "code": "2000",
//   "message": "Success",
//   "result": {
//     "id": 1,
//     "name": "Minwoo"
//   }
// }

/// Error example response
/// {
///   "code": "4000",
///   "message": "Bad Request",
/// }

@Freezed(genericArgumentFactories: true)
abstract class ApiResponseModel<T> with _$ApiResponseModel<T> {
  const factory ApiResponseModel({
    required String code,
    @Default('') String message,
    T? result,
  }) = _ApiResponseModel;

  factory ApiResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$ApiResponseModelFromJson(json, fromJsonT);
}
