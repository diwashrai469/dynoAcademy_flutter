// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_status_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseStatusResponseModel _$CourseStatusResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CourseStatusResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CourseStatusResponseModel {
  String? get status => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseStatusResponseModelCopyWith<CourseStatusResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseStatusResponseModelCopyWith<$Res> {
  factory $CourseStatusResponseModelCopyWith(CourseStatusResponseModel value,
          $Res Function(CourseStatusResponseModel) then) =
      _$CourseStatusResponseModelCopyWithImpl<$Res, CourseStatusResponseModel>;
  @useResult
  $Res call({String? status, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CourseStatusResponseModelCopyWithImpl<$Res,
        $Val extends CourseStatusResponseModel>
    implements $CourseStatusResponseModelCopyWith<$Res> {
  _$CourseStatusResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseStatusResponseModelImplCopyWith<$Res>
    implements $CourseStatusResponseModelCopyWith<$Res> {
  factory _$$CourseStatusResponseModelImplCopyWith(
          _$CourseStatusResponseModelImpl value,
          $Res Function(_$CourseStatusResponseModelImpl) then) =
      __$$CourseStatusResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CourseStatusResponseModelImplCopyWithImpl<$Res>
    extends _$CourseStatusResponseModelCopyWithImpl<$Res,
        _$CourseStatusResponseModelImpl>
    implements _$$CourseStatusResponseModelImplCopyWith<$Res> {
  __$$CourseStatusResponseModelImplCopyWithImpl(
      _$CourseStatusResponseModelImpl _value,
      $Res Function(_$CourseStatusResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CourseStatusResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseStatusResponseModelImpl implements _CourseStatusResponseModel {
  _$CourseStatusResponseModelImpl({this.status, this.data});

  factory _$CourseStatusResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseStatusResponseModelImplFromJson(json);

  @override
  final String? status;
  @override
  final Data? data;

  @override
  String toString() {
    return 'CourseStatusResponseModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseStatusResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseStatusResponseModelImplCopyWith<_$CourseStatusResponseModelImpl>
      get copyWith => __$$CourseStatusResponseModelImplCopyWithImpl<
          _$CourseStatusResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseStatusResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CourseStatusResponseModel implements CourseStatusResponseModel {
  factory _CourseStatusResponseModel({final String? status, final Data? data}) =
      _$CourseStatusResponseModelImpl;

  factory _CourseStatusResponseModel.fromJson(Map<String, dynamic> json) =
      _$CourseStatusResponseModelImpl.fromJson;

  @override
  String? get status;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$CourseStatusResponseModelImplCopyWith<_$CourseStatusResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "_id")
  String? get sId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "course_id")
  String? get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: "course_status")
  String? get courseStatus => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  @JsonKey(name: "lesson_completed")
  List<String>? get lessonCompleted => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "_v")
  int? get iV => throw _privateConstructorUsedError;
  @JsonKey(name: "last_plated_lesson_id")
  String? get lastPlayedLessonId => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? sId,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "course_id") String? courseId,
      @JsonKey(name: "course_status") String? courseStatus,
      bool? active,
      @JsonKey(name: "lesson_completed") List<String>? lessonCompleted,
      String? createdAt,
      String? updatedAt,
      @JsonKey(name: "_v") int? iV,
      @JsonKey(name: "last_plated_lesson_id") String? lastPlayedLessonId,
      String? id});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sId = freezed,
    Object? userId = freezed,
    Object? courseId = freezed,
    Object? courseStatus = freezed,
    Object? active = freezed,
    Object? lessonCompleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? iV = freezed,
    Object? lastPlayedLessonId = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      sId: freezed == sId
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseStatus: freezed == courseStatus
          ? _value.courseStatus
          : courseStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      lessonCompleted: freezed == lessonCompleted
          ? _value.lessonCompleted
          : lessonCompleted // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      iV: freezed == iV
          ? _value.iV
          : iV // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPlayedLessonId: freezed == lastPlayedLessonId
          ? _value.lastPlayedLessonId
          : lastPlayedLessonId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? sId,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "course_id") String? courseId,
      @JsonKey(name: "course_status") String? courseStatus,
      bool? active,
      @JsonKey(name: "lesson_completed") List<String>? lessonCompleted,
      String? createdAt,
      String? updatedAt,
      @JsonKey(name: "_v") int? iV,
      @JsonKey(name: "last_plated_lesson_id") String? lastPlayedLessonId,
      String? id});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sId = freezed,
    Object? userId = freezed,
    Object? courseId = freezed,
    Object? courseStatus = freezed,
    Object? active = freezed,
    Object? lessonCompleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? iV = freezed,
    Object? lastPlayedLessonId = freezed,
    Object? id = freezed,
  }) {
    return _then(_$DataImpl(
      sId: freezed == sId
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseStatus: freezed == courseStatus
          ? _value.courseStatus
          : courseStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      lessonCompleted: freezed == lessonCompleted
          ? _value._lessonCompleted
          : lessonCompleted // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      iV: freezed == iV
          ? _value.iV
          : iV // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPlayedLessonId: freezed == lastPlayedLessonId
          ? _value.lastPlayedLessonId
          : lastPlayedLessonId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  _$DataImpl(
      {@JsonKey(name: "_id") this.sId,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "course_id") this.courseId,
      @JsonKey(name: "course_status") this.courseStatus,
      this.active,
      @JsonKey(name: "lesson_completed") final List<String>? lessonCompleted,
      this.createdAt,
      this.updatedAt,
      @JsonKey(name: "_v") this.iV,
      @JsonKey(name: "last_plated_lesson_id") this.lastPlayedLessonId,
      this.id})
      : _lessonCompleted = lessonCompleted;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? sId;
  @override
  @JsonKey(name: "user_id")
  final String? userId;
  @override
  @JsonKey(name: "course_id")
  final String? courseId;
  @override
  @JsonKey(name: "course_status")
  final String? courseStatus;
  @override
  final bool? active;
  final List<String>? _lessonCompleted;
  @override
  @JsonKey(name: "lesson_completed")
  List<String>? get lessonCompleted {
    final value = _lessonCompleted;
    if (value == null) return null;
    if (_lessonCompleted is EqualUnmodifiableListView) return _lessonCompleted;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  @JsonKey(name: "_v")
  final int? iV;
  @override
  @JsonKey(name: "last_plated_lesson_id")
  final String? lastPlayedLessonId;
  @override
  final String? id;

  @override
  String toString() {
    return 'Data(sId: $sId, userId: $userId, courseId: $courseId, courseStatus: $courseStatus, active: $active, lessonCompleted: $lessonCompleted, createdAt: $createdAt, updatedAt: $updatedAt, iV: $iV, lastPlayedLessonId: $lastPlayedLessonId, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.sId, sId) || other.sId == sId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.courseStatus, courseStatus) ||
                other.courseStatus == courseStatus) &&
            (identical(other.active, active) || other.active == active) &&
            const DeepCollectionEquality()
                .equals(other._lessonCompleted, _lessonCompleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.iV, iV) || other.iV == iV) &&
            (identical(other.lastPlayedLessonId, lastPlayedLessonId) ||
                other.lastPlayedLessonId == lastPlayedLessonId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sId,
      userId,
      courseId,
      courseStatus,
      active,
      const DeepCollectionEquality().hash(_lessonCompleted),
      createdAt,
      updatedAt,
      iV,
      lastPlayedLessonId,
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  factory _Data(
      {@JsonKey(name: "_id") final String? sId,
      @JsonKey(name: "user_id") final String? userId,
      @JsonKey(name: "course_id") final String? courseId,
      @JsonKey(name: "course_status") final String? courseStatus,
      final bool? active,
      @JsonKey(name: "lesson_completed") final List<String>? lessonCompleted,
      final String? createdAt,
      final String? updatedAt,
      @JsonKey(name: "_v") final int? iV,
      @JsonKey(name: "last_plated_lesson_id") final String? lastPlayedLessonId,
      final String? id}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get sId;
  @override
  @JsonKey(name: "user_id")
  String? get userId;
  @override
  @JsonKey(name: "course_id")
  String? get courseId;
  @override
  @JsonKey(name: "course_status")
  String? get courseStatus;
  @override
  bool? get active;
  @override
  @JsonKey(name: "lesson_completed")
  List<String>? get lessonCompleted;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(name: "_v")
  int? get iV;
  @override
  @JsonKey(name: "last_plated_lesson_id")
  String? get lastPlayedLessonId;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
