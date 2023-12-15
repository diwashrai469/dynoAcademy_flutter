// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_details_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseDetailsResponseModel _$CourseDetailsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CourseDetailsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CourseDetailsResponseModel {
  PageProps? get pageProps => throw _privateConstructorUsedError;
  bool? get bNSSP => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseDetailsResponseModelCopyWith<CourseDetailsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDetailsResponseModelCopyWith<$Res> {
  factory $CourseDetailsResponseModelCopyWith(CourseDetailsResponseModel value,
          $Res Function(CourseDetailsResponseModel) then) =
      _$CourseDetailsResponseModelCopyWithImpl<$Res,
          CourseDetailsResponseModel>;
  @useResult
  $Res call({PageProps? pageProps, bool? bNSSP});

  $PagePropsCopyWith<$Res>? get pageProps;
}

/// @nodoc
class _$CourseDetailsResponseModelCopyWithImpl<$Res,
        $Val extends CourseDetailsResponseModel>
    implements $CourseDetailsResponseModelCopyWith<$Res> {
  _$CourseDetailsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageProps = freezed,
    Object? bNSSP = freezed,
  }) {
    return _then(_value.copyWith(
      pageProps: freezed == pageProps
          ? _value.pageProps
          : pageProps // ignore: cast_nullable_to_non_nullable
              as PageProps?,
      bNSSP: freezed == bNSSP
          ? _value.bNSSP
          : bNSSP // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PagePropsCopyWith<$Res>? get pageProps {
    if (_value.pageProps == null) {
      return null;
    }

    return $PagePropsCopyWith<$Res>(_value.pageProps!, (value) {
      return _then(_value.copyWith(pageProps: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseDetailsResponseModelImplCopyWith<$Res>
    implements $CourseDetailsResponseModelCopyWith<$Res> {
  factory _$$CourseDetailsResponseModelImplCopyWith(
          _$CourseDetailsResponseModelImpl value,
          $Res Function(_$CourseDetailsResponseModelImpl) then) =
      __$$CourseDetailsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageProps? pageProps, bool? bNSSP});

  @override
  $PagePropsCopyWith<$Res>? get pageProps;
}

/// @nodoc
class __$$CourseDetailsResponseModelImplCopyWithImpl<$Res>
    extends _$CourseDetailsResponseModelCopyWithImpl<$Res,
        _$CourseDetailsResponseModelImpl>
    implements _$$CourseDetailsResponseModelImplCopyWith<$Res> {
  __$$CourseDetailsResponseModelImplCopyWithImpl(
      _$CourseDetailsResponseModelImpl _value,
      $Res Function(_$CourseDetailsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageProps = freezed,
    Object? bNSSP = freezed,
  }) {
    return _then(_$CourseDetailsResponseModelImpl(
      pageProps: freezed == pageProps
          ? _value.pageProps
          : pageProps // ignore: cast_nullable_to_non_nullable
              as PageProps?,
      bNSSP: freezed == bNSSP
          ? _value.bNSSP
          : bNSSP // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseDetailsResponseModelImpl implements _CourseDetailsResponseModel {
  const _$CourseDetailsResponseModelImpl({this.pageProps, this.bNSSP});

  factory _$CourseDetailsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CourseDetailsResponseModelImplFromJson(json);

  @override
  final PageProps? pageProps;
  @override
  final bool? bNSSP;

  @override
  String toString() {
    return 'CourseDetailsResponseModel(pageProps: $pageProps, bNSSP: $bNSSP)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseDetailsResponseModelImpl &&
            (identical(other.pageProps, pageProps) ||
                other.pageProps == pageProps) &&
            (identical(other.bNSSP, bNSSP) || other.bNSSP == bNSSP));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pageProps, bNSSP);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseDetailsResponseModelImplCopyWith<_$CourseDetailsResponseModelImpl>
      get copyWith => __$$CourseDetailsResponseModelImplCopyWithImpl<
          _$CourseDetailsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseDetailsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CourseDetailsResponseModel
    implements CourseDetailsResponseModel {
  const factory _CourseDetailsResponseModel(
      {final PageProps? pageProps,
      final bool? bNSSP}) = _$CourseDetailsResponseModelImpl;

  factory _CourseDetailsResponseModel.fromJson(Map<String, dynamic> json) =
      _$CourseDetailsResponseModelImpl.fromJson;

  @override
  PageProps? get pageProps;
  @override
  bool? get bNSSP;
  @override
  @JsonKey(ignore: true)
  _$$CourseDetailsResponseModelImplCopyWith<_$CourseDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PageProps _$PagePropsFromJson(Map<String, dynamic> json) {
  return _PageProps.fromJson(json);
}

/// @nodoc
mixin _$PageProps {
  CourseData? get courseData => throw _privateConstructorUsedError;
  String? get successData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagePropsCopyWith<PageProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagePropsCopyWith<$Res> {
  factory $PagePropsCopyWith(PageProps value, $Res Function(PageProps) then) =
      _$PagePropsCopyWithImpl<$Res, PageProps>;
  @useResult
  $Res call({CourseData? courseData, String? successData});

  $CourseDataCopyWith<$Res>? get courseData;
}

/// @nodoc
class _$PagePropsCopyWithImpl<$Res, $Val extends PageProps>
    implements $PagePropsCopyWith<$Res> {
  _$PagePropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseData = freezed,
    Object? successData = freezed,
  }) {
    return _then(_value.copyWith(
      courseData: freezed == courseData
          ? _value.courseData
          : courseData // ignore: cast_nullable_to_non_nullable
              as CourseData?,
      successData: freezed == successData
          ? _value.successData
          : successData // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseDataCopyWith<$Res>? get courseData {
    if (_value.courseData == null) {
      return null;
    }

    return $CourseDataCopyWith<$Res>(_value.courseData!, (value) {
      return _then(_value.copyWith(courseData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PagePropsImplCopyWith<$Res>
    implements $PagePropsCopyWith<$Res> {
  factory _$$PagePropsImplCopyWith(
          _$PagePropsImpl value, $Res Function(_$PagePropsImpl) then) =
      __$$PagePropsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CourseData? courseData, String? successData});

  @override
  $CourseDataCopyWith<$Res>? get courseData;
}

/// @nodoc
class __$$PagePropsImplCopyWithImpl<$Res>
    extends _$PagePropsCopyWithImpl<$Res, _$PagePropsImpl>
    implements _$$PagePropsImplCopyWith<$Res> {
  __$$PagePropsImplCopyWithImpl(
      _$PagePropsImpl _value, $Res Function(_$PagePropsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseData = freezed,
    Object? successData = freezed,
  }) {
    return _then(_$PagePropsImpl(
      courseData: freezed == courseData
          ? _value.courseData
          : courseData // ignore: cast_nullable_to_non_nullable
              as CourseData?,
      successData: freezed == successData
          ? _value.successData
          : successData // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PagePropsImpl implements _PageProps {
  const _$PagePropsImpl({this.courseData, this.successData});

  factory _$PagePropsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PagePropsImplFromJson(json);

  @override
  final CourseData? courseData;
  @override
  final String? successData;

  @override
  String toString() {
    return 'PageProps(courseData: $courseData, successData: $successData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagePropsImpl &&
            (identical(other.courseData, courseData) ||
                other.courseData == courseData) &&
            (identical(other.successData, successData) ||
                other.successData == successData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, courseData, successData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PagePropsImplCopyWith<_$PagePropsImpl> get copyWith =>
      __$$PagePropsImplCopyWithImpl<_$PagePropsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PagePropsImplToJson(
      this,
    );
  }
}

abstract class _PageProps implements PageProps {
  const factory _PageProps(
      {final CourseData? courseData,
      final String? successData}) = _$PagePropsImpl;

  factory _PageProps.fromJson(Map<String, dynamic> json) =
      _$PagePropsImpl.fromJson;

  @override
  CourseData? get courseData;
  @override
  String? get successData;
  @override
  @JsonKey(ignore: true)
  _$$PagePropsImplCopyWith<_$PagePropsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseData _$CourseDataFromJson(Map<String, dynamic> json) {
  return _CourseData.fromJson(json);
}

/// @nodoc
mixin _$CourseData {
  String? get sId => throw _privateConstructorUsedError;
  MentorId? get mentorId => throw _privateConstructorUsedError;
  String? get courseName => throw _privateConstructorUsedError;
  int? get courseDuration => throw _privateConstructorUsedError;
  String? get courseInfo => throw _privateConstructorUsedError;
  String? get courseDescription => throw _privateConstructorUsedError;
  int? get studentsEnrolled => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  int? get raters => throw _privateConstructorUsedError;
  int? get cost => throw _privateConstructorUsedError;
  int? get lessons => throw _privateConstructorUsedError;
  String? get skillLevel => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  bool? get approved => throw _privateConstructorUsedError;
  String? get courseCreated => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  int? get iV => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get courseSlug => throw _privateConstructorUsedError;
  int? get views => throw _privateConstructorUsedError;
  String? get certificateLearning => throw _privateConstructorUsedError;
  int? get highCost => throw _privateConstructorUsedError;
  String? get discountPriceEnds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseDataCopyWith<CourseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDataCopyWith<$Res> {
  factory $CourseDataCopyWith(
          CourseData value, $Res Function(CourseData) then) =
      _$CourseDataCopyWithImpl<$Res, CourseData>;
  @useResult
  $Res call(
      {String? sId,
      MentorId? mentorId,
      String? courseName,
      int? courseDuration,
      String? courseInfo,
      String? courseDescription,
      int? studentsEnrolled,
      double? rating,
      int? raters,
      int? cost,
      int? lessons,
      String? skillLevel,
      String? language,
      bool? active,
      bool? approved,
      String? courseCreated,
      String? createdAt,
      String? updatedAt,
      int? iV,
      String? thumbnail,
      String? courseSlug,
      int? views,
      String? certificateLearning,
      int? highCost,
      String? discountPriceEnds});

  $MentorIdCopyWith<$Res>? get mentorId;
}

/// @nodoc
class _$CourseDataCopyWithImpl<$Res, $Val extends CourseData>
    implements $CourseDataCopyWith<$Res> {
  _$CourseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
    Object? discountPriceEnds = freezed,
  }) {
    return _then(_value.copyWith(
      sId: freezed == sId
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      mentorId: freezed == mentorId
          ? _value.mentorId
          : mentorId // ignore: cast_nullable_to_non_nullable
              as MentorId?,
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
      discountPriceEnds: freezed == discountPriceEnds
          ? _value.discountPriceEnds
          : discountPriceEnds // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MentorIdCopyWith<$Res>? get mentorId {
    if (_value.mentorId == null) {
      return null;
    }

    return $MentorIdCopyWith<$Res>(_value.mentorId!, (value) {
      return _then(_value.copyWith(mentorId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseDataImplCopyWith<$Res>
    implements $CourseDataCopyWith<$Res> {
  factory _$$CourseDataImplCopyWith(
          _$CourseDataImpl value, $Res Function(_$CourseDataImpl) then) =
      __$$CourseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? sId,
      MentorId? mentorId,
      String? courseName,
      int? courseDuration,
      String? courseInfo,
      String? courseDescription,
      int? studentsEnrolled,
      double? rating,
      int? raters,
      int? cost,
      int? lessons,
      String? skillLevel,
      String? language,
      bool? active,
      bool? approved,
      String? courseCreated,
      String? createdAt,
      String? updatedAt,
      int? iV,
      String? thumbnail,
      String? courseSlug,
      int? views,
      String? certificateLearning,
      int? highCost,
      String? discountPriceEnds});

  @override
  $MentorIdCopyWith<$Res>? get mentorId;
}

/// @nodoc
class __$$CourseDataImplCopyWithImpl<$Res>
    extends _$CourseDataCopyWithImpl<$Res, _$CourseDataImpl>
    implements _$$CourseDataImplCopyWith<$Res> {
  __$$CourseDataImplCopyWithImpl(
      _$CourseDataImpl _value, $Res Function(_$CourseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
    Object? discountPriceEnds = freezed,
  }) {
    return _then(_$CourseDataImpl(
      sId: freezed == sId
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      mentorId: freezed == mentorId
          ? _value.mentorId
          : mentorId // ignore: cast_nullable_to_non_nullable
              as MentorId?,
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
      discountPriceEnds: freezed == discountPriceEnds
          ? _value.discountPriceEnds
          : discountPriceEnds // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseDataImpl implements _CourseData {
  const _$CourseDataImpl(
      {this.sId,
      this.mentorId,
      this.courseName,
      this.courseDuration,
      this.courseInfo,
      this.courseDescription,
      this.studentsEnrolled,
      this.rating,
      this.raters,
      this.cost,
      this.lessons,
      this.skillLevel,
      this.language,
      this.active,
      this.approved,
      this.courseCreated,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.thumbnail,
      this.courseSlug,
      this.views,
      this.certificateLearning,
      this.highCost,
      this.discountPriceEnds});

  factory _$CourseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseDataImplFromJson(json);

  @override
  final String? sId;
  @override
  final MentorId? mentorId;
  @override
  final String? courseName;
  @override
  final int? courseDuration;
  @override
  final String? courseInfo;
  @override
  final String? courseDescription;
  @override
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
  final String? skillLevel;
  @override
  final String? language;
  @override
  final bool? active;
  @override
  final bool? approved;
  @override
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
  final String? courseSlug;
  @override
  final int? views;
  @override
  final String? certificateLearning;
  @override
  final int? highCost;
  @override
  final String? discountPriceEnds;

  @override
  String toString() {
    return 'CourseData(sId: $sId, mentorId: $mentorId, courseName: $courseName, courseDuration: $courseDuration, courseInfo: $courseInfo, courseDescription: $courseDescription, studentsEnrolled: $studentsEnrolled, rating: $rating, raters: $raters, cost: $cost, lessons: $lessons, skillLevel: $skillLevel, language: $language, active: $active, approved: $approved, courseCreated: $courseCreated, createdAt: $createdAt, updatedAt: $updatedAt, iV: $iV, thumbnail: $thumbnail, courseSlug: $courseSlug, views: $views, certificateLearning: $certificateLearning, highCost: $highCost, discountPriceEnds: $discountPriceEnds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseDataImpl &&
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
            (identical(other.discountPriceEnds, discountPriceEnds) ||
                other.discountPriceEnds == discountPriceEnds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
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
        discountPriceEnds
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseDataImplCopyWith<_$CourseDataImpl> get copyWith =>
      __$$CourseDataImplCopyWithImpl<_$CourseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseDataImplToJson(
      this,
    );
  }
}

abstract class _CourseData implements CourseData {
  const factory _CourseData(
      {final String? sId,
      final MentorId? mentorId,
      final String? courseName,
      final int? courseDuration,
      final String? courseInfo,
      final String? courseDescription,
      final int? studentsEnrolled,
      final double? rating,
      final int? raters,
      final int? cost,
      final int? lessons,
      final String? skillLevel,
      final String? language,
      final bool? active,
      final bool? approved,
      final String? courseCreated,
      final String? createdAt,
      final String? updatedAt,
      final int? iV,
      final String? thumbnail,
      final String? courseSlug,
      final int? views,
      final String? certificateLearning,
      final int? highCost,
      final String? discountPriceEnds}) = _$CourseDataImpl;

  factory _CourseData.fromJson(Map<String, dynamic> json) =
      _$CourseDataImpl.fromJson;

  @override
  String? get sId;
  @override
  MentorId? get mentorId;
  @override
  String? get courseName;
  @override
  int? get courseDuration;
  @override
  String? get courseInfo;
  @override
  String? get courseDescription;
  @override
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
  String? get skillLevel;
  @override
  String? get language;
  @override
  bool? get active;
  @override
  bool? get approved;
  @override
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
  String? get courseSlug;
  @override
  int? get views;
  @override
  String? get certificateLearning;
  @override
  int? get highCost;
  @override
  String? get discountPriceEnds;
  @override
  @JsonKey(ignore: true)
  _$$CourseDataImplCopyWith<_$CourseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MentorId _$MentorIdFromJson(Map<String, dynamic> json) {
  return _MentorId.fromJson(json);
}

/// @nodoc
mixin _$MentorId {
  String? get sId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MentorIdCopyWith<MentorId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentorIdCopyWith<$Res> {
  factory $MentorIdCopyWith(MentorId value, $Res Function(MentorId) then) =
      _$MentorIdCopyWithImpl<$Res, MentorId>;
  @useResult
  $Res call({String? sId, String? name});
}

/// @nodoc
class _$MentorIdCopyWithImpl<$Res, $Val extends MentorId>
    implements $MentorIdCopyWith<$Res> {
  _$MentorIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sId = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      sId: freezed == sId
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MentorIdImplCopyWith<$Res>
    implements $MentorIdCopyWith<$Res> {
  factory _$$MentorIdImplCopyWith(
          _$MentorIdImpl value, $Res Function(_$MentorIdImpl) then) =
      __$$MentorIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? sId, String? name});
}

/// @nodoc
class __$$MentorIdImplCopyWithImpl<$Res>
    extends _$MentorIdCopyWithImpl<$Res, _$MentorIdImpl>
    implements _$$MentorIdImplCopyWith<$Res> {
  __$$MentorIdImplCopyWithImpl(
      _$MentorIdImpl _value, $Res Function(_$MentorIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sId = freezed,
    Object? name = freezed,
  }) {
    return _then(_$MentorIdImpl(
      sId: freezed == sId
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MentorIdImpl implements _MentorId {
  const _$MentorIdImpl({this.sId, this.name});

  factory _$MentorIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$MentorIdImplFromJson(json);

  @override
  final String? sId;
  @override
  final String? name;

  @override
  String toString() {
    return 'MentorId(sId: $sId, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentorIdImpl &&
            (identical(other.sId, sId) || other.sId == sId) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sId, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MentorIdImplCopyWith<_$MentorIdImpl> get copyWith =>
      __$$MentorIdImplCopyWithImpl<_$MentorIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MentorIdImplToJson(
      this,
    );
  }
}

abstract class _MentorId implements MentorId {
  const factory _MentorId({final String? sId, final String? name}) =
      _$MentorIdImpl;

  factory _MentorId.fromJson(Map<String, dynamic> json) =
      _$MentorIdImpl.fromJson;

  @override
  String? get sId;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$MentorIdImplCopyWith<_$MentorIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
