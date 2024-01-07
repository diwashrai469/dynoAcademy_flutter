// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationResponseModel _$NotificationResponseModelFromJson(
    Map<String, dynamic> json) {
  return _NotificationResponseModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationResponseModel {
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "currently_displayed_records_on_page")
  int? get currentlyDisplayedRecordsOnPage =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "total_pages")
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: "max_allowed_records_per_page")
  int? get maxAllowedRecordsPerPage => throw _privateConstructorUsedError;
  @JsonKey(name: "total_records")
  int? get totalRecords => throw _privateConstructorUsedError;
  @JsonKey(name: "filters_applied")
  bool? get filtersApplied => throw _privateConstructorUsedError;
  List<Data>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationResponseModelCopyWith<NotificationResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationResponseModelCopyWith<$Res> {
  factory $NotificationResponseModelCopyWith(NotificationResponseModel value,
          $Res Function(NotificationResponseModel) then) =
      _$NotificationResponseModelCopyWithImpl<$Res, NotificationResponseModel>;
  @useResult
  $Res call(
      {String? status,
      @JsonKey(name: "currently_displayed_records_on_page")
      int? currentlyDisplayedRecordsOnPage,
      @JsonKey(name: "total_pages") int? totalPages,
      @JsonKey(name: "max_allowed_records_per_page")
      int? maxAllowedRecordsPerPage,
      @JsonKey(name: "total_records") int? totalRecords,
      @JsonKey(name: "filters_applied") bool? filtersApplied,
      List<Data>? data});
}

/// @nodoc
class _$NotificationResponseModelCopyWithImpl<$Res,
        $Val extends NotificationResponseModel>
    implements $NotificationResponseModelCopyWith<$Res> {
  _$NotificationResponseModelCopyWithImpl(this._value, this._then);

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
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      maxAllowedRecordsPerPage: freezed == maxAllowedRecordsPerPage
          ? _value.maxAllowedRecordsPerPage
          : maxAllowedRecordsPerPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalRecords: freezed == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int?,
      filtersApplied: freezed == filtersApplied
          ? _value.filtersApplied
          : filtersApplied // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationResponseModelImplCopyWith<$Res>
    implements $NotificationResponseModelCopyWith<$Res> {
  factory _$$NotificationResponseModelImplCopyWith(
          _$NotificationResponseModelImpl value,
          $Res Function(_$NotificationResponseModelImpl) then) =
      __$$NotificationResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      @JsonKey(name: "currently_displayed_records_on_page")
      int? currentlyDisplayedRecordsOnPage,
      @JsonKey(name: "total_pages") int? totalPages,
      @JsonKey(name: "max_allowed_records_per_page")
      int? maxAllowedRecordsPerPage,
      @JsonKey(name: "total_records") int? totalRecords,
      @JsonKey(name: "filters_applied") bool? filtersApplied,
      List<Data>? data});
}

