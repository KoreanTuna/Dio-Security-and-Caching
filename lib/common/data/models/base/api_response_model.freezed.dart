// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiResponseModel<T> {

 String get code; String get message; T? get result;
/// Create a copy of ApiResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiResponseModelCopyWith<T, ApiResponseModel<T>> get copyWith => _$ApiResponseModelCopyWithImpl<T, ApiResponseModel<T>>(this as ApiResponseModel<T>, _$identity);

  /// Serializes this ApiResponseModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiResponseModel<T>&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.result, result));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message,const DeepCollectionEquality().hash(result));

@override
String toString() {
  return 'ApiResponseModel<$T>(code: $code, message: $message, result: $result)';
}


}

/// @nodoc
abstract mixin class $ApiResponseModelCopyWith<T,$Res>  {
  factory $ApiResponseModelCopyWith(ApiResponseModel<T> value, $Res Function(ApiResponseModel<T>) _then) = _$ApiResponseModelCopyWithImpl;
@useResult
$Res call({
 String code, String message, T? result
});




}
/// @nodoc
class _$ApiResponseModelCopyWithImpl<T,$Res>
    implements $ApiResponseModelCopyWith<T, $Res> {
  _$ApiResponseModelCopyWithImpl(this._self, this._then);

  final ApiResponseModel<T> _self;
  final $Res Function(ApiResponseModel<T>) _then;

/// Create a copy of ApiResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? message = null,Object? result = freezed,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}

}


/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _ApiResponseModel<T> implements ApiResponseModel<T> {
  const _ApiResponseModel({required this.code, this.message = '', this.result});
  factory _ApiResponseModel.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$ApiResponseModelFromJson(json,fromJsonT);

@override final  String code;
@override@JsonKey() final  String message;
@override final  T? result;

/// Create a copy of ApiResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiResponseModelCopyWith<T, _ApiResponseModel<T>> get copyWith => __$ApiResponseModelCopyWithImpl<T, _ApiResponseModel<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$ApiResponseModelToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiResponseModel<T>&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.result, result));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message,const DeepCollectionEquality().hash(result));

@override
String toString() {
  return 'ApiResponseModel<$T>(code: $code, message: $message, result: $result)';
}


}

/// @nodoc
abstract mixin class _$ApiResponseModelCopyWith<T,$Res> implements $ApiResponseModelCopyWith<T, $Res> {
  factory _$ApiResponseModelCopyWith(_ApiResponseModel<T> value, $Res Function(_ApiResponseModel<T>) _then) = __$ApiResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String code, String message, T? result
});




}
/// @nodoc
class __$ApiResponseModelCopyWithImpl<T,$Res>
    implements _$ApiResponseModelCopyWith<T, $Res> {
  __$ApiResponseModelCopyWithImpl(this._self, this._then);

  final _ApiResponseModel<T> _self;
  final $Res Function(_ApiResponseModel<T>) _then;

/// Create a copy of ApiResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? message = null,Object? result = freezed,}) {
  return _then(_ApiResponseModel<T>(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

// dart format on
