// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_lessons_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseLessonsResponseModel _$CourseLessonsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CourseLessonsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CourseLessonsResponseModel {
  String? get status => throw _privateConstructorUsedError;
  List<Data>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseLessonsResponseModelCopyWith<CourseLessonsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseLessonsResponseModelCopyWith<$Res> {
  factory $CourseLessonsResponseModelCopyWith(CourseLessonsResponseModel value,
          $Res Function(CourseLessonsResponseModel) then) =
      _$CourseLessonsResponseModelCopyWithImpl<$Res,
          CourseLessonsResponseModel>;
  @useResult
  $Res call({String? status, List<Data>? data});
}

/// @nodoc
class _$CourseLessonsResponseModelCopyWithImpl<$Res,
        $Val extends CourseLessonsResponseModel>
    implements $CourseLessonsResponseModelCopyWith<$Res> {
  _$CourseLessonsResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$CourseLessonsResponseModelImplCopyWith<$Res>
    implements $CourseLessonsResponseModelCopyWith<$Res> {
  factory _$$CourseLessonsResponseModelImplCopyWith(
          _$CourseLessonsResponseModelImpl value,
          $Res Function(_$CourseLessonsResponseModelImpl) then) =
      __$$CourseLessonsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, List<Data>? data});
}

/// @nodoc
class __$$CourseLessonsResponseModelImplCopyWithImpl<$Res>
    extends _$CourseLessonsResponseModelCopyWithImpl<$Res,
        _$CourseLessonsResponseModelImpl>
    implements _$$CourseLessonsResponseModelImplCopyWith<$Res> {
  __$$CourseLessonsResponseModelImplCopyWithImpl(
      _$CourseLessonsResponseModelImpl _value,
      $Res Function(_$CourseLessonsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CourseLessonsResponseModelImpl(
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
class _$CourseLessonsResponseModelImpl implements _CourseLessonsResponseModel {
  _$CourseLessonsResponseModelImpl({this.status, final List<Data>? data})
      : _data = data;

  factory _$CourseLessonsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CourseLessonsResponseModelImplFromJson(json);

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
    return 'CourseLessonsResponseModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseLessonsResponseModelImpl &&
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
  _$$CourseLessonsResponseModelImplCopyWith<_$CourseLessonsResponseModelImpl>
      get copyWith => __$$CourseLessonsResponseModelImplCopyWithImpl<
          _$CourseLessonsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseLessonsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CourseLessonsResponseModel
    implements CourseLessonsResponseModel {
  factory _CourseLessonsResponseModel(
      {final String? status,
      final List<Data>? data}) = _$CourseLessonsResponseModelImpl;

  factory _CourseLessonsResponseModel.fromJson(Map<String, dynamic> json) =
      _$CourseLessonsResponseModelImpl.fromJson;

  @override
  String? get status;
  @override
  List<Data>? get data;
  @override
  @JsonKey(ignore: true)
  _$$CourseLessonsResponseModelImplCopyWith<_$CourseLessonsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "_id")
  String? get sId => throw _privateConstructorUsedError;
  @JsonKey(name: "course_id")
  String? get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: "section_name")
  String? get sectionName => throw _privateConstructorUsedError;
  @JsonKey(name: "section_index")
  int? get sectionIndex => throw _privateConstructorUsedError;
  List<Lessons>? get lessons => throw _privateConstructorUsedError;

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
      @JsonKey(name: "course_id") String? courseId,
      @JsonKey(name: "section_name") String? sectionName,
      @JsonKey(name: "section_index") int? sectionIndex,
      List<Lessons>? lessons});
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
    Object? courseId = freezed,
    Object? sectionName = freezed,
    Object? sectionIndex = freezed,
    Object? lessons = freezed,
  }) {
    return _then(_value.copyWith(
      sId: freezed == sId
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionName: freezed == sectionName
          ? _value.sectionName
          : sectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionIndex: freezed == sectionIndex
          ? _value.sectionIndex
          : sectionIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      lessons: freezed == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<Lessons>?,
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
      @JsonKey(name: "course_id") String? courseId,
      @JsonKey(name: "section_name") String? sectionName,
      @JsonKey(name: "section_index") int? sectionIndex,
      List<Lessons>? lessons});
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
    Object? courseId = freezed,
    Object? sectionName = freezed,
    Object? sectionIndex = freezed,
    Object? lessons = freezed,
  }) {
    return _then(_$DataImpl(
      sId: freezed == sId
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionName: freezed == sectionName
          ? _value.sectionName
          : sectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionIndex: freezed == sectionIndex
          ? _value.sectionIndex
          : sectionIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      lessons: freezed == lessons
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<Lessons>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  _$DataImpl(
      {@JsonKey(name: "_id") this.sId,
      @JsonKey(name: "course_id") this.courseId,
      @JsonKey(name: "section_name") this.sectionName,
      @JsonKey(name: "section_index") this.sectionIndex,
      final List<Lessons>? lessons})
      : _lessons = lessons;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? sId;
  @override
  @JsonKey(name: "course_id")
  final String? courseId;
  @override
  @JsonKey(name: "section_name")
  final String? sectionName;
  @override
  @JsonKey(name: "section_index")
  final int? sectionIndex;
  final List<Lessons>? _lessons;
  @override
  List<Lessons>? get lessons {
    final value = _lessons;
    if (value == null) return null;
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(sId: $sId, courseId: $courseId, sectionName: $sectionName, sectionIndex: $sectionIndex, lessons: $lessons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.sId, sId) || other.sId == sId) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.sectionName, sectionName) ||
                other.sectionName == sectionName) &&
            (identical(other.sectionIndex, sectionIndex) ||
                other.sectionIndex == sectionIndex) &&
            const DeepCollectionEquality().equals(other._lessons, _lessons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sId, courseId, sectionName,
      sectionIndex, const DeepCollectionEquality().hash(_lessons));

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
      @JsonKey(name: "course_id") final String? courseId,
      @JsonKey(name: "section_name") final String? sectionName,
      @JsonKey(name: "section_index") final int? sectionIndex,
      final List<Lessons>? lessons}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get sId;
  @override
  @JsonKey(name: "course_id")
  String? get courseId;
  @override
  @JsonKey(name: "section_name")
  String? get sectionName;
  @override
  @JsonKey(name: "section_index")
  int? get sectionIndex;
  @override
  List<Lessons>? get lessons;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Lessons _$LessonsFromJson(Map<String, dynamic> json) {
  return _Lessons.fromJson(json);
}