/// @nodoc
class __$$NotificationResponseModelImplCopyWithImpl<$Res>
    extends _$NotificationResponseModelCopyWithImpl<$Res,
        _$NotificationResponseModelImpl>
    implements _$$NotificationResponseModelImplCopyWith<$Res> {
  __$$NotificationResponseModelImplCopyWithImpl(
      _$NotificationResponseModelImpl _value,
      $Res Function(_$NotificationResponseModelImpl) _then)
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
    return _then(_$NotificationResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      currentlyDisplayedRecordsOnPage: freezed ==
              currentlyDisplayedRecordsOnPage
          ? _value.currentlyDisplayedRecordsOnPage
          : currentlyDisplayedRecordsOnPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      maxAllowedRecordsPerPage: freezed == maxAllowedRecordsPerPage
          ? _value.maxAllowedRecordsPerPage
          : maxAllowedRecordsPerPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalRecords: freezed == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int?,
      filtersApplied: freezed == filtersApplied
          ? _value.filtersApplied
          : filtersApplied // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationResponseModelImpl implements _NotificationResponseModel {
  _$NotificationResponseModelImpl(
      {this.status,
      @JsonKey(name: "currently_displayed_records_on_page")
      this.currentlyDisplayedRecordsOnPage,
      @JsonKey(name: "total_pages") this.totalPages,
      @JsonKey(name: "max_allowed_records_per_page")
      this.maxAllowedRecordsPerPage,
      @JsonKey(name: "total_records") this.totalRecords,
      @JsonKey(name: "filters_applied") this.filtersApplied,
      final List<Data>? data})
      : _data = data;

  factory _$NotificationResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationResponseModelImplFromJson(json);

  @override
  final String? status;
  @override
  @JsonKey(name: "currently_displayed_records_on_page")
  final int? currentlyDisplayedRecordsOnPage;
  @override
  @JsonKey(name: "total_pages")
  final int? totalPages;
  @override
  @JsonKey(name: "max_allowed_records_per_page")
  final int? maxAllowedRecordsPerPage;
  @override
  @JsonKey(name: "total_records")
  final int? totalRecords;
  @override
  @JsonKey(name: "filters_applied")
  final bool? filtersApplied;
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
    return 'NotificationResponseModel(status: $status, currentlyDisplayedRecordsOnPage: $currentlyDisplayedRecordsOnPage, totalPages: $totalPages, maxAllowedRecordsPerPage: $maxAllowedRecordsPerPage, totalRecords: $totalRecords, filtersApplied: $filtersApplied, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationResponseModelImpl &&
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
  _$$NotificationResponseModelImplCopyWith<_$NotificationResponseModelImpl>
      get copyWith => __$$NotificationResponseModelImplCopyWithImpl<
          _$NotificationResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationResponseModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationResponseModel implements NotificationResponseModel {
  factory _NotificationResponseModel(
      {final String? status,
      @JsonKey(name: "currently_displayed_records_on_page")
      final int? currentlyDisplayedRecordsOnPage,
      @JsonKey(name: "total_pages") final int? totalPages,
      @JsonKey(name: "max_allowed_records_per_page")
      final int? maxAllowedRecordsPerPage,
      @JsonKey(name: "total_records") final int? totalRecords,
      @JsonKey(name: "filters_applied") final bool? filtersApplied,
      final List<Data>? data}) = _$NotificationResponseModelImpl;

  factory _NotificationResponseModel.fromJson(Map<String, dynamic> json) =
      _$NotificationResponseModelImpl.fromJson;

  @override
  String? get status;
  @override
  @JsonKey(name: "currently_displayed_records_on_page")
  int? get currentlyDisplayedRecordsOnPage;
  @override
  @JsonKey(name: "total_pages")
  int? get totalPages;
  @override
  @JsonKey(name: "max_allowed_records_per_page")
  int? get maxAllowedRecordsPerPage;
  @override
  @JsonKey(name: "total_records")
  int? get totalRecords;
  @override
  @JsonKey(name: "filters_applied")
  bool? get filtersApplied;
  @override
  List<Data>? get data;
  @override
  @JsonKey(ignore: true)
  _$$NotificationResponseModelImplCopyWith<_$NotificationResponseModelImpl>
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
  @JsonKey(name: "notification_text")
  String? get notificationText => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  bool? get seen => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  @JsonKey(name: "button_text")
  String? get buttonText => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "_v")
  int? get iV => throw _privateConstructorUsedError;

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
      @JsonKey(name: "notification_text") String? notificationText,
      String? link,
      bool? seen,
      bool? active,
      @JsonKey(name: "button_text") String? buttonText,
      String? createdAt,
      String? updatedAt,
      @JsonKey(name: "_v") int? iV});
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
    Object? notificationText = freezed,
    Object? link = freezed,
    Object? seen = freezed,
    Object? active = freezed,
    Object? buttonText = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? iV = freezed,
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
      notificationText: freezed == notificationText
          ? _value.notificationText
          : notificationText // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      seen: freezed == seen
          ? _value.seen
          : seen // ignore: cast_nullable_to_non_nullable
              as bool?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      buttonText: freezed == buttonText
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: "notification_text") String? notificationText,
      String? link,
      bool? seen,
      bool? active,
      @JsonKey(name: "button_text") String? buttonText,
      String? createdAt,
      String? updatedAt,
      @JsonKey(name: "_v") int? iV});
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
    Object? notificationText = freezed,
    Object? link = freezed,
    Object? seen = freezed,
    Object? active = freezed,
    Object? buttonText = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? iV = freezed,
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
      notificationText: freezed == notificationText
          ? _value.notificationText
          : notificationText // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      seen: freezed == seen
          ? _value.seen
          : seen // ignore: cast_nullable_to_non_nullable
              as bool?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      buttonText: freezed == buttonText
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  _$DataImpl(
      {@JsonKey(name: "_id") this.sId,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "notification_text") this.notificationText,
      this.link,
      this.seen,
      this.active,
      @JsonKey(name: "button_text") this.buttonText,
      this.createdAt,
      this.updatedAt,
      @JsonKey(name: "_v") this.iV});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? sId;
  @override
  @JsonKey(name: "user_id")
  final String? userId;
  @override
  @JsonKey(name: "notification_text")
  final String? notificationText;
  @override
  final String? link;
  @override
  final bool? seen;
  @override
  final bool? active;
  @override
  @JsonKey(name: "button_text")
  final String? buttonText;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  @JsonKey(name: "_v")
  final int? iV;

  @override
  String toString() {
    return 'Data(sId: $sId, userId: $userId, notificationText: $notificationText, link: $link, seen: $seen, active: $active, buttonText: $buttonText, createdAt: $createdAt, updatedAt: $updatedAt, iV: $iV)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.sId, sId) || other.sId == sId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.notificationText, notificationText) ||
                other.notificationText == notificationText) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.seen, seen) || other.seen == seen) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.buttonText, buttonText) ||
                other.buttonText == buttonText) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.iV, iV) || other.iV == iV));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sId, userId, notificationText,
      link, seen, active, buttonText, createdAt, updatedAt, iV);

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
      @JsonKey(name: "notification_text") final String? notificationText,
      final String? link,
      final bool? seen,
      final bool? active,
      @JsonKey(name: "button_text") final String? buttonText,
      final String? createdAt,
      final String? updatedAt,
      @JsonKey(name: "_v") final int? iV}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get sId;
  @override
  @JsonKey(name: "user_id")
  String? get userId;
  @override
  @JsonKey(name: "notification_text")
  String? get notificationText;
  @override
  String? get link;
  @override
  bool? get seen;
  @override
  bool? get active;
  @override
  @JsonKey(name: "button_text")
  String? get buttonText;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(name: "_v")
  int? get iV;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
