// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_cart_course_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteCartCourseResponseModel _$DeleteCartCourseResponseModelFromJson(
    Map<String, dynamic> json) {
  return _DeleteCartCourseResponseModel.fromJson(json);
}

/// @nodoc
mixin _$DeleteCartCourseResponseModel {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteCartCourseResponseModelCopyWith<DeleteCartCourseResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCartCourseResponseModelCopyWith<$Res> {
  factory $DeleteCartCourseResponseModelCopyWith(
          DeleteCartCourseResponseModel value,
          $Res Function(DeleteCartCourseResponseModel) then) =
      _$DeleteCartCourseResponseModelCopyWithImpl<$Res,
          DeleteCartCourseResponseModel>;
  @useResult
  $Res call({String? status, String? message});
}

/// @nodoc
class _$DeleteCartCourseResponseModelCopyWithImpl<$Res,
        $Val extends DeleteCartCourseResponseModel>
    implements $DeleteCartCourseResponseModelCopyWith<$Res> {
  _$DeleteCartCourseResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$DeleteCartCourseResponseModelImplCopyWith<$Res>
    implements $DeleteCartCourseResponseModelCopyWith<$Res> {
  factory _$$DeleteCartCourseResponseModelImplCopyWith(
          _$DeleteCartCourseResponseModelImpl value,
          $Res Function(_$DeleteCartCourseResponseModelImpl) then) =
      __$$DeleteCartCourseResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? message});
}

/// @nodoc
class __$$DeleteCartCourseResponseModelImplCopyWithImpl<$Res>
    extends _$DeleteCartCourseResponseModelCopyWithImpl<$Res,
        _$DeleteCartCourseResponseModelImpl>
    implements _$$DeleteCartCourseResponseModelImplCopyWith<$Res> {
  __$$DeleteCartCourseResponseModelImplCopyWithImpl(
      _$DeleteCartCourseResponseModelImpl _value,
      $Res Function(_$DeleteCartCourseResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$DeleteCartCourseResponseModelImpl(
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
class _$DeleteCartCourseResponseModelImpl
    implements _DeleteCartCourseResponseModel {
  _$DeleteCartCourseResponseModelImpl({this.status, this.message});

  factory _$DeleteCartCourseResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DeleteCartCourseResponseModelImplFromJson(json);

  @override
  final String? status;
  @override
  final String? message;

  @override
  String toString() {
    return 'DeleteCartCourseResponseModel(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCartCourseResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCartCourseResponseModelImplCopyWith<
          _$DeleteCartCourseResponseModelImpl>
      get copyWith => __$$DeleteCartCourseResponseModelImplCopyWithImpl<
          _$DeleteCartCourseResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteCartCourseResponseModelImplToJson(
      this,
    );
  }
}

abstract class _DeleteCartCourseResponseModel
    implements DeleteCartCourseResponseModel {
  factory _DeleteCartCourseResponseModel(
      {final String? status,
      final String? message}) = _$DeleteCartCourseResponseModelImpl;

  factory _DeleteCartCourseResponseModel.fromJson(Map<String, dynamic> json) =
      _$DeleteCartCourseResponseModelImpl.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$DeleteCartCourseResponseModelImplCopyWith<
          _$DeleteCartCourseResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