/// @nodoc
mixin _$Lessons {
  @JsonKey(name: "_id")
  String? get sId => throw _privateConstructorUsedError;
  @JsonKey(name: "course_id")
  String? get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: "lesson_name")
  String? get lessonName => throw _privateConstructorUsedError;
  @JsonKey(name: "lesson_index")
  double? get lessonIndex => throw _privateConstructorUsedError;
  @JsonKey(name: "lesson_type")
  String? get lessonType => throw _privateConstructorUsedError;
  @JsonKey(name: "lesson_video_url")
  String? get lessonVideoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "lesson_premium")
  bool? get lessonPremium => throw _privateConstructorUsedError;
  @JsonKey(name: "lesson_duration_minutes")
  double? get lessonDurationMinutes => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "_v")
  int? get iV => throw _privateConstructorUsedError;
  @JsonKey(name: "section_id")
  String? get sectionId => throw _privateConstructorUsedError;
  @JsonKey(name: "lesson_html")
  String? get lessonHtml => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonsCopyWith<Lessons> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonsCopyWith<$Res> {
  factory $LessonsCopyWith(Lessons value, $Res Function(Lessons) then) =
      _$LessonsCopyWithImpl<$Res, Lessons>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? sId,
      @JsonKey(name: "course_id") String? courseId,
      @JsonKey(name: "lesson_name") String? lessonName,
      @JsonKey(name: "lesson_index") double? lessonIndex,
      @JsonKey(name: "lesson_type") String? lessonType,
      @JsonKey(name: "lesson_video_url") String? lessonVideoUrl,
      @JsonKey(name: "lesson_premium") bool? lessonPremium,
      @JsonKey(name: "lesson_duration_minutes") double? lessonDurationMinutes,
      bool? active,
      String? createdAt,
      String? updatedAt,
      @JsonKey(name: "_v") int? iV,
      @JsonKey(name: "section_id") String? sectionId,
      @JsonKey(name: "lesson_html") String? lessonHtml});
}

