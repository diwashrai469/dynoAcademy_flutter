// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'config_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConfigResponseModel _$ConfigResponseModelFromJson(Map<String, dynamic> json) {
  return _ConfigResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ConfigResponseModel {
  String? get status => throw _privateConstructorUsedError;
  GetUser? get getUser => throw _privateConstructorUsedError;
  int? get cartItems => throw _privateConstructorUsedError;
  int? get notifications => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfigResponseModelCopyWith<ConfigResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigResponseModelCopyWith<$Res> {
  factory $ConfigResponseModelCopyWith(
          ConfigResponseModel value, $Res Function(ConfigResponseModel) then) =
      _$ConfigResponseModelCopyWithImpl<$Res, ConfigResponseModel>;
  @useResult
  $Res call(
      {String? status, GetUser? getUser, int? cartItems, int? notifications});

  $GetUserCopyWith<$Res>? get getUser;
}

/// @nodoc
class _$ConfigResponseModelCopyWithImpl<$Res, $Val extends ConfigResponseModel>
    implements $ConfigResponseModelCopyWith<$Res> {
  _$ConfigResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? getUser = freezed,
    Object? cartItems = freezed,
    Object? notifications = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      getUser: freezed == getUser
          ? _value.getUser
          : getUser // ignore: cast_nullable_to_non_nullable
              as GetUser?,
      cartItems: freezed == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as int?,
      notifications: freezed == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetUserCopyWith<$Res>? get getUser {
    if (_value.getUser == null) {
      return null;
    }

    return $GetUserCopyWith<$Res>(_value.getUser!, (value) {
      return _then(_value.copyWith(getUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConfigResponseModelImplCopyWith<$Res>
    implements $ConfigResponseModelCopyWith<$Res> {
  factory _$$ConfigResponseModelImplCopyWith(_$ConfigResponseModelImpl value,
          $Res Function(_$ConfigResponseModelImpl) then) =
      __$$ConfigResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status, GetUser? getUser, int? cartItems, int? notifications});

  @override
  $GetUserCopyWith<$Res>? get getUser;
}

/// @nodoc
class __$$ConfigResponseModelImplCopyWithImpl<$Res>
    extends _$ConfigResponseModelCopyWithImpl<$Res, _$ConfigResponseModelImpl>
    implements _$$ConfigResponseModelImplCopyWith<$Res> {
  __$$ConfigResponseModelImplCopyWithImpl(_$ConfigResponseModelImpl _value,
      $Res Function(_$ConfigResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? getUser = freezed,
    Object? cartItems = freezed,
    Object? notifications = freezed,
  }) {
    return _then(_$ConfigResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      getUser: freezed == getUser
          ? _value.getUser
          : getUser // ignore: cast_nullable_to_non_nullable
              as GetUser?,
      cartItems: freezed == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as int?,
      notifications: freezed == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfigResponseModelImpl implements _ConfigResponseModel {
  _$ConfigResponseModelImpl(
      {this.status, this.getUser, this.cartItems, this.notifications});

  factory _$ConfigResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfigResponseModelImplFromJson(json);

  @override
  final String? status;
  @override
  final GetUser? getUser;
  @override
  final int? cartItems;
  @override
  final int? notifications;

  @override
  String toString() {
    return 'ConfigResponseModel(status: $status, getUser: $getUser, cartItems: $cartItems, notifications: $notifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfigResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.getUser, getUser) || other.getUser == getUser) &&
            (identical(other.cartItems, cartItems) ||
                other.cartItems == cartItems) &&
            (identical(other.notifications, notifications) ||
                other.notifications == notifications));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, getUser, cartItems, notifications);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfigResponseModelImplCopyWith<_$ConfigResponseModelImpl> get copyWith =>
      __$$ConfigResponseModelImplCopyWithImpl<_$ConfigResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfigResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ConfigResponseModel implements ConfigResponseModel {
  factory _ConfigResponseModel(
      {final String? status,
      final GetUser? getUser,
      final int? cartItems,
      final int? notifications}) = _$ConfigResponseModelImpl;

  factory _ConfigResponseModel.fromJson(Map<String, dynamic> json) =
      _$ConfigResponseModelImpl.fromJson;

  @override
  String? get status;
  @override
  GetUser? get getUser;
  @override
  int? get cartItems;
  @override
  int? get notifications;
  @override
  @JsonKey(ignore: true)
  _$$ConfigResponseModelImplCopyWith<_$ConfigResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetUser _$GetUserFromJson(Map<String, dynamic> json) {
  return _GetUser.fromJson(json);
}

/// @nodoc
mixin _$GetUser {
  @JsonKey(name: "_id")
  String? get sId => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile_number")
  String? get mobileNumber => throw _privateConstructorUsedError;
  bool? get verified => throw _privateConstructorUsedError;
  bool? get suspended => throw _privateConstructorUsedError;
  @JsonKey(name: "last_login")
  String? get lastLogin => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetUserCopyWith<GetUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserCopyWith<$Res> {
  factory $GetUserCopyWith(GetUser value, $Res Function(GetUser) then) =
      _$GetUserCopyWithImpl<$Res, GetUser>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? sId,
      String? email,
      String? name,
      @JsonKey(name: "mobile_number") String? mobileNumber,
      bool? verified,
      bool? suspended,
      @JsonKey(name: "last_login") String? lastLogin,
      String? createdAt,
      String? id});
}

/// @nodoc
class _$GetUserCopyWithImpl<$Res, $Val extends GetUser>
    implements $GetUserCopyWith<$Res> {
  _$GetUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sId = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? mobileNumber = freezed,
    Object? verified = freezed,
    Object? suspended = freezed,
    Object? lastLogin = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      sId: freezed == sId
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
      suspended: freezed == suspended
          ? _value.suspended
          : suspended // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetUserImplCopyWith<$Res> implements $GetUserCopyWith<$Res> {
  factory _$$GetUserImplCopyWith(
          _$GetUserImpl value, $Res Function(_$GetUserImpl) then) =
      __$$GetUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? sId,
      String? email,
      String? name,
      @JsonKey(name: "mobile_number") String? mobileNumber,
      bool? verified,
      bool? suspended,
      @JsonKey(name: "last_login") String? lastLogin,
      String? createdAt,
      String? id});
}

/// @nodoc
class __$$GetUserImplCopyWithImpl<$Res>
    extends _$GetUserCopyWithImpl<$Res, _$GetUserImpl>
    implements _$$GetUserImplCopyWith<$Res> {
  __$$GetUserImplCopyWithImpl(
      _$GetUserImpl _value, $Res Function(_$GetUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sId = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? mobileNumber = freezed,
    Object? verified = freezed,
    Object? suspended = freezed,
    Object? lastLogin = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_$GetUserImpl(
      sId: freezed == sId
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
      suspended: freezed == suspended
          ? _value.suspended
          : suspended // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
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
class _$GetUserImpl implements _GetUser {
  _$GetUserImpl(
      {@JsonKey(name: "_id") this.sId,
      this.email,
      this.name,
      @JsonKey(name: "mobile_number") this.mobileNumber,
      this.verified,
      this.suspended,
      @JsonKey(name: "last_login") this.lastLogin,
      this.createdAt,
      this.id});

  factory _$GetUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetUserImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? sId;
  @override
  final String? email;
  @override
  final String? name;
  @override
  @JsonKey(name: "mobile_number")
  final String? mobileNumber;
  @override
  final bool? verified;
  @override
  final bool? suspended;
  @override
  @JsonKey(name: "last_login")
  final String? lastLogin;
  @override
  final String? createdAt;
  @override
  final String? id;

  @override
  String toString() {
    return 'GetUser(sId: $sId, email: $email, name: $name, mobileNumber: $mobileNumber, verified: $verified, suspended: $suspended, lastLogin: $lastLogin, createdAt: $createdAt, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserImpl &&
            (identical(other.sId, sId) || other.sId == sId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.suspended, suspended) ||
                other.suspended == suspended) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sId, email, name, mobileNumber,
      verified, suspended, lastLogin, createdAt, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserImplCopyWith<_$GetUserImpl> get copyWith =>
      __$$GetUserImplCopyWithImpl<_$GetUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetUserImplToJson(
      this,
    );
  }
}

abstract class _GetUser implements GetUser {
  factory _GetUser(
      {@JsonKey(name: "_id") final String? sId,
      final String? email,
      final String? name,
      @JsonKey(name: "mobile_number") final String? mobileNumber,
      final bool? verified,
      final bool? suspended,
      @JsonKey(name: "last_login") final String? lastLogin,
      final String? createdAt,
      final String? id}) = _$GetUserImpl;

  factory _GetUser.fromJson(Map<String, dynamic> json) = _$GetUserImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get sId;
  @override
  String? get email;
  @override
  String? get name;
  @override
  @JsonKey(name: "mobile_number")
  String? get mobileNumber;
  @override
  bool? get verified;
  @override
  bool? get suspended;
  @override
  @JsonKey(name: "last_login")
  String? get lastLogin;
  @override
  String? get createdAt;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$GetUserImplCopyWith<_$GetUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
