// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_courses_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyCoursesResponseModel _$MyCoursesResponseModelFromJson(
    Map<String, dynamic> json) {
  return _MyCoursesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MyCoursesResponseModel {
  String? get status => throw _privateConstructorUsedError;
  List<Data>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyCoursesResponseModelCopyWith<MyCoursesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyCoursesResponseModelCopyWith<$Res> {
  factory $MyCoursesResponseModelCopyWith(MyCoursesResponseModel value,
          $Res Function(MyCoursesResponseModel) then) =
      _$MyCoursesResponseModelCopyWithImpl<$Res, MyCoursesResponseModel>;
  @useResult
  $Res call({String? status, List<Data>? data});
}

/// @nodoc
class _$MyCoursesResponseModelCopyWithImpl<$Res,
        $Val extends MyCoursesResponseModel>
    implements $MyCoursesResponseModelCopyWith<$Res> {
  _$MyCoursesResponseModelCopyWithImpl(this._value, this._then);

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
              as List<Data>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyCoursesResponseModelImplCopyWith<$Res>
    implements $MyCoursesResponseModelCopyWith<$Res> {
  factory _$$MyCoursesResponseModelImplCopyWith(
          _$MyCoursesResponseModelImpl value,
          $Res Function(_$MyCoursesResponseModelImpl) then) =
      __$$MyCoursesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, List<Data>? data});
}

/// @nodoc
class __$$MyCoursesResponseModelImplCopyWithImpl<$Res>
    extends _$MyCoursesResponseModelCopyWithImpl<$Res,
        _$MyCoursesResponseModelImpl>
    implements _$$MyCoursesResponseModelImplCopyWith<$Res> {
  __$$MyCoursesResponseModelImplCopyWithImpl(
      _$MyCoursesResponseModelImpl _value,
      $Res Function(_$MyCoursesResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$MyCoursesResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyCoursesResponseModelImpl implements _MyCoursesResponseModel {
  const _$MyCoursesResponseModelImpl({this.status, final List<Data>? data})
      : _data = data;

  factory _$MyCoursesResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyCoursesResponseModelImplFromJson(json);

  @override
  final String? status;
  final List<Data>? _data;
  @override
  List<Data>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MyCoursesResponseModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyCoursesResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyCoursesResponseModelImplCopyWith<_$MyCoursesResponseModelImpl>
      get copyWith => __$$MyCoursesResponseModelImplCopyWithImpl<
          _$MyCoursesResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyCoursesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _MyCoursesResponseModel implements MyCoursesResponseModel {
  const factory _MyCoursesResponseModel(
      {final String? status,
      final List<Data>? data}) = _$MyCoursesResponseModelImpl;

  factory _MyCoursesResponseModel.fromJson(Map<String, dynamic> json) =
      _$MyCoursesResponseModelImpl.fromJson;

  @override
  String? get status;
  @override
  List<Data>? get data;
  @override
  @JsonKey(ignore: true)
  _$$MyCoursesResponseModelImplCopyWith<_$MyCoursesResponseModelImpl>
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
  CourseId? get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: "course_status")
  String? get courseStatus => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  @JsonKey(name: "lesson_completed")
  List<String>? get lessonCompleted => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  int? get iV => throw _privateConstructorUsedError;
  @JsonKey(name: "expiry_alerted")
  bool? get expiryAlerted => throw _privateConstructorUsedError;
  @JsonKey(name: "expiry_alerted_time")
  String? get expiryAlertedTime => throw _privateConstructorUsedError;
  @JsonKey(name: "last_played_lesson_id")
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
      @JsonKey(name: "course_id") CourseId? courseId,
      @JsonKey(name: "course_status") String? courseStatus,
      bool? active,
      @JsonKey(name: "lesson_completed") List<String>? lessonCompleted,
      String? createdAt,
      String? updatedAt,
      int? iV,
      @JsonKey(name: "expiry_alerted") bool? expiryAlerted,
      @JsonKey(name: "expiry_alerted_time") String? expiryAlertedTime,
      @JsonKey(name: "last_played_lesson_id") String? lastPlayedLessonId,
      String? id});

  $CourseIdCopyWith<$Res>? get courseId;
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
    Object? expiryAlerted = freezed,
    Object? expiryAlertedTime = freezed,
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
              as CourseId?,
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
      expiryAlerted: freezed == expiryAlerted
          ? _value.expiryAlerted
          : expiryAlerted // ignore: cast_nullable_to_non_nullable
              as bool?,
      expiryAlertedTime: freezed == expiryAlertedTime
          ? _value.expiryAlertedTime
          : expiryAlertedTime // ignore: cast_nullable_to_non_nullable
              as String?,
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

  @override
  @pragma('vm:prefer-inline')
  $CourseIdCopyWith<$Res>? get courseId {
    if (_value.courseId == null) {
      return null;
    }

    return $CourseIdCopyWith<$Res>(_value.courseId!, (value) {
      return _then(_value.copyWith(courseId: value) as $Val);
    });
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
      @JsonKey(name: "course_id") CourseId? courseId,
      @JsonKey(name: "course_status") String? courseStatus,
      bool? active,
      @JsonKey(name: "lesson_completed") List<String>? lessonCompleted,
      String? createdAt,
      String? updatedAt,
      int? iV,
      @JsonKey(name: "expiry_alerted") bool? expiryAlerted,
      @JsonKey(name: "expiry_alerted_time") String? expiryAlertedTime,
      @JsonKey(name: "last_played_lesson_id") String? lastPlayedLessonId,
      String? id});

  @override
  $CourseIdCopyWith<$Res>? get courseId;
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
    Object? expiryAlerted = freezed,
    Object? expiryAlertedTime = freezed,
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
              as CourseId?,
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
      expiryAlerted: freezed == expiryAlerted
          ? _value.expiryAlerted
          : expiryAlerted // ignore: cast_nullable_to_non_nullable
              as bool?,
      expiryAlertedTime: freezed == expiryAlertedTime
          ? _value.expiryAlertedTime
          : expiryAlertedTime // ignore: cast_nullable_to_non_nullable
              as String?,
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
  const _$DataImpl(
      {@JsonKey(name: "_id") this.sId,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "course_id") this.courseId,
      @JsonKey(name: "course_status") this.courseStatus,
      this.active,
      @JsonKey(name: "lesson_completed") final List<String>? lessonCompleted,
      this.createdAt,
      this.updatedAt,
      this.iV,
      @JsonKey(name: "expiry_alerted") this.expiryAlerted,
      @JsonKey(name: "expiry_alerted_time") this.expiryAlertedTime,
      @JsonKey(name: "last_played_lesson_id") this.lastPlayedLessonId,
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
  final CourseId? courseId;
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
  final int? iV;
  @override
  @JsonKey(name: "expiry_alerted")
  final bool? expiryAlerted;
  @override
  @JsonKey(name: "expiry_alerted_time")
  final String? expiryAlertedTime;
  @override
  @JsonKey(name: "last_played_lesson_id")
  final String? lastPlayedLessonId;
  @override
  final String? id;

  @override
  String toString() {
    return 'Data(sId: $sId, userId: $userId, courseId: $courseId, courseStatus: $courseStatus, active: $active, lessonCompleted: $lessonCompleted, createdAt: $createdAt, updatedAt: $updatedAt, iV: $iV, expiryAlerted: $expiryAlerted, expiryAlertedTime: $expiryAlertedTime, lastPlayedLessonId: $lastPlayedLessonId, id: $id)';
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
            (identical(other.expiryAlerted, expiryAlerted) ||
                other.expiryAlerted == expiryAlerted) &&
            (identical(other.expiryAlertedTime, expiryAlertedTime) ||
                other.expiryAlertedTime == expiryAlertedTime) &&
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
      expiryAlerted,
      expiryAlertedTime,
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
  const factory _Data(
      {@JsonKey(name: "_id") final String? sId,
      @JsonKey(name: "user_id") final String? userId,
      @JsonKey(name: "course_id") final CourseId? courseId,
      @JsonKey(name: "course_status") final String? courseStatus,
      final bool? active,
      @JsonKey(name: "lesson_completed") final List<String>? lessonCompleted,
      final String? createdAt,
      final String? updatedAt,
      final int? iV,
      @JsonKey(name: "expiry_alerted") final bool? expiryAlerted,
      @JsonKey(name: "expiry_alerted_time") final String? expiryAlertedTime,
      @JsonKey(name: "last_played_lesson_id") final String? lastPlayedLessonId,
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
  CourseId? get courseId;
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
  int? get iV;
  @override
  @JsonKey(name: "expiry_alerted")
  bool? get expiryAlerted;
  @override
  @JsonKey(name: "expiry_alerted_time")
  String? get expiryAlertedTime;
  @override
  @JsonKey(name: "last_played_lesson_id")
  String? get lastPlayedLessonId;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseId _$CourseIdFromJson(Map<String, dynamic> json) {
  return _CourseId.fromJson(json);
}

/// @nodoc
mixin _$CourseId {
  @JsonKey(name: "s3_folder")
  String? get s3Folder => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get sId => throw _privateConstructorUsedError;
  @JsonKey(name: "mentor_id")
  String? get mentorId => throw _privateConstructorUsedError;
  @JsonKey(name: "course_name")
  String? get courseName => throw _privateConstructorUsedError;
  @JsonKey(name: "course_duration")
  int? get courseDuration => throw _privateConstructorUsedError;
  @JsonKey(name: "course_info")
  String? get courseInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "course_description")
  String? get courseDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "students_enrolled")
  int? get studentsEnrolled => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  int? get raters => throw _privateConstructorUsedError;
  int? get cost => throw _privateConstructorUsedError;
  int? get lessons => throw _privateConstructorUsedError;
  @JsonKey(name: "skill_level")
  String? get skillLevel => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  bool? get approved => throw _privateConstructorUsedError;
  @JsonKey(name: "course_created")
  String? get courseCreated => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  int? get iV => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: "course_slug")
  String? get courseSlug => throw _privateConstructorUsedError;
  int? get views => throw _privateConstructorUsedError;
  @JsonKey(name: "certificate_learning")
  String? get certificateLearning => throw _privateConstructorUsedError;
  @JsonKey(name: "high_cost")
  int? get highCost => throw _privateConstructorUsedError;
  @JsonKey(name: "is_under_development")
  bool? get isUnderDevelopment => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_price_ends")
  String? get discountPriceEnds => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseIdCopyWith<CourseId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseIdCopyWith<$Res> {
  factory $CourseIdCopyWith(CourseId value, $Res Function(CourseId) then) =
      _$CourseIdCopyWithImpl<$Res, CourseId>;
  @useResult
  $Res call(
      {@JsonKey(name: "s3_folder") String? s3Folder,
      @JsonKey(name: "_id") String? sId,
      @JsonKey(name: "mentor_id") String? mentorId,
      @JsonKey(name: "course_name") String? courseName,
      @JsonKey(name: "course_duration") int? courseDuration,
      @JsonKey(name: "course_info") String? courseInfo,
      @JsonKey(name: "course_description") String? courseDescription,
      @JsonKey(name: "students_enrolled") int? studentsEnrolled,
      double? rating,
      int? raters,
      int? cost,
      int? lessons,
      @JsonKey(name: "skill_level") String? skillLevel,
      String? language,
      bool? active,
      bool? approved,
      @JsonKey(name: "course_created") String? courseCreated,
      String? createdAt,
      String? updatedAt,
      int? iV,
      String? thumbnail,
      @JsonKey(name: "course_slug") String? courseSlug,
      int? views,
      @JsonKey(name: "certificate_learning") String? certificateLearning,
      @JsonKey(name: "high_cost") int? highCost,
      @JsonKey(name: "is_under_development") bool? isUnderDevelopment,
      @JsonKey(name: "discount_price_ends") String? discountPriceEnds,
      String? id});
}

/// @nodoc
class _$CourseIdCopyWithImpl<$Res, $Val extends CourseId>
    implements $CourseIdCopyWith<$Res> {
  _$CourseIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? s3Folder = freezed,
    Object? sId = freezed,
    Object? mentorId = freezed,
    Object? courseName = freezed,
    Object? courseDuration = freezed,
    Object? courseInfo = freezed,
    Object? courseDescription = freezed,
    Object? studentsEnrolled = freezed,
    Object? rating = freezed,
    Object? raters = freezed,
    Object? cost = freezed,
    Object? lessons = freezed,
    Object? skillLevel = freezed,
    Object? language = freezed,
    Object? active = freezed,
    Object? approved = freezed,
    Object? courseCreated = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? iV = freezed,
    Object? thumbnail = freezed,
    Object? courseSlug = freezed,
    Object? views = freezed,
    Object? certificateLearning = freezed,
    Object? highCost = freezed,
    Object? isUnderDevelopment = freezed,
    Object? discountPriceEnds = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      s3Folder: freezed == s3Folder
          ? _value.s3Folder
          : s3Folder // ignore: cast_nullable_to_non_nullable
              as String?,
      sId: freezed == sId
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      mentorId: freezed == mentorId
          ? _value.mentorId
          : mentorId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseName: freezed == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String?,
      courseDuration: freezed == courseDuration
          ? _value.courseDuration
          : courseDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      courseInfo: freezed == courseInfo
          ? _value.courseInfo
          : courseInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      courseDescription: freezed == courseDescription
          ? _value.courseDescription
          : courseDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      studentsEnrolled: freezed == studentsEnrolled
          ? _value.studentsEnrolled
          : studentsEnrolled // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      raters: freezed == raters
          ? _value.raters
          : raters // ignore: cast_nullable_to_non_nullable
              as int?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int?,
      lessons: freezed == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as int?,
      skillLevel: freezed == skillLevel
          ? _value.skillLevel
          : skillLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      approved: freezed == approved
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as bool?,
      courseCreated: freezed == courseCreated
          ? _value.courseCreated
          : courseCreated // ignore: cast_nullable_to_non_nullable
              as String?,
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
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      courseSlug: freezed == courseSlug
          ? _value.courseSlug
          : courseSlug // ignore: cast_nullable_to_non_nullable
              as String?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      certificateLearning: freezed == certificateLearning
          ? _value.certificateLearning
          : certificateLearning // ignore: cast_nullable_to_non_nullable
              as String?,
      highCost: freezed == highCost
          ? _value.highCost
          : highCost // ignore: cast_nullable_to_non_nullable
              as int?,
      isUnderDevelopment: freezed == isUnderDevelopment
          ? _value.isUnderDevelopment
          : isUnderDevelopment // ignore: cast_nullable_to_non_nullable
              as bool?,
      discountPriceEnds: freezed == discountPriceEnds
          ? _value.discountPriceEnds
          : discountPriceEnds // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseIdImplCopyWith<$Res>
    implements $CourseIdCopyWith<$Res> {
  factory _$$CourseIdImplCopyWith(
          _$CourseIdImpl value, $Res Function(_$CourseIdImpl) then) =
      __$$CourseIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "s3_folder") String? s3Folder,
      @JsonKey(name: "_id") String? sId,
      @JsonKey(name: "mentor_id") String? mentorId,
      @JsonKey(name: "course_name") String? courseName,
      @JsonKey(name: "course_duration") int? courseDuration,
      @JsonKey(name: "course_info") String? courseInfo,
      @JsonKey(name: "course_description") String? courseDescription,
      @JsonKey(name: "students_enrolled") int? studentsEnrolled,
      double? rating,
      int? raters,
      int? cost,
      int? lessons,
      @JsonKey(name: "skill_level") String? skillLevel,
      String? language,
      bool? active,
      bool? approved,
      @JsonKey(name: "course_created") String? courseCreated,
      String? createdAt,
      String? updatedAt,
      int? iV,
      String? thumbnail,
      @JsonKey(name: "course_slug") String? courseSlug,
      int? views,
      @JsonKey(name: "certificate_learning") String? certificateLearning,
      @JsonKey(name: "high_cost") int? highCost,
      @JsonKey(name: "is_under_development") bool? isUnderDevelopment,
      @JsonKey(name: "discount_price_ends") String? discountPriceEnds,
      String? id});
}

/// @nodoc
class __$$CourseIdImplCopyWithImpl<$Res>
    extends _$CourseIdCopyWithImpl<$Res, _$CourseIdImpl>
    implements _$$CourseIdImplCopyWith<$Res> {
  __$$CourseIdImplCopyWithImpl(
      _$CourseIdImpl _value, $Res Function(_$CourseIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? s3Folder = freezed,
    Object? sId = freezed,
    Object? mentorId = freezed,
    Object? courseName = freezed,
    Object? courseDuration = freezed,
    Object? courseInfo = freezed,
    Object? courseDescription = freezed,
    Object? studentsEnrolled = freezed,
    Object? rating = freezed,
    Object? raters = freezed,
    Object? cost = freezed,
    Object? lessons = freezed,
    Object? skillLevel = freezed,
    Object? language = freezed,
    Object? active = freezed,
    Object? approved = freezed,
    Object? courseCreated = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? iV = freezed,
    Object? thumbnail = freezed,
    Object? courseSlug = freezed,
    Object? views = freezed,
    Object? certificateLearning = freezed,
    Object? highCost = freezed,
    Object? isUnderDevelopment = freezed,
    Object? discountPriceEnds = freezed,
    Object? id = freezed,
  }) {
    return _then(_$CourseIdImpl(
      s3Folder: freezed == s3Folder
          ? _value.s3Folder
          : s3Folder // ignore: cast_nullable_to_non_nullable
              as String?,
      sId: freezed == sId
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      mentorId: freezed == mentorId
          ? _value.mentorId
          : mentorId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseName: freezed == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String?,
      courseDuration: freezed == courseDuration
          ? _value.courseDuration
          : courseDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      courseInfo: freezed == courseInfo
          ? _value.courseInfo
          : courseInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      courseDescription: freezed == courseDescription
          ? _value.courseDescription
          : courseDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      studentsEnrolled: freezed == studentsEnrolled
          ? _value.studentsEnrolled
          : studentsEnrolled // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      raters: freezed == raters
          ? _value.raters
          : raters // ignore: cast_nullable_to_non_nullable
              as int?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int?,
      lessons: freezed == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as int?,
      skillLevel: freezed == skillLevel
          ? _value.skillLevel
          : skillLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      approved: freezed == approved
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as bool?,
      courseCreated: freezed == courseCreated
          ? _value.courseCreated
          : courseCreated // ignore: cast_nullable_to_non_nullable
              as String?,
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
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      courseSlug: freezed == courseSlug
          ? _value.courseSlug
          : courseSlug // ignore: cast_nullable_to_non_nullable
              as String?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      certificateLearning: freezed == certificateLearning
          ? _value.certificateLearning
          : certificateLearning // ignore: cast_nullable_to_non_nullable
              as String?,
      highCost: freezed == highCost
          ? _value.highCost
          : highCost // ignore: cast_nullable_to_non_nullable
              as int?,
      isUnderDevelopment: freezed == isUnderDevelopment
          ? _value.isUnderDevelopment
          : isUnderDevelopment // ignore: cast_nullable_to_non_nullable
              as bool?,
      discountPriceEnds: freezed == discountPriceEnds
          ? _value.discountPriceEnds
          : discountPriceEnds // ignore: cast_nullable_to_non_nullable
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
class _$CourseIdImpl implements _CourseId {
  const _$CourseIdImpl(
      {@JsonKey(name: "s3_folder") this.s3Folder,
      @JsonKey(name: "_id") this.sId,
      @JsonKey(name: "mentor_id") this.mentorId,
      @JsonKey(name: "course_name") this.courseName,
      @JsonKey(name: "course_duration") this.courseDuration,
      @JsonKey(name: "course_info") this.courseInfo,
      @JsonKey(name: "course_description") this.courseDescription,
      @JsonKey(name: "students_enrolled") this.studentsEnrolled,
      this.rating,
      this.raters,
      this.cost,
      this.lessons,
      @JsonKey(name: "skill_level") this.skillLevel,
      this.language,
      this.active,
      this.approved,
      @JsonKey(name: "course_created") this.courseCreated,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.thumbnail,
      @JsonKey(name: "course_slug") this.courseSlug,
      this.views,
      @JsonKey(name: "certificate_learning") this.certificateLearning,
      @JsonKey(name: "high_cost") this.highCost,
      @JsonKey(name: "is_under_development") this.isUnderDevelopment,
      @JsonKey(name: "discount_price_ends") this.discountPriceEnds,
      this.id});

  factory _$CourseIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseIdImplFromJson(json);

  @override
  @JsonKey(name: "s3_folder")
  final String? s3Folder;
  @override
  @JsonKey(name: "_id")
  final String? sId;
  @override
  @JsonKey(name: "mentor_id")
  final String? mentorId;
  @override
  @JsonKey(name: "course_name")
  final String? courseName;
  @override
  @JsonKey(name: "course_duration")
  final int? courseDuration;
  @override
  @JsonKey(name: "course_info")
  final String? courseInfo;
  @override
  @JsonKey(name: "course_description")
  final String? courseDescription;
  @override
  @JsonKey(name: "students_enrolled")
  final int? studentsEnrolled;
  @override
  final double? rating;
  @override
  final int? raters;
  @override
  final int? cost;
  @override
  final int? lessons;
  @override
  @JsonKey(name: "skill_level")
  final String? skillLevel;
  @override
  final String? language;
  @override
  final bool? active;
  @override
  final bool? approved;
  @override
  @JsonKey(name: "course_created")
  final String? courseCreated;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final int? iV;
  @override
  final String? thumbnail;
  @override
  @JsonKey(name: "course_slug")
  final String? courseSlug;
  @override
  final int? views;
  @override
  @JsonKey(name: "certificate_learning")
  final String? certificateLearning;
  @override
  @JsonKey(name: "high_cost")
  final int? highCost;
  @override
  @JsonKey(name: "is_under_development")
  final bool? isUnderDevelopment;
  @override
  @JsonKey(name: "discount_price_ends")
  final String? discountPriceEnds;
  @override
  final String? id;

  @override
  String toString() {
    return 'CourseId(s3Folder: $s3Folder, sId: $sId, mentorId: $mentorId, courseName: $courseName, courseDuration: $courseDuration, courseInfo: $courseInfo, courseDescription: $courseDescription, studentsEnrolled: $studentsEnrolled, rating: $rating, raters: $raters, cost: $cost, lessons: $lessons, skillLevel: $skillLevel, language: $language, active: $active, approved: $approved, courseCreated: $courseCreated, createdAt: $createdAt, updatedAt: $updatedAt, iV: $iV, thumbnail: $thumbnail, courseSlug: $courseSlug, views: $views, certificateLearning: $certificateLearning, highCost: $highCost, isUnderDevelopment: $isUnderDevelopment, discountPriceEnds: $discountPriceEnds, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseIdImpl &&
            (identical(other.s3Folder, s3Folder) ||
                other.s3Folder == s3Folder) &&
            (identical(other.sId, sId) || other.sId == sId) &&
            (identical(other.mentorId, mentorId) ||
                other.mentorId == mentorId) &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName) &&
            (identical(other.courseDuration, courseDuration) ||
                other.courseDuration == courseDuration) &&
            (identical(other.courseInfo, courseInfo) ||
                other.courseInfo == courseInfo) &&
            (identical(other.courseDescription, courseDescription) ||
                other.courseDescription == courseDescription) &&
            (identical(other.studentsEnrolled, studentsEnrolled) ||
                other.studentsEnrolled == studentsEnrolled) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.raters, raters) || other.raters == raters) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.lessons, lessons) || other.lessons == lessons) &&
            (identical(other.skillLevel, skillLevel) ||
                other.skillLevel == skillLevel) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.approved, approved) ||
                other.approved == approved) &&
            (identical(other.courseCreated, courseCreated) ||
                other.courseCreated == courseCreated) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.iV, iV) || other.iV == iV) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.courseSlug, courseSlug) ||
                other.courseSlug == courseSlug) &&
            (identical(other.views, views) || other.views == views) &&
            (identical(other.certificateLearning, certificateLearning) ||
                other.certificateLearning == certificateLearning) &&
            (identical(other.highCost, highCost) ||
                other.highCost == highCost) &&
            (identical(other.isUnderDevelopment, isUnderDevelopment) ||
                other.isUnderDevelopment == isUnderDevelopment) &&
            (identical(other.discountPriceEnds, discountPriceEnds) ||
                other.discountPriceEnds == discountPriceEnds) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        s3Folder,
        sId,
        mentorId,
        courseName,
        courseDuration,
        courseInfo,
        courseDescription,
        studentsEnrolled,
        rating,
        raters,
        cost,
        lessons,
        skillLevel,
        language,
        active,
        approved,
        courseCreated,
        createdAt,
        updatedAt,
        iV,
        thumbnail,
        courseSlug,
        views,
        certificateLearning,
        highCost,
        isUnderDevelopment,
        discountPriceEnds,
        id
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseIdImplCopyWith<_$CourseIdImpl> get copyWith =>
      __$$CourseIdImplCopyWithImpl<_$CourseIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseIdImplToJson(
      this,
    );
  }
}