/// @nodoc
class _$LessonsCopyWithImpl<$Res, $Val extends Lessons>
    implements $LessonsCopyWith<$Res> {
  _$LessonsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sId = freezed,
    Object? courseId = freezed,
    Object? lessonName = freezed,
    Object? lessonIndex = freezed,
    Object? lessonType = freezed,
    Object? lessonVideoUrl = freezed,
    Object? lessonPremium = freezed,
    Object? lessonDurationMinutes = freezed,
    Object? active = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? iV = freezed,
    Object? sectionId = freezed,
    Object? lessonHtml = freezed,
  }) {
    return _then(_value.copyWith(
      sId: freezed == sId
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonName: freezed == lessonName
          ? _value.lessonName
          : lessonName // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonIndex: freezed == lessonIndex
          ? _value.lessonIndex
          : lessonIndex // ignore: cast_nullable_to_non_nullable
              as double?,
      lessonType: freezed == lessonType
          ? _value.lessonType
          : lessonType // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonVideoUrl: freezed == lessonVideoUrl
          ? _value.lessonVideoUrl
          : lessonVideoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonPremium: freezed == lessonPremium
          ? _value.lessonPremium
          : lessonPremium // ignore: cast_nullable_to_non_nullable
              as bool?,
      lessonDurationMinutes: freezed == lessonDurationMinutes
          ? _value.lessonDurationMinutes
          : lessonDurationMinutes // ignore: cast_nullable_to_non_nullable
              as double?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      sectionId: freezed == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonHtml: freezed == lessonHtml
          ? _value.lessonHtml
          : lessonHtml // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonsImplCopyWith<$Res> implements $LessonsCopyWith<$Res> {
  factory _$$LessonsImplCopyWith(
          _$LessonsImpl value, $Res Function(_$LessonsImpl) then) =
      __$$LessonsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? sId,
      @JsonKey(name: "course_id") String? courseId,
      @JsonKey(name: "lesson_name") String? lessonName,
      @JsonKey(name: "lesson_index") double? lessonIndex,
      @JsonKey(name: "lesson_type") String? lessonType,
      @JsonKey(name: "lesson_video_url") String? lessonVideoUrl,
      @JsonKey(name: "lesson_premium") bool? lessonPremium,
      @JsonKey(name: "lesson_duration_minutes") double? lessonDurationMinutes,
      bool? active,
      String? createdAt,
      String? updatedAt,
      @JsonKey(name: "_v") int? iV,
      @JsonKey(name: "section_id") String? sectionId,
      @JsonKey(name: "lesson_html") String? lessonHtml});
}

/// @nodoc
class __$$LessonsImplCopyWithImpl<$Res>
    extends _$LessonsCopyWithImpl<$Res, _$LessonsImpl>
    implements _$$LessonsImplCopyWith<$Res> {
  __$$LessonsImplCopyWithImpl(
      _$LessonsImpl _value, $Res Function(_$LessonsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sId = freezed,
    Object? courseId = freezed,
    Object? lessonName = freezed,
    Object? lessonIndex = freezed,
    Object? lessonType = freezed,
    Object? lessonVideoUrl = freezed,
    Object? lessonPremium = freezed,
    Object? lessonDurationMinutes = freezed,
    Object? active = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? iV = freezed,
    Object? sectionId = freezed,
    Object? lessonHtml = freezed,
  }) {
    return _then(_$LessonsImpl(
      sId: freezed == sId
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonName: freezed == lessonName
          ? _value.lessonName
          : lessonName // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonIndex: freezed == lessonIndex
          ? _value.lessonIndex
          : lessonIndex // ignore: cast_nullable_to_non_nullable
              as double?,
      lessonType: freezed == lessonType
          ? _value.lessonType
          : lessonType // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonVideoUrl: freezed == lessonVideoUrl
          ? _value.lessonVideoUrl
          : lessonVideoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonPremium: freezed == lessonPremium
          ? _value.lessonPremium
          : lessonPremium // ignore: cast_nullable_to_non_nullable
              as bool?,
      lessonDurationMinutes: freezed == lessonDurationMinutes
          ? _value.lessonDurationMinutes
          : lessonDurationMinutes // ignore: cast_nullable_to_non_nullable
              as double?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      sectionId: freezed == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonHtml: freezed == lessonHtml
          ? _value.lessonHtml
          : lessonHtml // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonsImpl implements _Lessons {
  _$LessonsImpl(
      {@JsonKey(name: "_id") this.sId,
      @JsonKey(name: "course_id") this.courseId,
      @JsonKey(name: "lesson_name") this.lessonName,
      @JsonKey(name: "lesson_index") this.lessonIndex,
      @JsonKey(name: "lesson_type") this.lessonType,
      @JsonKey(name: "lesson_video_url") this.lessonVideoUrl,
      @JsonKey(name: "lesson_premium") this.lessonPremium,
      @JsonKey(name: "lesson_duration_minutes") this.lessonDurationMinutes,
      this.active,
      this.createdAt,
      this.updatedAt,
      @JsonKey(name: "_v") this.iV,
      @JsonKey(name: "section_id") this.sectionId,
      @JsonKey(name: "lesson_html") this.lessonHtml});

  factory _$LessonsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonsImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? sId;
  @override
  @JsonKey(name: "course_id")
  final String? courseId;
  @override
  @JsonKey(name: "lesson_name")
  final String? lessonName;
  @override
  @JsonKey(name: "lesson_index")
  final double? lessonIndex;
  @override
  @JsonKey(name: "lesson_type")
  final String? lessonType;
  @override
  @JsonKey(name: "lesson_video_url")
  final String? lessonVideoUrl;
  @override
  @JsonKey(name: "lesson_premium")
  final bool? lessonPremium;
  @override
  @JsonKey(name: "lesson_duration_minutes")
  final double? lessonDurationMinutes;
  @override
  final bool? active;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  @JsonKey(name: "_v")
  final int? iV;
  @override
  @JsonKey(name: "section_id")
  final String? sectionId;
  @override
  @JsonKey(name: "lesson_html")
  final String? lessonHtml;

  @override
  String toString() {
    return 'Lessons(sId: $sId, courseId: $courseId, lessonName: $lessonName, lessonIndex: $lessonIndex, lessonType: $lessonType, lessonVideoUrl: $lessonVideoUrl, lessonPremium: $lessonPremium, lessonDurationMinutes: $lessonDurationMinutes, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, iV: $iV, sectionId: $sectionId, lessonHtml: $lessonHtml)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonsImpl &&
            (identical(other.sId, sId) || other.sId == sId) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.lessonName, lessonName) ||
                other.lessonName == lessonName) &&
            (identical(other.lessonIndex, lessonIndex) ||
                other.lessonIndex == lessonIndex) &&
            (identical(other.lessonType, lessonType) ||
                other.lessonType == lessonType) &&
            (identical(other.lessonVideoUrl, lessonVideoUrl) ||
                other.lessonVideoUrl == lessonVideoUrl) &&
            (identical(other.lessonPremium, lessonPremium) ||
                other.lessonPremium == lessonPremium) &&
            (identical(other.lessonDurationMinutes, lessonDurationMinutes) ||
                other.lessonDurationMinutes == lessonDurationMinutes) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.iV, iV) || other.iV == iV) &&
            (identical(other.sectionId, sectionId) ||
                other.sectionId == sectionId) &&
            (identical(other.lessonHtml, lessonHtml) ||
                other.lessonHtml == lessonHtml));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sId,
      courseId,
      lessonName,
      lessonIndex,
      lessonType,
      lessonVideoUrl,
      lessonPremium,
      lessonDurationMinutes,
      active,
      createdAt,
      updatedAt,
      iV,
      sectionId,
      lessonHtml);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonsImplCopyWith<_$LessonsImpl> get copyWith =>
      __$$LessonsImplCopyWithImpl<_$LessonsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonsImplToJson(
      this,
    );
  }
}

