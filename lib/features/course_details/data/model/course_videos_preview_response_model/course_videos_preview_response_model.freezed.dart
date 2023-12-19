// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_videos_preview_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseVideosPreviewResponseModel _$CourseVideosPreviewResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CourseVideosPreviewResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CourseVideosPreviewResponseModel {
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "currently_displayed_records_on_page")
  num? get currentlyDisplayedRecordsOnPage =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "total_pages")
  num? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: "max_allowed_records_per_page")
  num? get maxAllowedRecordsPerPage => throw _privateConstructorUsedError;
  @JsonKey(name: "total_records")
  num? get totalRecords => throw _privateConstructorUsedError;
  @JsonKey(name: "filters_applied")
  bool? get filtersApplied => throw _privateConstructorUsedError;
  List<PreviewVideos>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseVideosPreviewResponseModelCopyWith<CourseVideosPreviewResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseVideosPreviewResponseModelCopyWith<$Res> {
  factory $CourseVideosPreviewResponseModelCopyWith(
          CourseVideosPreviewResponseModel value,
          $Res Function(CourseVideosPreviewResponseModel) then) =
      _$CourseVideosPreviewResponseModelCopyWithImpl<$Res,
          CourseVideosPreviewResponseModel>;
  @useResult
  $Res call(
      {String? status,
      @JsonKey(name: "currently_displayed_records_on_page")
      num? currentlyDisplayedRecordsOnPage,
      @JsonKey(name: "total_pages") num? totalPages,
      @JsonKey(name: "max_allowed_records_per_page")
      num? maxAllowedRecordsPerPage,
      @JsonKey(name: "total_records") num? totalRecords,
      @JsonKey(name: "filters_applied") bool? filtersApplied,
      List<PreviewVideos>? data});
}

/// @nodoc
class _$CourseVideosPreviewResponseModelCopyWithImpl<$Res,
        $Val extends CourseVideosPreviewResponseModel>
    implements $CourseVideosPreviewResponseModelCopyWith<$Res> {
  _$CourseVideosPreviewResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? currentlyDisplayedRecordsOnPage = freezed,
    Object? totalPages = freezed,
    Object? maxAllowedRecordsPerPage = freezed,
    Object? totalRecords = freezed,
    Object? filtersApplied = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      currentlyDisplayedRecordsOnPage: freezed ==
              currentlyDisplayedRecordsOnPage
          ? _value.currentlyDisplayedRecordsOnPage
          : currentlyDisplayedRecordsOnPage // ignore: cast_nullable_to_non_nullable
              as num?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as num?,
      maxAllowedRecordsPerPage: freezed == maxAllowedRecordsPerPage
          ? _value.maxAllowedRecordsPerPage
          : maxAllowedRecordsPerPage // ignore: cast_nullable_to_non_nullable
              as num?,
      totalRecords: freezed == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as num?,
      filtersApplied: freezed == filtersApplied
          ? _value.filtersApplied
          : filtersApplied // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PreviewVideos>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseVideosPreviewResponseModelImplCopyWith<$Res>
    implements $CourseVideosPreviewResponseModelCopyWith<$Res> {
  factory _$$CourseVideosPreviewResponseModelImplCopyWith(
          _$CourseVideosPreviewResponseModelImpl value,
          $Res Function(_$CourseVideosPreviewResponseModelImpl) then) =
      __$$CourseVideosPreviewResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      @JsonKey(name: "currently_displayed_records_on_page")
      num? currentlyDisplayedRecordsOnPage,
      @JsonKey(name: "total_pages") num? totalPages,
      @JsonKey(name: "max_allowed_records_per_page")
      num? maxAllowedRecordsPerPage,
      @JsonKey(name: "total_records") num? totalRecords,
      @JsonKey(name: "filters_applied") bool? filtersApplied,
      List<PreviewVideos>? data});
}

