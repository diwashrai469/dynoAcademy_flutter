// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_to_cart_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddtoCartResponseModel _$AddtoCartResponseModelFromJson(
    Map<String, dynamic> json) {
  return _AddtoCartResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AddtoCartResponseModel {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddtoCartResponseModelCopyWith<AddtoCartResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddtoCartResponseModelCopyWith<$Res> {
  factory $AddtoCartResponseModelCopyWith(AddtoCartResponseModel value,
          $Res Function(AddtoCartResponseModel) then) =
      _$AddtoCartResponseModelCopyWithImpl<$Res, AddtoCartResponseModel>;
  @useResult
  $Res call({String? status, String? message});
}

/// @nodoc
class _$AddtoCartResponseModelCopyWithImpl<$Res,
        $Val extends AddtoCartResponseModel>
    implements $AddtoCartResponseModelCopyWith<$Res> {
  _$AddtoCartResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddtoCartResponseModelImplCopyWith<$Res>
    implements $AddtoCartResponseModelCopyWith<$Res> {
  factory _$$AddtoCartResponseModelImplCopyWith(
          _$AddtoCartResponseModelImpl value,
          $Res Function(_$AddtoCartResponseModelImpl) then) =
      __$$AddtoCartResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? message});
}

/// @nodoc
class __$$AddtoCartResponseModelImplCopyWithImpl<$Res>
    extends _$AddtoCartResponseModelCopyWithImpl<$Res,
        _$AddtoCartResponseModelImpl>
    implements _$$AddtoCartResponseModelImplCopyWith<$Res> {
  __$$AddtoCartResponseModelImplCopyWithImpl(
      _$AddtoCartResponseModelImpl _value,
      $Res Function(_$AddtoCartResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$AddtoCartResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddtoCartResponseModelImpl implements _AddtoCartResponseModel {
  _$AddtoCartResponseModelImpl({this.status, this.message});

  factory _$AddtoCartResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddtoCartResponseModelImplFromJson(json);

  @override
  final String? status;
  @override
  final String? message;

  @override
  String toString() {
    return 'AddtoCartResponseModel(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddtoCartResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddtoCartResponseModelImplCopyWith<_$AddtoCartResponseModelImpl>
      get copyWith => __$$AddtoCartResponseModelImplCopyWithImpl<
          _$AddtoCartResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddtoCartResponseModelImplToJson(
      this,
    );
  }
}

abstract class _AddtoCartResponseModel implements AddtoCartResponseModel {
  factory _AddtoCartResponseModel(
      {final String? status,
      final String? message}) = _$AddtoCartResponseModelImpl;

  factory _AddtoCartResponseModel.fromJson(Map<String, dynamic> json) =
      _$AddtoCartResponseModelImpl.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$AddtoCartResponseModelImplCopyWith<_$AddtoCartResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