abstract class _CourseId implements CourseId {
  const factory _CourseId(
      {@JsonKey(name: "s3_folder") final String? s3Folder,
      @JsonKey(name: "_id") final String? sId,
      @JsonKey(name: "mentor_id") final String? mentorId,
      @JsonKey(name: "course_name") final String? courseName,
      @JsonKey(name: "course_duration") final int? courseDuration,
      @JsonKey(name: "course_info") final String? courseInfo,
      @JsonKey(name: "course_description") final String? courseDescription,
      @JsonKey(name: "students_enrolled") final int? studentsEnrolled,
      final double? rating,
      final int? raters,
      final int? cost,
      final int? lessons,
      @JsonKey(name: "skill_level") final String? skillLevel,
      final String? language,
      final bool? active,
      final bool? approved,
      @JsonKey(name: "course_created") final String? courseCreated,
      final String? createdAt,
      final String? updatedAt,
      final int? iV,
      final String? thumbnail,
      @JsonKey(name: "course_slug") final String? courseSlug,
      final int? views,
      @JsonKey(name: "certificate_learning") final String? certificateLearning,
      @JsonKey(name: "high_cost") final int? highCost,
      @JsonKey(name: "is_under_development") final bool? isUnderDevelopment,
      @JsonKey(name: "discount_price_ends") final String? discountPriceEnds,
      final String? id}) = _$CourseIdImpl;