/// @nodoc
class __$$CourseVideosPreviewResponseModelImplCopyWithImpl<$Res>
    extends _$CourseVideosPreviewResponseModelCopyWithImpl<$Res,
        _$CourseVideosPreviewResponseModelImpl>
    implements _$$CourseVideosPreviewResponseModelImplCopyWith<$Res> {
  __$$CourseVideosPreviewResponseModelImplCopyWithImpl(
      _$CourseVideosPreviewResponseModelImpl _value,
      $Res Function(_$CourseVideosPreviewResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? currentlyDisplayedRecordsOnPage = freezed,
    Object? totalPages = freezed,
    Object? maxAllowedRecordsPerPage = freezed,
    Object? totalRecords = freezed,
    Object? filtersApplied = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CourseVideosPreviewResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      currentlyDisplayedRecordsOnPage: freezed ==
              currentlyDisplayedRecordsOnPage
          ? _value.currentlyDisplayedRecordsOnPage
          : currentlyDisplayedRecordsOnPage // ignore: cast_nullable_to_non_nullable
              as num?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as num?,
      maxAllowedRecordsPerPage: freezed == maxAllowedRecordsPerPage
          ? _value.maxAllowedRecordsPerPage
          : maxAllowedRecordsPerPage // ignore: cast_nullable_to_non_nullable
              as num?,
      totalRecords: freezed == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as num?,
      filtersApplied: freezed == filtersApplied
          ? _value.filtersApplied
          : filtersApplied // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PreviewVideos>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseVideosPreviewResponseModelImpl
    implements _CourseVideosPreviewResponseModel {
  _$CourseVideosPreviewResponseModelImpl(
      {this.status,
      @JsonKey(name: "currently_displayed_records_on_page")
      this.currentlyDisplayedRecordsOnPage,
      @JsonKey(name: "total_pages") this.totalPages,
      @JsonKey(name: "max_allowed_records_per_page")
      this.maxAllowedRecordsPerPage,
      @JsonKey(name: "total_records") this.totalRecords,
      @JsonKey(name: "filters_applied") this.filtersApplied,
      final List<PreviewVideos>? data})
      : _data = data;

  factory _$CourseVideosPreviewResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CourseVideosPreviewResponseModelImplFromJson(json);

  @override
  final String? status;
  @override
  @JsonKey(name: "currently_displayed_records_on_page")
  final num? currentlyDisplayedRecordsOnPage;
  @override
  @JsonKey(name: "total_pages")
  final num? totalPages;
  @override
  @JsonKey(name: "max_allowed_records_per_page")
  final num? maxAllowedRecordsPerPage;
  @override
  @JsonKey(name: "total_records")
  final num? totalRecords;
  @override
  @JsonKey(name: "filters_applied")
  final bool? filtersApplied;
  final List<PreviewVideos>? _data;
  @override
  List<PreviewVideos>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CourseVideosPreviewResponseModel(status: $status, currentlyDisplayedRecordsOnPage: $currentlyDisplayedRecordsOnPage, totalPages: $totalPages, maxAllowedRecordsPerPage: $maxAllowedRecordsPerPage, totalRecords: $totalRecords, filtersApplied: $filtersApplied, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseVideosPreviewResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentlyDisplayedRecordsOnPage,
                    currentlyDisplayedRecordsOnPage) ||
                other.currentlyDisplayedRecordsOnPage ==
                    currentlyDisplayedRecordsOnPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(
                    other.maxAllowedRecordsPerPage, maxAllowedRecordsPerPage) ||
                other.maxAllowedRecordsPerPage == maxAllowedRecordsPerPage) &&
            (identical(other.totalRecords, totalRecords) ||
                other.totalRecords == totalRecords) &&
            (identical(other.filtersApplied, filtersApplied) ||
                other.filtersApplied == filtersApplied) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      currentlyDisplayedRecordsOnPage,
      totalPages,
      maxAllowedRecordsPerPage,
      totalRecords,
      filtersApplied,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseVideosPreviewResponseModelImplCopyWith<
          _$CourseVideosPreviewResponseModelImpl>
      get copyWith => __$$CourseVideosPreviewResponseModelImplCopyWithImpl<
          _$CourseVideosPreviewResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseVideosPreviewResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CourseVideosPreviewResponseModel
    implements CourseVideosPreviewResponseModel {
  factory _CourseVideosPreviewResponseModel(
          {final String? status,
          @JsonKey(name: "currently_displayed_records_on_page")
          final num? currentlyDisplayedRecordsOnPage,
          @JsonKey(name: "total_pages") final num? totalPages,
          @JsonKey(name: "max_allowed_records_per_page")
          final num? maxAllowedRecordsPerPage,
          @JsonKey(name: "total_records") final num? totalRecords,
          @JsonKey(name: "filters_applied") final bool? filtersApplied,
          final List<PreviewVideos>? data}) =
      _$CourseVideosPreviewResponseModelImpl;

  factory _CourseVideosPreviewResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$CourseVideosPreviewResponseModelImpl.fromJson;

  @override
  String? get status;
  @override
  @JsonKey(name: "currently_displayed_records_on_page")
  num? get currentlyDisplayedRecordsOnPage;
  @override
  @JsonKey(name: "total_pages")
  num? get totalPages;
  @override
  @JsonKey(name: "max_allowed_records_per_page")
  num? get maxAllowedRecordsPerPage;
  @override
  @JsonKey(name: "total_records")
  num? get totalRecords;
  @override
  @JsonKey(name: "filters_applied")
  bool? get filtersApplied;
  @override
  List<PreviewVideos>? get data;
  @override
  @JsonKey(ignore: true)
  _$$CourseVideosPreviewResponseModelImplCopyWith<
          _$CourseVideosPreviewResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PreviewVideos _$PreviewVideosFromJson(Map<String, dynamic> json) {
  return _PreviewVideos.fromJson(json);
}

/// @nodoc
mixin _$PreviewVideos {
  @JsonKey(name: "_id")
  String? get sId => throw _privateConstructorUsedError;
  @JsonKey(name: "course_id")
  String? get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: "section_id")
  String? get sectionId => throw _privateConstructorUsedError;
  @JsonKey(name: "lesson_name")
  String? get lessonName => throw _privateConstructorUsedError;
  @JsonKey(name: "lesson_index")
  num? get lessonIndex => throw _privateConstructorUsedError;
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
  num? get iV => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreviewVideosCopyWith<PreviewVideos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviewVideosCopyWith<$Res> {
  factory $PreviewVideosCopyWith(
          PreviewVideos value, $Res Function(PreviewVideos) then) =
      _$PreviewVideosCopyWithImpl<$Res, PreviewVideos>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? sId,
      @JsonKey(name: "course_id") String? courseId,
      @JsonKey(name: "section_id") String? sectionId,
      @JsonKey(name: "lesson_name") String? lessonName,
      @JsonKey(name: "lesson_index") num? lessonIndex,
      @JsonKey(name: "lesson_type") String? lessonType,
      @JsonKey(name: "lesson_video_url") String? lessonVideoUrl,
      @JsonKey(name: "lesson_premium") bool? lessonPremium,
      @JsonKey(name: "lesson_duration_minutes") double? lessonDurationMinutes,
      bool? active,
      String? createdAt,
      String? updatedAt,
      num? iV});
}

/// @nodoc
class _$PreviewVideosCopyWithImpl<$Res, $Val extends PreviewVideos>
    implements $PreviewVideosCopyWith<$Res> {
  _$PreviewVideosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sId = freezed,
    Object? courseId = freezed,
    Object? sectionId = freezed,
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
      sectionId: freezed == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonName: freezed == lessonName
          ? _value.lessonName
          : lessonName // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonIndex: freezed == lessonIndex
          ? _value.lessonIndex
          : lessonIndex // ignore: cast_nullable_to_non_nullable
              as num?,
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
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreviewVideosImplCopyWith<$Res>
    implements $PreviewVideosCopyWith<$Res> {
  factory _$$PreviewVideosImplCopyWith(
          _$PreviewVideosImpl value, $Res Function(_$PreviewVideosImpl) then) =
      __$$PreviewVideosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? sId,
      @JsonKey(name: "course_id") String? courseId,
      @JsonKey(name: "section_id") String? sectionId,
      @JsonKey(name: "lesson_name") String? lessonName,
      @JsonKey(name: "lesson_index") num? lessonIndex,
      @JsonKey(name: "lesson_type") String? lessonType,
      @JsonKey(name: "lesson_video_url") String? lessonVideoUrl,
      @JsonKey(name: "lesson_premium") bool? lessonPremium,
      @JsonKey(name: "lesson_duration_minutes") double? lessonDurationMinutes,
      bool? active,
      String? createdAt,
      String? updatedAt,
      num? iV});
}

/// @nodoc
class __$$PreviewVideosImplCopyWithImpl<$Res>
    extends _$PreviewVideosCopyWithImpl<$Res, _$PreviewVideosImpl>
    implements _$$PreviewVideosImplCopyWith<$Res> {
  __$$PreviewVideosImplCopyWithImpl(
      _$PreviewVideosImpl _value, $Res Function(_$PreviewVideosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sId = freezed,
    Object? courseId = freezed,
    Object? sectionId = freezed,
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
  }) {
    return _then(_$PreviewVideosImpl(
      sId: freezed == sId
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionId: freezed == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonName: freezed == lessonName
          ? _value.lessonName
          : lessonName // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonIndex: freezed == lessonIndex
          ? _value.lessonIndex
          : lessonIndex // ignore: cast_nullable_to_non_nullable
              as num?,
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
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreviewVideosImpl implements _PreviewVideos {
  _$PreviewVideosImpl(
      {@JsonKey(name: "_id") this.sId,
      @JsonKey(name: "course_id") this.courseId,
      @JsonKey(name: "section_id") this.sectionId,
      @JsonKey(name: "lesson_name") this.lessonName,
      @JsonKey(name: "lesson_index") this.lessonIndex,
      @JsonKey(name: "lesson_type") this.lessonType,
      @JsonKey(name: "lesson_video_url") this.lessonVideoUrl,
      @JsonKey(name: "lesson_premium") this.lessonPremium,
      @JsonKey(name: "lesson_duration_minutes") this.lessonDurationMinutes,
      this.active,
      this.createdAt,
      this.updatedAt,
      this.iV});

  factory _$PreviewVideosImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreviewVideosImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? sId;
  @override
  @JsonKey(name: "course_id")
  final String? courseId;
  @override
  @JsonKey(name: "section_id")
  final String? sectionId;
  @override
  @JsonKey(name: "lesson_name")
  final String? lessonName;
  @override
  @JsonKey(name: "lesson_index")
  final num? lessonIndex;
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
  final num? iV;

  @override
  String toString() {
    return 'PreviewVideos(sId: $sId, courseId: $courseId, sectionId: $sectionId, lessonName: $lessonName, lessonIndex: $lessonIndex, lessonType: $lessonType, lessonVideoUrl: $lessonVideoUrl, lessonPremium: $lessonPremium, lessonDurationMinutes: $lessonDurationMinutes, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, iV: $iV)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviewVideosImpl &&
            (identical(other.sId, sId) || other.sId == sId) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.sectionId, sectionId) ||
                other.sectionId == sectionId) &&
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
            (identical(other.iV, iV) || other.iV == iV));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sId,
      courseId,
      sectionId,
      lessonName,
      lessonIndex,
      lessonType,
      lessonVideoUrl,
      lessonPremium,
      lessonDurationMinutes,
      active,
      createdAt,
      updatedAt,
      iV);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreviewVideosImplCopyWith<_$PreviewVideosImpl> get copyWith =>
      __$$PreviewVideosImplCopyWithImpl<_$PreviewVideosImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreviewVideosImplToJson(
      this,
    );
  }
}

abstract class _PreviewVideos implements PreviewVideos {
  factory _PreviewVideos(
      {@JsonKey(name: "_id") final String? sId,
      @JsonKey(name: "course_id") final String? courseId,
      @JsonKey(name: "section_id") final String? sectionId,
      @JsonKey(name: "lesson_name") final String? lessonName,
      @JsonKey(name: "lesson_index") final num? lessonIndex,
      @JsonKey(name: "lesson_type") final String? lessonType,
      @JsonKey(name: "lesson_video_url") final String? lessonVideoUrl,
      @JsonKey(name: "lesson_premium") final bool? lessonPremium,
      @JsonKey(name: "lesson_duration_minutes")
      final double? lessonDurationMinutes,
      final bool? active,
      final String? createdAt,
      final String? updatedAt,
      final num? iV}) = _$PreviewVideosImpl;

  factory _PreviewVideos.fromJson(Map<String, dynamic> json) =
      _$PreviewVideosImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get sId;
  @override
  @JsonKey(name: "course_id")
  String? get courseId;
  @override
  @JsonKey(name: "section_id")
  String? get sectionId;
  @override
  @JsonKey(name: "lesson_name")
  String? get lessonName;
  @override
  @JsonKey(name: "lesson_index")
  num? get lessonIndex;
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
  num? get iV;
  @override
  @JsonKey(ignore: true)
  _$$PreviewVideosImplCopyWith<_$PreviewVideosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