abstract class _Lessons implements Lessons {
  factory _Lessons(
      {@JsonKey(name: "_id") final String? sId,
      @JsonKey(name: "course_id") final String? courseId,
      @JsonKey(name: "lesson_name") final String? lessonName,
      @JsonKey(name: "lesson_index") final double? lessonIndex,
      @JsonKey(name: "lesson_type") final String? lessonType,
      @JsonKey(name: "lesson_video_url") final String? lessonVideoUrl,
      @JsonKey(name: "lesson_premium") final bool? lessonPremium,
      @JsonKey(name: "lesson_duration_minutes")
      final double? lessonDurationMinutes,
      final bool? active,
      final String? createdAt,
      final String? updatedAt,
      @JsonKey(name: "_v") final int? iV,
      @JsonKey(name: "section_id") final String? sectionId,
      @JsonKey(name: "lesson_html") final String? lessonHtml}) = _$LessonsImpl;

  factory _Lessons.fromJson(Map<String, dynamic> json) = _$LessonsImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get sId;
  @override
  @JsonKey(name: "course_id")
  String? get courseId;
  @override
  @JsonKey(name: "lesson_name")
  String? get lessonName;
  @override
  @JsonKey(name: "lesson_index")
  double? get lessonIndex;
  @override
  @JsonKey(name: "lesson_type")
  String? get lessonType;
  @override
  @JsonKey(name: "lesson_video_url")
  String? get lessonVideoUrl;
  @override
  @JsonKey(name: "lesson_premium")
  bool? get lessonPremium;
  @override
  @JsonKey(name: "lesson_duration_minutes")
  double? get lessonDurationMinutes;
  @override
  bool? get active;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(name: "_v")
  int? get iV;
  @override
  @JsonKey(name: "section_id")
  String? get sectionId;
  @override
  @JsonKey(name: "lesson_html")
  String? get lessonHtml;
  @override
  @JsonKey(ignore: true)
  _$$LessonsImplCopyWith<_$LessonsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