  factory _CourseId.fromJson(Map<String, dynamic> json) =
      _$CourseIdImpl.fromJson;

  @override
  @JsonKey(name: "s3_folder")
  String? get s3Folder;
  @override
  @JsonKey(name: "_id")
  String? get sId;
  @override
  @JsonKey(name: "mentor_id")
  String? get mentorId;
  @override
  @JsonKey(name: "course_name")
  String? get courseName;
  @override
  @JsonKey(name: "course_duration")
  int? get courseDuration;
  @override
  @JsonKey(name: "course_info")
  String? get courseInfo;
  @override
  @JsonKey(name: "course_description")
  String? get courseDescription;
  @override
  @JsonKey(name: "students_enrolled")
  int? get studentsEnrolled;
  @override
  double? get rating;
  @override
  int? get raters;
  @override
  int? get cost;
  @override
  int? get lessons;
  @override
  @JsonKey(name: "skill_level")
  String? get skillLevel;
  @override
  String? get language;
  @override
  bool? get active;
  @override
  bool? get approved;
  @override
  @JsonKey(name: "course_created")
  String? get courseCreated;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  int? get iV;
  @override
  String? get thumbnail;
  @override
  @JsonKey(name: "course_slug")
  String? get courseSlug;
  @override
  int? get views;
  @override
  @JsonKey(name: "certificate_learning")
  String? get certificateLearning;
  @override
  @JsonKey(name: "high_cost")
  int? get highCost;
  @override
  @JsonKey(name: "is_under_development")
  bool? get isUnderDevelopment;
  @override
  @JsonKey(name: "discount_price_ends")
  String? get discountPriceEnds;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$CourseIdImplCopyWith<_$CourseIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
